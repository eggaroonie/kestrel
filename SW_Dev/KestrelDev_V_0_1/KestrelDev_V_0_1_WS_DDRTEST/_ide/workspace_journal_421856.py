# 2026-10-28T15:02:36.459885
import vitis

client = vitis.create_client()
client.set_workspace(path="KestrelDev_V_0_1_WS_DDRTEST")

platform = client.create_platform_component(name = "DDR_test",hw_design = "$COMPONENT_LOCATION/../../kestrelv0_1.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="Kesterl_driver",platform = "$COMPONENT_LOCATION/../DDR_test/export/DDR_test/DDR_test.xpfm",domain = "standalone_psu_cortexa53_0")

platform = client.get_component(name="DDR_test")
status = platform.build()

comp = client.get_component(name="Kesterl_driver")
comp.build()

vitis.dispose()

