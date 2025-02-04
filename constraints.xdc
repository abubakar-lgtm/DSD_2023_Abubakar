set_property -dict {PACKAGE_PIN H17 IOSTANDARD LVCMOS33} [get_ports a]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports b]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports c]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property IOSTANDARD LVCMOS33 [get_ports c]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports x]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports y]; #IO_L7P_T1_D09_14 Sch=led[4]

set_property IOSTANDARD LVCMOS33 [get_ports b]
set_property IOSTANDARD LVCMOS33 [get_ports x]
set_property IOSTANDARD LVCMOS33 [get_ports y]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
