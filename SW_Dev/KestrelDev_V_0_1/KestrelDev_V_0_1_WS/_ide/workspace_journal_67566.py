# 2026-10-14T14:28:08.014433
import vitis

client = vitis.create_client()
client.set_workspace(path="KestrelDev_V_0_1_WS")

status = client.rescan_embedded_sw_repo()

comp = client.create_app_component(name="AXITEST",platform = "$COMPONENT_LOCATION/../AXIDMATEST/export/AXIDMATEST/AXIDMATEST.xpfm",domain = "standalone_psu_cortexa53_0")

platform = client.get_component(name="AXIDMATEST")
status = platform.build()

status = platform.build()

comp = client.get_component(name="AXITEST")
comp.build()

vitis.dispose()

