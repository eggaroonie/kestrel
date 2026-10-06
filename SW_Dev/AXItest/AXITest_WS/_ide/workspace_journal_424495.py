# 2026-10-03T15:39:09.994230
import vitis

client = vitis.create_client()
client.set_workspace(path="AXITest_WS")

platform = client.create_platform_component(name = "AXI4Test",hw_design = "$COMPONENT_LOCATION/../../AXITest/AXI4Test.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

vitis.dispose()

