# 2026-09-26T12:22:03.181411
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_ws1")

platform = client.get_component(name="p2_platform")
status = platform.build()

comp = client.get_component(name="p2_detect")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

vitis.dispose()

