# 2026-10-04T15:13:19.023280
import vitis

client = vitis.create_client()
client.set_workspace(path="AXITest_WS")

platform = client.get_component(name="AXI4Test")
status = platform.build()

platform = client.create_platform_component(name = "capture_app",hw_design = "$COMPONENT_LOCATION/../../AXITest/AXI4Test.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

platform = client.get_component(name="capture_app")
status = platform.build()

client.delete_component(name="capture_app")

comp = client.create_app_component(name="capture_app",platform = "$COMPONENT_LOCATION/../AXI4Test/export/AXI4Test/AXI4Test.xpfm",domain = "standalone_psu_cortexa53_0")

platform = client.get_component(name="AXI4Test")
status = platform.build()

comp = client.get_component(name="capture_app")
comp.build()

status = platform.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

vitis.dispose()

