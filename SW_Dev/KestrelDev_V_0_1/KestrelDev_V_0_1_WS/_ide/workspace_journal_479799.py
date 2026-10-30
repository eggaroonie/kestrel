# 2026-10-15T15:59:19.419184
import vitis

client = vitis.create_client()
client.set_workspace(path="KestrelDev_V_0_1_WS")

platform = client.get_component(name="AXIDMATEST")
status = platform.build()

comp = client.get_component(name="AXITEST")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

