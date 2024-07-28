# Clock Signal Configuration
# Setting the properties for the clock signal
set_property PACKAGE_PIN W5 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]

# Switch Configurations
# Assigning package pins and IO standards for various switches
set_property PACKAGE_PIN V17 [get_ports {tmrp}]
set_property IOSTANDARD LVCMOS33 [get_ports {tmrp}]
set_property PACKAGE_PIN V16 [get_ports {tmrin}]
set_property IOSTANDARD LVCMOS33 [get_ports {tmrin}]
set_property PACKAGE_PIN W16 [get_ports {tmr}]
set_property IOSTANDARD LVCMOS33 [get_ports {tmr}]
set_property PACKAGE_PIN W17 [get_ports {almin}]
set_property IOSTANDARD LVCMOS33 [get_ports {almin}]
set_property PACKAGE_PIN W15 [get_ports {alm}]
set_property IOSTANDARD LVCMOS33 [get_ports {alm}]
set_property PACKAGE_PIN V15 [get_ports {swp}]
set_property IOSTANDARD LVCMOS33 [get_ports {swp}]
set_property PACKAGE_PIN W14 [get_ports {sw}]
set_property IOSTANDARD LVCMOS33 [get_ports {sw}]
set_property PACKAGE_PIN W13 [get_ports {loadin[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {loadin[0]}]
set_property PACKAGE_PIN V2 [get_ports {loadin[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {loadin[1]}]
set_property PACKAGE_PIN T3 [get_ports {loadin[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {loadin[2]}]
set_property PACKAGE_PIN T2 [get_ports {loadin[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {loadin[3]}]
#set_property PACKAGE_PIN R3 [get_ports {loadin[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {loadin[3]}]
set_property PACKAGE_PIN W2 [get_ports {select[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select[0]}]
set_property PACKAGE_PIN U1 [get_ports {select[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select[1]}]
set_property PACKAGE_PIN T1 [get_ports {select[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {select[2]}]
set_property PACKAGE_PIN R2 [get_ports {load}]
set_property IOSTANDARD LVCMOS33 [get_ports {load}]

# LED Configurations
# Setting up LEDs with their corresponding pins and IO standards
set_property PACKAGE_PIN U16 [get_ports {buzz}]
set_property IOSTANDARD LVCMOS33 [get_ports {buzz}]
set_property PACKAGE_PIN E19 [get_ports {buzz2}]
set_property IOSTANDARD LVCMOS33 [get_ports {buzz2}]
set_property PACKAGE_PIN U19 [get_ports {th1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th1[2]}]
set_property PACKAGE_PIN V19 [get_ports {th1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th1[3]}]
set_property PACKAGE_PIN W18 [get_ports {th2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th2[3]}]
#set_property PACKAGE_PIN U15 [get_ports {LED[5]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED[5]}]
#set_property PACKAGE_PIN U14 [get_ports {LED[6]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED[6]}]
#set_property PACKAGE_PIN V14 [get_ports {LED[7]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED[7]}]
#set_property PACKAGE_PIN V13 [get_ports {LED[8]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED[8]}]
#set_property PACKAGE_PIN V3 [get_ports {LED[9]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED[9]}]
set_property PACKAGE_PIN W3 [get_ports {th2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th2[0]}]
set_property PACKAGE_PIN U3 [get_ports {th2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th2[1]}]
set_property PACKAGE_PIN P3 [get_ports {th2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th2[2]}]
#set_property PACKAGE_PIN N3 [get_ports {LED[13]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {LED[13]}]
set_property PACKAGE_PIN P1 [get_ports {th1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th1[0]}]
set_property PACKAGE_PIN L1 [get_ports {th1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {th1[1]}]

# 7-Segment Display Configurations
# Assigning pins and IO standards for the 7-segment display
set_property PACKAGE_PIN W7 [get_ports {LED_out[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[6]}]
set_property PACKAGE_PIN W6 [get_ports {LED_out[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[5]}]
set_property PACKAGE_PIN U8 [get_ports {LED_out[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[4]}]
set_property PACKAGE_PIN V8 [get_ports {LED_out[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[3]}]
set_property PACKAGE_PIN U5 [get_ports {LED_out[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[2]}]
set_property PACKAGE_PIN V5 [get_ports {LED_out[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[1]}]
set_property PACKAGE_PIN U7 [get_ports {LED_out[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED_out[0]}]
#set_property PACKAGE_PIN V7 [get_ports dp]
# set_property IOSTANDARD LVCMOS33 [get_ports dp]
set_property PACKAGE_PIN U2 [get_ports {Anode_Activate[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[0]}]
set_property PACKAGE_PIN U4 [get_ports {Anode_Activate[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[1]}]
set_property PACKAGE_PIN V4 [get_ports {Anode_Activate[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[2]}]
set_property PACKAGE_PIN W4 [get_ports {Anode_Activate[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Anode_Activate[3]}]

# Button Configurations
# Defining properties for the buttons used in the design
#set_property PACKAGE_PIN U18 [get_ports btnC]
# set_property IOSTANDARD LVCMOS33 [get_ports btnC]
#set_property PACKAGE_PIN T18 [get_ports btnU]
# set_property IOSTANDARD LVCMOS33 [get_ports btnU]
set_property PACKAGE_PIN W19 [get_ports swrst]
set_property IOSTANDARD LVCMOS33 [get_ports swrst]
set_property PACKAGE_PIN T17 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]
#set_property PACKAGE_PIN U17 [get_ports btnD]
# set_property IOSTANDARD LVCMOS33 [get_ports btnD]

# Pmod Header JA Configuration
# Configuring the Pmod JA header pins and IO standards
#set_property PACKAGE_PIN J1 [get_ports {JA[0]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
#set_property PACKAGE_PIN L2 [get_ports {JA[1]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
#set_property PACKAGE_PIN J2 [get_ports {JA[2]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]
#set_property PACKAGE_PIN G2 [get_ports {JA[3]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]
#set_property PACKAGE_PIN H1 [get_ports {JA[4]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
#set_property PACKAGE_PIN K2 [get_ports {JA[5]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
#set_property PACKAGE_PIN H2 [get_ports {JA[6]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
#set_property PACKAGE_PIN G3 [get_ports {JA[7]}]
# set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]
