# 2026-10-30T14:06:29.073562
import vitis

client = vitis.create_client()
client.set_workspace(path="KestrelDev_V_0_1_WS_DDRTEST")

platform = client.get_component(name="DDR_test")
status = platform.build()

status = platform.build()

status = platform.build()

status = platform.build()

vitis.dispose()

