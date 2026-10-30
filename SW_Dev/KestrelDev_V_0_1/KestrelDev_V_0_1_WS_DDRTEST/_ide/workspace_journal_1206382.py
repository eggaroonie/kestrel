# 2026-10-29T16:01:46.330736
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

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../kestrelv0_1.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../kestrelv0_1.xsa")

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

comp.build()

client.delete_component(name="Kesterl_driver")

vitis.dispose()

