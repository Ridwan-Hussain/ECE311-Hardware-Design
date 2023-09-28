set_property PACKAGE_PIN M15 [get_ports {a[0]}]
set_property PACKAGE_PIN H17 [get_ports {a[1]}]
set_property PACKAGE_PIN H18 [get_ports {b[0]}]
set_property PACKAGE_PIN H19 [get_ports {b[1]}]
set_property PACKAGE_PIN U14 [get_ports {c[0]}]
set_property PACKAGE_PIN U19 [get_ports {c[1]}]
set_property PACKAGE_PIN W22 [get_ports {c[2]}]
set_property PACKAGE_PIN V22 [get_ports {c[3]}]


#LVCMOS33 for LEDS, LVCMOS18 for Inputs
set_property IOSTANDARD LVCMOS18 [get_ports {a[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {a[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {b[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {b[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {c[3]}]
