# 2026-09-25T17:36:55.782332
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_ws1")

platform = client.create_platform_component(name = "p2_platform",hw_design = "$COMPONENT_LOCATION/../../p2_blink.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

comp = client.create_app_component(name="p2_detect",platform = "$COMPONENT_LOCATION/../p2_platform/export/p2_platform/p2_platform.xpfm",domain = "standalone_psu_cortexa53_0",template = "hello_world")

platform = client.get_component(name="p2_platform")
status = platform.build()

comp = client.get_component(name="p2_detect")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

