# 2026-10-14T11:52:44.985482
import vitis

client = vitis.create_client()
client.set_workspace(path="KestrelDev_V_0_1_WS")

platform = client.create_platform_component(name = "AXIDMATEST",hw_design = "$COMPONENT_LOCATION/../../zusys_wrapper.xsa",os = "standalone",cpu = "psu_cortexa53_0",domain_name = "standalone_psu_cortexa53_0")

vitis.dispose()

