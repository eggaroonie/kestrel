# 2026-10-29T15:37:16.995873
import vitis

client = vitis.create_client()
client.set_workspace(path="KestrelDev_V_0_1_WS_DDRTEST")

platform = client.get_component(name="DDR_test")
status = platform.build()

comp = client.get_component(name="Kesterl_driver")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

