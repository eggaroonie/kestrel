#!/usr/bin/env python3
"""Pull captured frames off the board over JTAG and turn them into PNGs, a video and a collage.

    python3 tools/view_frames.py 10                      # first 10 frames of the first capture
    python3 tools/view_frames.py 10 --addr 0x01E5DC00    # use the "Frames start at" address the app printed
    python3 tools/view_frames.py 10 --bin frames.bin     # skip JTAG, re-render a file you already have

Output (in --out, default frames_out/):
    frames.bin          raw bytes copied from DDR
    png/frame_NNNNN.png one PNG per frame
    collage.png         every frame tiled into one image
    frames.mp4          video (needs ffmpeg on PATH; otherwise frames.gif is written instead)

Frame format: 9600 bytes = 120 lines x 80 pixels, 8 bits, first pixel at the top-left
(AISC110C datasheet 2.3.2). capture_logic packs pixel 4n+0 into the low byte of each
32-bit word, so the bytes in DDR are already in pixel order.
"""
import argparse
import math
import os
import shutil
import subprocess
import sys

import numpy as np
from PIL import Image

WIDTH, HEIGHT = 80, 120
FRAME_BYTES = WIDTH * HEIGHT
FIRST_CAPTURE_ADDR = 0x01E00000          # RX_BUFFER_BASE in axidma.c
DEFAULT_XSDB = "/tools/Xilinx/Vitis/2024.2/bin/xsdb"
HERE = os.path.dirname(os.path.abspath(__file__))


def dump_over_jtag(xsdb, addr, n, bin_path):
    """Copy n frames starting at addr out of DDR using tools/dump_frames.tcl."""
    tcl = os.path.join(HERE, "dump_frames.tcl")
    cmd = [xsdb, tcl, f"0x{addr:08X}", str(n), bin_path]
    print("running:", " ".join(cmd))
    if subprocess.run(cmd).returncode != 0:
        sys.exit("xsdb failed - is the board connected and powered, and the capture finished?")
    want = n * FRAME_BYTES
    got = os.path.getsize(bin_path) if os.path.exists(bin_path) else 0
    if got != want:
        sys.exit(f"{bin_path} is {got} bytes, expected {want}")


def save_collage(frames, path):
    """Tile every frame into one image, roughly square overall, 2 px black gaps."""
    n = len(frames)
    cols = max(1, math.ceil(math.sqrt(n * HEIGHT / WIDTH)))
    rows = math.ceil(n / cols)
    gap = 2
    sheet = np.zeros((rows * (HEIGHT + gap), cols * (WIDTH + gap)), dtype=np.uint8)
    for i, f in enumerate(frames):
        r, c = divmod(i, cols)
        y, x = r * (HEIGHT + gap), c * (WIDTH + gap)
        sheet[y:y + HEIGHT, x:x + WIDTH] = f
    scale = 2 if n <= 200 else 1                  # keep big collages a manageable size
    img = Image.fromarray(sheet)
    img.resize((img.width * scale, img.height * scale), Image.NEAREST).save(path)
    return cols, rows


def save_video(frames, out_dir, fps, scale):
    """MP4 through ffmpeg if it's installed, otherwise an animated GIF."""
    w, h = WIDTH * scale, HEIGHT * scale
    big = [np.asarray(Image.fromarray(f).resize((w, h), Image.NEAREST)) for f in frames]

    ffmpeg = shutil.which("ffmpeg")
    if ffmpeg:
        path = os.path.join(out_dir, "frames.mp4")
        encoders = subprocess.run([ffmpeg, "-hide_banner", "-encoders"], capture_output=True, text=True).stdout
        codec = ["-c:v", "libx264", "-crf", "18"] if " libx264 " in encoders else ["-c:v", "mpeg4", "-q:v", "2"]
        cmd = [ffmpeg, "-y", "-loglevel", "error", "-f", "rawvideo", "-pix_fmt", "gray",
               "-s", f"{w}x{h}", "-r", str(fps), "-i", "-", *codec, "-pix_fmt", "yuv420p", path]
        subprocess.run(cmd, input=b"".join(f.tobytes() for f in big), check=True)
        return path

    path = os.path.join(out_dir, "frames.gif")
    imgs = [Image.fromarray(f) for f in big]
    # GIF frame times are in ms; most viewers won't go faster than 20 ms (50 fps)
    imgs[0].save(path, save_all=True, append_images=imgs[1:], duration=max(20, round(1000 / fps)), loop=0)
    return path


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("frames", type=int, help="number of frames to pull and process")
    ap.add_argument("--addr", type=lambda s: int(s, 0), default=FIRST_CAPTURE_ADDR,
                    help="DDR address of the first frame (default 0x01E00000 = first capture after launch)")
    ap.add_argument("--bin", help="use this existing file instead of reading the board over JTAG")
    ap.add_argument("--out", default="frames_out", help="output folder (default frames_out)")
    ap.add_argument("--fps", type=float, default=10, help="video playback rate (default 10)")
    ap.add_argument("--scale", type=int, default=4, help="pixel scale for PNGs and video (default 4)")
    ap.add_argument("--invert", action="store_true", help="invert brightness")
    ap.add_argument("--xsdb", default=DEFAULT_XSDB, help=f"path to xsdb (default {DEFAULT_XSDB})")
    args = ap.parse_args()
    if args.frames < 1:
        sys.exit("number of frames must be at least 1")

    os.makedirs(os.path.join(args.out, "png"), exist_ok=True)
    bin_path = args.bin or os.path.join(args.out, "frames.bin")
    if not args.bin:
        dump_over_jtag(args.xsdb, args.addr, args.frames, bin_path)

    raw = np.fromfile(bin_path, dtype=np.uint8)
    n = min(args.frames, raw.size // FRAME_BYTES)
    if n == 0:
        sys.exit(f"{bin_path} holds less than one {FRAME_BYTES}-byte frame")
    if n < args.frames:
        print(f"note: {bin_path} only holds {n} frames")
    frames = raw[: n * FRAME_BYTES].reshape(n, HEIGHT, WIDTH)
    if args.invert:
        frames = 255 - frames

    print(f"{n} frames  (min / mean / max)")
    for i, f in enumerate(frames[:50]):
        print(f"  frame {i:5d}: {f.min():3d} / {f.mean():6.1f} / {f.max():3d}")
    if n > 50:
        print(f"  ... all {n}: {frames.min()} / {frames.mean():.1f} / {frames.max()}")

    for i, f in enumerate(frames):
        Image.fromarray(f).resize((WIDTH * args.scale, HEIGHT * args.scale), Image.NEAREST) \
             .save(os.path.join(args.out, "png", f"frame_{i:05d}.png"))
    cols, rows = save_collage(frames, os.path.join(args.out, "collage.png"))
    video = save_video(frames, args.out, args.fps, args.scale)

    print(f"wrote {n} PNGs to {args.out}/png/")
    print(f"wrote {args.out}/collage.png ({cols} x {rows} frames)")
    print(f"wrote {video}" + ("" if video.endswith(".mp4") else "  (install ffmpeg for MP4: sudo apt install ffmpeg)"))


if __name__ == "__main__":
    main()
