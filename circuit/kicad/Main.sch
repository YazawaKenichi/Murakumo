EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 3 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C18
U 1 1 62009370
P 18600 12800
AR Path="/62009370" Ref="C18"  Part="1" 
AR Path="/624FCD7A/62009370" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009370" Ref="C?"  Part="1" 
AR Path="/61F60664/62009370" Ref="C?"  Part="1" 
F 0 "C?" H 18715 12846 50  0000 L CNN
F 1 "0.1u" H 18715 12755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 18638 12650 50  0001 C CNN
F 3 "~" H 18600 12800 50  0001 C CNN
	1    18600 12800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR090
U 1 1 62009376
P 18600 13050
AR Path="/62009376" Ref="#PWR090"  Part="1" 
AR Path="/624FCD7A/62009376" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009376" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009376" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18600 12800 50  0001 C CNN
F 1 "GND" H 18605 12877 50  0000 C CNN
F 2 "" H 18600 13050 50  0001 C CNN
F 3 "" H 18600 13050 50  0001 C CNN
	1    18600 13050
	1    0    0    -1  
$EndComp
Wire Wire Line
	18600 13050 18600 12950
$Comp
L Device:C C15
U 1 1 6200937D
P 18600 11700
AR Path="/6200937D" Ref="C15"  Part="1" 
AR Path="/624FCD7A/6200937D" Ref="C?"  Part="1" 
AR Path="/61F602DC/6200937D" Ref="C?"  Part="1" 
AR Path="/61F60664/6200937D" Ref="C?"  Part="1" 
F 0 "C?" H 18715 11746 50  0000 L CNN
F 1 "0.1u" H 18715 11655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 18638 11550 50  0001 C CNN
F 3 "~" H 18600 11700 50  0001 C CNN
	1    18600 11700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR083
U 1 1 62009383
P 18600 11950
AR Path="/62009383" Ref="#PWR083"  Part="1" 
AR Path="/624FCD7A/62009383" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009383" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009383" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18600 11700 50  0001 C CNN
F 1 "GND" H 18605 11777 50  0000 C CNN
F 2 "" H 18600 11950 50  0001 C CNN
F 3 "" H 18600 11950 50  0001 C CNN
	1    18600 11950
	1    0    0    -1  
$EndComp
Wire Wire Line
	18600 11950 18600 11850
NoConn ~ 17700 11250
NoConn ~ 17600 11250
NoConn ~ 18000 11250
NoConn ~ 17900 11250
Wire Wire Line
	17800 12850 17800 12750
Wire Wire Line
	17800 13250 17800 13150
$Comp
L power:GND #PWR093
U 1 1 62009390
P 17800 13250
AR Path="/62009390" Ref="#PWR093"  Part="1" 
AR Path="/624FCD7A/62009390" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009390" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009390" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17800 13000 50  0001 C CNN
F 1 "GND" H 17805 13077 50  0000 C CNN
F 2 "" H 17800 13250 50  0001 C CNN
F 3 "" H 17800 13250 50  0001 C CNN
	1    17800 13250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C20
U 1 1 62009396
P 17800 13000
AR Path="/62009396" Ref="C20"  Part="1" 
AR Path="/624FCD7A/62009396" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009396" Ref="C?"  Part="1" 
AR Path="/61F60664/62009396" Ref="C?"  Part="1" 
F 0 "C?" H 17915 13046 50  0000 L CNN
F 1 "0.1u" H 17915 12955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 17838 12850 50  0001 C CNN
F 3 "~" H 17800 13000 50  0001 C CNN
	1    17800 13000
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 12150 17250 12150
Text GLabel 16350 11850 0    50   Input ~ 0
ICM_MISO
Text GLabel 16350 11750 0    50   Input ~ 0
ICM_MOSI
Text GLabel 16350 11650 0    50   Input ~ 0
ICM_SCLK
$Comp
L ICM-20648:ICM-20648 U3
U 1 1 620093A0
P 17800 12000
AR Path="/620093A0" Ref="U3"  Part="1" 
AR Path="/624FCD7A/620093A0" Ref="U?"  Part="1" 
AR Path="/61F602DC/620093A0" Ref="U?"  Part="1" 
AR Path="/61F60664/620093A0" Ref="U?"  Part="1" 
F 0 "U?" H 17800 12050 50  0000 C CNN
F 1 "ICM-20648" H 17800 11950 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_3x3mm_P0.4mm_EP1.75x1.6mm" H 17800 12000 50  0001 C CNN
F 3 "" H 17800 12000 50  0001 C CNN
	1    17800 12000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR086
U 1 1 620093A6
P 17150 12450
AR Path="/620093A6" Ref="#PWR086"  Part="1" 
AR Path="/624FCD7A/620093A6" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620093A6" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620093A6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17150 12200 50  0001 C CNN
F 1 "GND" H 17155 12277 50  0000 C CNN
F 2 "" H 17150 12450 50  0001 C CNN
F 3 "" H 17150 12450 50  0001 C CNN
	1    17150 12450
	1    0    0    -1  
$EndComp
Wire Wire Line
	17150 12450 17150 12350
Wire Wire Line
	17150 12250 17250 12250
Connection ~ 17150 12250
Wire Wire Line
	17150 12250 17150 12150
Wire Wire Line
	17250 12350 17150 12350
Connection ~ 17150 12350
Wire Wire Line
	17150 12350 17150 12250
Wire Wire Line
	18600 12450 18600 12550
Wire Wire Line
	18600 11350 18600 11450
Wire Wire Line
	18350 12550 18600 12550
Connection ~ 18600 12550
Wire Wire Line
	18600 12550 18600 12650
Wire Wire Line
	18600 11450 18350 11450
Connection ~ 18600 11450
Wire Wire Line
	18600 11450 18600 11550
Text GLabel 7750 8450 2    50   Input ~ 0
SWDIO
Text GLabel 7750 8550 2    50   Input ~ 0
SWCLK
Text GLabel 7750 9150 2    50   Input ~ 0
SWO
Text GLabel 7750 10350 2    50   Input ~ 0
ICM_MOSI
Text GLabel 7750 10250 2    50   Input ~ 0
ICM_MISO
Text GLabel 7750 9850 2    50   Input ~ 0
ICM_SCLK
Text GLabel 7750 9650 2    50   Input ~ 0
I2C_SCL
Text GLabel 7750 9750 2    50   Input ~ 0
I2C_SDA
Text GLabel 7750 9050 2    50   Input ~ 0
SubSens1
Text GLabel 7750 9950 2    50   Input ~ 0
SubSens2
$Comp
L power:GND #PWR074
U 1 1 620093C5
P 6850 10750
AR Path="/620093C5" Ref="#PWR074"  Part="1" 
AR Path="/624FCD7A/620093C5" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620093C5" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620093C5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6850 10500 50  0001 C CNN
F 1 "GND" H 6855 10577 50  0000 C CNN
F 2 "" H 6850 10750 50  0001 C CNN
F 3 "" H 6850 10750 50  0001 C CNN
	1    6850 10750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 10750 6850 10650
Wire Wire Line
	6850 10650 6950 10650
Wire Wire Line
	6950 10650 6950 10550
Connection ~ 6850 10650
Wire Wire Line
	6850 10650 6850 10550
$Comp
L Device:C C12
U 1 1 620093D0
P 6050 7800
AR Path="/620093D0" Ref="C12"  Part="1" 
AR Path="/624FCD7A/620093D0" Ref="C?"  Part="1" 
AR Path="/61F602DC/620093D0" Ref="C?"  Part="1" 
AR Path="/61F60664/620093D0" Ref="C?"  Part="1" 
F 0 "C?" H 6165 7846 50  0000 L CNN
F 1 "2.2u" H 6165 7755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6088 7650 50  0001 C CNN
F 3 "~" H 6050 7800 50  0001 C CNN
	1    6050 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 620093D6
P 5650 7800
AR Path="/620093D6" Ref="C11"  Part="1" 
AR Path="/624FCD7A/620093D6" Ref="C?"  Part="1" 
AR Path="/61F602DC/620093D6" Ref="C?"  Part="1" 
AR Path="/61F60664/620093D6" Ref="C?"  Part="1" 
F 0 "C?" H 5765 7846 50  0000 L CNN
F 1 "2.2u" H 5765 7755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5688 7650 50  0001 C CNN
F 3 "~" H 5650 7800 50  0001 C CNN
	1    5650 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7950 5650 7950
$Comp
L power:GND #PWR054
U 1 1 620093DD
P 5650 8050
AR Path="/620093DD" Ref="#PWR054"  Part="1" 
AR Path="/624FCD7A/620093DD" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620093DD" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620093DD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5650 7800 50  0001 C CNN
F 1 "GND" H 5655 7877 50  0000 C CNN
F 2 "" H 5650 8050 50  0001 C CNN
F 3 "" H 5650 8050 50  0001 C CNN
	1    5650 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 8050 5650 7950
$Comp
L Device:C C3
U 1 1 620093E4
P 6350 5500
AR Path="/620093E4" Ref="C3"  Part="1" 
AR Path="/624FCD7A/620093E4" Ref="C?"  Part="1" 
AR Path="/61F602DC/620093E4" Ref="C?"  Part="1" 
AR Path="/61F60664/620093E4" Ref="C?"  Part="1" 
F 0 "C?" H 6465 5546 50  0000 L CNN
F 1 "0.1u" H 6465 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 5350 50  0001 C CNN
F 3 "~" H 6350 5500 50  0001 C CNN
	1    6350 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 620093EA
P 6350 5750
AR Path="/620093EA" Ref="#PWR028"  Part="1" 
AR Path="/624FCD7A/620093EA" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620093EA" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620093EA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 5500 50  0001 C CNN
F 1 "GND" H 6355 5577 50  0000 C CNN
F 2 "" H 6350 5750 50  0001 C CNN
F 3 "" H 6350 5750 50  0001 C CNN
	1    6350 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5750 6350 5650
Wire Wire Line
	6950 10650 7050 10650
Wire Wire Line
	7050 10650 7050 10550
Connection ~ 6950 10650
$Comp
L Device:C C4
U 1 1 620093F4
P 6750 5500
AR Path="/620093F4" Ref="C4"  Part="1" 
AR Path="/624FCD7A/620093F4" Ref="C?"  Part="1" 
AR Path="/61F602DC/620093F4" Ref="C?"  Part="1" 
AR Path="/61F60664/620093F4" Ref="C?"  Part="1" 
F 0 "C?" H 6865 5546 50  0000 L CNN
F 1 "0.1u" H 6865 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6788 5350 50  0001 C CNN
F 3 "~" H 6750 5500 50  0001 C CNN
	1    6750 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 620093FA
P 6750 5750
AR Path="/620093FA" Ref="#PWR029"  Part="1" 
AR Path="/624FCD7A/620093FA" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620093FA" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620093FA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 5500 50  0001 C CNN
F 1 "GND" H 6755 5577 50  0000 C CNN
F 2 "" H 6750 5750 50  0001 C CNN
F 3 "" H 6750 5750 50  0001 C CNN
	1    6750 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 5750 6750 5650
$Comp
L Device:C C5
U 1 1 62009401
P 5950 6550
AR Path="/62009401" Ref="C5"  Part="1" 
AR Path="/624FCD7A/62009401" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009401" Ref="C?"  Part="1" 
AR Path="/61F60664/62009401" Ref="C?"  Part="1" 
F 0 "C?" H 6065 6596 50  0000 L CNN
F 1 "4.7u" H 6065 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5988 6400 50  0001 C CNN
F 3 "~" H 5950 6550 50  0001 C CNN
	1    5950 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6300 5950 6400
$Comp
L power:GND #PWR040
U 1 1 62009408
P 5950 6800
AR Path="/62009408" Ref="#PWR040"  Part="1" 
AR Path="/624FCD7A/62009408" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009408" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009408" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 6550 50  0001 C CNN
F 1 "GND" H 5955 6627 50  0000 C CNN
F 2 "" H 5950 6800 50  0001 C CNN
F 3 "" H 5950 6800 50  0001 C CNN
	1    5950 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6800 5950 6700
$Comp
L Device:C C6
U 1 1 6200940F
P 6350 6550
AR Path="/6200940F" Ref="C6"  Part="1" 
AR Path="/624FCD7A/6200940F" Ref="C?"  Part="1" 
AR Path="/61F602DC/6200940F" Ref="C?"  Part="1" 
AR Path="/61F60664/6200940F" Ref="C?"  Part="1" 
F 0 "C?" H 6465 6596 50  0000 L CNN
F 1 "0.1u" H 6465 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6388 6400 50  0001 C CNN
F 3 "~" H 6350 6550 50  0001 C CNN
	1    6350 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6300 6350 6400
$Comp
L power:GND #PWR041
U 1 1 62009416
P 6350 6800
AR Path="/62009416" Ref="#PWR041"  Part="1" 
AR Path="/624FCD7A/62009416" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009416" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009416" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 6550 50  0001 C CNN
F 1 "GND" H 6355 6627 50  0000 C CNN
F 2 "" H 6350 6800 50  0001 C CNN
F 3 "" H 6350 6800 50  0001 C CNN
	1    6350 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 6800 6350 6700
Wire Wire Line
	5950 6300 6350 6300
Connection ~ 6350 6300
Wire Wire Line
	6350 6300 6750 6300
$Comp
L Device:C C7
U 1 1 62009420
P 7400 6550
AR Path="/62009420" Ref="C7"  Part="1" 
AR Path="/624FCD7A/62009420" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009420" Ref="C?"  Part="1" 
AR Path="/61F60664/62009420" Ref="C?"  Part="1" 
F 0 "C?" H 7515 6596 50  0000 L CNN
F 1 "0.1u" H 7515 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7438 6400 50  0001 C CNN
F 3 "~" H 7400 6550 50  0001 C CNN
	1    7400 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6300 7400 6400
$Comp
L power:GND #PWR042
U 1 1 62009427
P 7400 6800
AR Path="/62009427" Ref="#PWR042"  Part="1" 
AR Path="/624FCD7A/62009427" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009427" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009427" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7400 6550 50  0001 C CNN
F 1 "GND" H 7405 6627 50  0000 C CNN
F 2 "" H 7400 6800 50  0001 C CNN
F 3 "" H 7400 6800 50  0001 C CNN
	1    7400 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6800 7400 6700
Wire Wire Line
	7800 6300 7400 6300
Connection ~ 7400 6300
Wire Wire Line
	7800 6800 7800 6700
$Comp
L power:GND #PWR043
U 1 1 62009431
P 7800 6800
AR Path="/62009431" Ref="#PWR043"  Part="1" 
AR Path="/624FCD7A/62009431" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009431" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009431" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7800 6550 50  0001 C CNN
F 1 "GND" H 7805 6627 50  0000 C CNN
F 2 "" H 7800 6800 50  0001 C CNN
F 3 "" H 7800 6800 50  0001 C CNN
	1    7800 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 6300 7800 6400
$Comp
L Device:C C8
U 1 1 62009438
P 7800 6550
AR Path="/62009438" Ref="C8"  Part="1" 
AR Path="/624FCD7A/62009438" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009438" Ref="C?"  Part="1" 
AR Path="/61F60664/62009438" Ref="C?"  Part="1" 
F 0 "C?" H 7915 6596 50  0000 L CNN
F 1 "1u" H 7915 6505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7838 6400 50  0001 C CNN
F 3 "~" H 7800 6550 50  0001 C CNN
	1    7800 6550
	1    0    0    -1  
$EndComp
Text GLabel 7750 8050 2    50   Input ~ 0
Encorder1_B
Text GLabel 7750 7950 2    50   Input ~ 0
Encorder1_A
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J5
U 1 1 62009440
P 13800 11950
AR Path="/62009440" Ref="J5"  Part="1" 
AR Path="/624FCD7A/62009440" Ref="J?"  Part="1" 
AR Path="/61F602DC/62009440" Ref="J?"  Part="1" 
AR Path="/61F60664/62009440" Ref="J?"  Part="1" 
F 0 "J?" H 13850 12367 50  0000 C CNN
F 1 "FTSH2x5" H 13850 12276 50  0000 C CNN
F 2 "FTSH:SAMTEC_FTSH-105-01-L-D-K" H 13800 11950 50  0001 C CNN
F 3 "~" H 13800 11950 50  0001 C CNN
	1    13800 11950
	1    0    0    -1  
$EndComp
Text GLabel 15200 11950 2    50   Input ~ 0
Encorder1_A
Text GLabel 15200 12050 2    50   Input ~ 0
Encorder1_B
$Comp
L Connector_Generic:Conn_01x06 J4
U 1 1 62009448
P 12250 11200
AR Path="/62009448" Ref="J4"  Part="1" 
AR Path="/624FCD7A/62009448" Ref="J?"  Part="1" 
AR Path="/61F602DC/62009448" Ref="J?"  Part="1" 
AR Path="/61F60664/62009448" Ref="J?"  Part="1" 
F 0 "J?" H 12330 11192 50  0000 L CNN
F 1 "SH6" H 12330 11101 50  0000 L CNN
F 2 "SH:SH_01x06" H 12250 11200 50  0001 C CNN
F 3 "~" H 12250 11200 50  0001 C CNN
	1    12250 11200
	1    0    0    -1  
$EndComp
Text GLabel 11950 11100 0    50   Input ~ 0
SWCLK
Text GLabel 11950 11400 0    50   Input ~ 0
nRST
Text GLabel 11950 11300 0    50   Input ~ 0
SWDIO
Text GLabel 11950 11500 0    50   Input ~ 0
SWO
$Comp
L power:GND #PWR080
U 1 1 62009452
P 11350 11450
AR Path="/62009452" Ref="#PWR080"  Part="1" 
AR Path="/624FCD7A/62009452" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009452" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009452" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11350 11200 50  0001 C CNN
F 1 "GND" H 11355 11277 50  0000 C CNN
F 2 "" H 11350 11450 50  0001 C CNN
F 3 "" H 11350 11450 50  0001 C CNN
	1    11350 11450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR075
U 1 1 62009458
P 11350 10750
AR Path="/62009458" Ref="#PWR075"  Part="1" 
AR Path="/624FCD7A/62009458" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009458" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009458" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11350 10600 50  0001 C CNN
F 1 "+3.3V" H 11365 10923 50  0000 C CNN
F 2 "" H 11350 10750 50  0001 C CNN
F 3 "" H 11350 10750 50  0001 C CNN
	1    11350 10750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 6200945E
P 11350 11100
AR Path="/6200945E" Ref="C13"  Part="1" 
AR Path="/624FCD7A/6200945E" Ref="C?"  Part="1" 
AR Path="/61F602DC/6200945E" Ref="C?"  Part="1" 
AR Path="/61F60664/6200945E" Ref="C?"  Part="1" 
F 0 "C?" H 11465 11146 50  0000 L CNN
F 1 "0.1u" H 11465 11055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11388 10950 50  0001 C CNN
F 3 "~" H 11350 11100 50  0001 C CNN
	1    11350 11100
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 10950 11350 10850
Wire Wire Line
	11350 11250 11350 11350
Wire Wire Line
	11350 11350 11600 11350
Wire Wire Line
	11600 11350 11600 11200
Wire Wire Line
	11600 11200 12050 11200
Connection ~ 11350 11350
Wire Wire Line
	11350 11350 11350 11450
Wire Wire Line
	12050 11000 11600 11000
Wire Wire Line
	11600 11000 11600 10850
Wire Wire Line
	11600 10850 11350 10850
Wire Wire Line
	11350 10750 11350 10850
Connection ~ 11350 10850
NoConn ~ 13600 11750
NoConn ~ 13600 11950
NoConn ~ 13600 12050
NoConn ~ 13600 12150
NoConn ~ 14100 11850
NoConn ~ 14100 12150
Wire Wire Line
	14200 11750 14100 11750
$Comp
L power:GND #PWR082
U 1 1 62009477
P 13200 11950
AR Path="/62009477" Ref="#PWR082"  Part="1" 
AR Path="/624FCD7A/62009477" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009477" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009477" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13200 11700 50  0001 C CNN
F 1 "GND" H 13205 11777 50  0000 C CNN
F 2 "" H 13200 11950 50  0001 C CNN
F 3 "" H 13200 11950 50  0001 C CNN
	1    13200 11950
	1    0    0    -1  
$EndComp
Wire Wire Line
	13200 11950 13200 11850
$Comp
L Connector_Generic:Conn_01x04 J7
U 1 1 6200947E
P 12350 12250
AR Path="/6200947E" Ref="J7"  Part="1" 
AR Path="/624FCD7A/6200947E" Ref="J?"  Part="1" 
AR Path="/61F602DC/6200947E" Ref="J?"  Part="1" 
AR Path="/61F60664/6200947E" Ref="J?"  Part="1" 
F 0 "J?" H 12430 12242 50  0000 L CNN
F 1 "SH4" H 12430 12151 50  0000 L CNN
F 2 "SH:SH_01x04" H 12350 12250 50  0001 C CNN
F 3 "~" H 12350 12250 50  0001 C CNN
	1    12350 12250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR081
U 1 1 62009484
P 11350 11950
AR Path="/62009484" Ref="#PWR081"  Part="1" 
AR Path="/624FCD7A/62009484" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009484" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009484" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11350 11800 50  0001 C CNN
F 1 "+3.3V" H 11365 12123 50  0000 C CNN
F 2 "" H 11350 11950 50  0001 C CNN
F 3 "" H 11350 11950 50  0001 C CNN
	1    11350 11950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR088
U 1 1 6200948A
P 11350 12650
AR Path="/6200948A" Ref="#PWR088"  Part="1" 
AR Path="/624FCD7A/6200948A" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200948A" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200948A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11350 12400 50  0001 C CNN
F 1 "GND" H 11355 12477 50  0000 C CNN
F 2 "" H 11350 12650 50  0001 C CNN
F 3 "" H 11350 12650 50  0001 C CNN
	1    11350 12650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 62009490
P 11350 12300
AR Path="/62009490" Ref="C16"  Part="1" 
AR Path="/624FCD7A/62009490" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009490" Ref="C?"  Part="1" 
AR Path="/61F60664/62009490" Ref="C?"  Part="1" 
F 0 "C?" H 11465 12346 50  0000 L CNN
F 1 "0.1u" H 11465 12255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11388 12150 50  0001 C CNN
F 3 "~" H 11350 12300 50  0001 C CNN
	1    11350 12300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 12450 12050 12450
Wire Wire Line
	12050 12450 12050 12550
Wire Wire Line
	12150 12150 12050 12150
Wire Wire Line
	12050 12150 12050 12050
$Comp
L Device:C C14
U 1 1 6200949A
P 13200 11600
AR Path="/6200949A" Ref="C14"  Part="1" 
AR Path="/624FCD7A/6200949A" Ref="C?"  Part="1" 
AR Path="/61F602DC/6200949A" Ref="C?"  Part="1" 
AR Path="/61F60664/6200949A" Ref="C?"  Part="1" 
F 0 "C?" H 13315 11646 50  0000 L CNN
F 1 "0.1u" H 13315 11555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13238 11450 50  0001 C CNN
F 3 "~" H 13200 11600 50  0001 C CNN
	1    13200 11600
	1    0    0    -1  
$EndComp
Wire Wire Line
	13200 11450 13200 11350
Wire Wire Line
	13200 11350 14200 11350
Wire Wire Line
	14200 11350 14200 11750
Wire Wire Line
	13200 11250 13200 11350
Wire Wire Line
	13200 11750 13200 11850
Connection ~ 13200 11850
Wire Wire Line
	13200 11850 13600 11850
Connection ~ 13200 11350
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J9
U 1 1 620094A8
P 13800 13150
AR Path="/620094A8" Ref="J9"  Part="1" 
AR Path="/624FCD7A/620094A8" Ref="J?"  Part="1" 
AR Path="/61F602DC/620094A8" Ref="J?"  Part="1" 
AR Path="/61F60664/620094A8" Ref="J?"  Part="1" 
F 0 "J?" H 13850 13567 50  0000 C CNN
F 1 "FTSH2x5" H 13850 13476 50  0000 C CNN
F 2 "FTSH:SAMTEC_FTSH-105-01-L-D-K" H 13800 13150 50  0001 C CNN
F 3 "~" H 13800 13150 50  0001 C CNN
	1    13800 13150
	1    0    0    -1  
$EndComp
Text GLabel 15200 13150 2    50   Input ~ 0
Encorder2_A
Text GLabel 15200 13250 2    50   Input ~ 0
Encorder2_B
NoConn ~ 13600 12950
NoConn ~ 13600 13150
NoConn ~ 13600 13250
NoConn ~ 13600 13350
NoConn ~ 14100 13050
NoConn ~ 14100 13350
Wire Wire Line
	14200 12950 14100 12950
$Comp
L power:GND #PWR092
U 1 1 620094B7
P 13200 13150
AR Path="/620094B7" Ref="#PWR092"  Part="1" 
AR Path="/624FCD7A/620094B7" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620094B7" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620094B7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13200 12900 50  0001 C CNN
F 1 "GND" H 13205 12977 50  0000 C CNN
F 2 "" H 13200 13150 50  0001 C CNN
F 3 "" H 13200 13150 50  0001 C CNN
	1    13200 13150
	1    0    0    -1  
$EndComp
Wire Wire Line
	13200 13150 13200 13050
$Comp
L Device:C C17
U 1 1 620094BE
P 13200 12800
AR Path="/620094BE" Ref="C17"  Part="1" 
AR Path="/624FCD7A/620094BE" Ref="C?"  Part="1" 
AR Path="/61F602DC/620094BE" Ref="C?"  Part="1" 
AR Path="/61F60664/620094BE" Ref="C?"  Part="1" 
F 0 "C?" H 13315 12846 50  0000 L CNN
F 1 "0.1u" H 13315 12755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13238 12650 50  0001 C CNN
F 3 "~" H 13200 12800 50  0001 C CNN
	1    13200 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	13200 12650 13200 12550
Wire Wire Line
	13200 12550 14200 12550
Wire Wire Line
	14200 12550 14200 12950
Wire Wire Line
	13200 12450 13200 12550
Wire Wire Line
	13200 12950 13200 13050
Connection ~ 13200 13050
Wire Wire Line
	13200 13050 13600 13050
Connection ~ 13200 12550
$Comp
L Connector_Generic:Conn_01x04 J11
U 1 1 620094CC
P 12600 13450
AR Path="/620094CC" Ref="J11"  Part="1" 
AR Path="/624FCD7A/620094CC" Ref="J?"  Part="1" 
AR Path="/61F602DC/620094CC" Ref="J?"  Part="1" 
AR Path="/61F60664/620094CC" Ref="J?"  Part="1" 
F 0 "J?" H 12680 13442 50  0000 L CNN
F 1 "SH4" H 12680 13351 50  0000 L CNN
F 2 "SH:SH_01x04" H 12600 13450 50  0001 C CNN
F 3 "~" H 12600 13450 50  0001 C CNN
	1    12600 13450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR095
U 1 1 620094D2
P 11350 13850
AR Path="/620094D2" Ref="#PWR095"  Part="1" 
AR Path="/624FCD7A/620094D2" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620094D2" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620094D2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11350 13600 50  0001 C CNN
F 1 "GND" H 11355 13677 50  0000 C CNN
F 2 "" H 11350 13850 50  0001 C CNN
F 3 "" H 11350 13850 50  0001 C CNN
	1    11350 13850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C22
U 1 1 620094D8
P 11350 13500
AR Path="/620094D8" Ref="C22"  Part="1" 
AR Path="/624FCD7A/620094D8" Ref="C?"  Part="1" 
AR Path="/61F602DC/620094D8" Ref="C?"  Part="1" 
AR Path="/61F60664/620094D8" Ref="C?"  Part="1" 
F 0 "C?" H 11465 13546 50  0000 L CNN
F 1 "0.1u" H 11465 13455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 11388 13350 50  0001 C CNN
F 3 "~" H 11350 13500 50  0001 C CNN
	1    11350 13500
	1    0    0    -1  
$EndComp
Text GLabel 12050 12250 0    50   Input ~ 0
I2C_SCL
Text GLabel 12050 12350 0    50   Input ~ 0
I2C_SDA
Wire Wire Line
	11350 12450 11350 12550
Wire Wire Line
	11350 11950 11350 12050
Connection ~ 11350 12050
Wire Wire Line
	11350 12050 11350 12150
Connection ~ 11350 12550
Wire Wire Line
	11350 12550 11350 12650
Wire Wire Line
	11350 12050 12050 12050
Wire Wire Line
	11350 12550 12050 12550
Wire Wire Line
	11350 13650 11350 13750
Wire Wire Line
	11350 13150 11350 13250
Text GLabel 12300 13550 0    50   Input ~ 0
USART_TX
Text GLabel 12300 13650 0    50   Input ~ 0
USART_RX
Wire Wire Line
	11750 13450 11750 13750
Wire Wire Line
	11750 13750 11350 13750
Connection ~ 11350 13750
Wire Wire Line
	11350 13750 11350 13850
Wire Wire Line
	11750 13450 12400 13450
Wire Wire Line
	11350 13250 11750 13250
Connection ~ 11350 13250
Wire Wire Line
	11350 13250 11350 13350
Wire Wire Line
	11750 13350 11750 13250
Wire Wire Line
	11750 13350 12400 13350
$Comp
L power:+5V #PWR091
U 1 1 620094F6
P 11350 13150
AR Path="/620094F6" Ref="#PWR091"  Part="1" 
AR Path="/624FCD7A/620094F6" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620094F6" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620094F6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 11350 13000 50  0001 C CNN
F 1 "+5V" H 11365 13323 50  0000 C CNN
F 2 "" H 11350 13150 50  0001 C CNN
F 3 "" H 11350 13150 50  0001 C CNN
	1    11350 13150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C9
U 1 1 620094FC
P 4900 7200
AR Path="/620094FC" Ref="C9"  Part="1" 
AR Path="/624FCD7A/620094FC" Ref="C?"  Part="1" 
AR Path="/61F602DC/620094FC" Ref="C?"  Part="1" 
AR Path="/61F60664/620094FC" Ref="C?"  Part="1" 
F 0 "C?" H 5015 7246 50  0000 L CNN
F 1 "0.1u" H 5015 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4938 7050 50  0001 C CNN
F 3 "~" H 4900 7200 50  0001 C CNN
	1    4900 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7050 4900 6900
Wire Wire Line
	5200 6900 5200 7000
Wire Wire Line
	5200 7400 5200 7500
Wire Wire Line
	5050 7500 4900 7500
Wire Wire Line
	4900 7500 4900 7350
$Comp
L power:GND #PWR045
U 1 1 62009507
P 5050 7600
AR Path="/62009507" Ref="#PWR045"  Part="1" 
AR Path="/624FCD7A/62009507" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009507" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009507" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 7350 50  0001 C CNN
F 1 "GND" H 5055 7427 50  0000 C CNN
F 2 "" H 5050 7600 50  0001 C CNN
F 3 "" H 5050 7600 50  0001 C CNN
	1    5050 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 7600 5050 7500
Wire Wire Line
	5050 7500 5200 7500
Connection ~ 5050 7500
$Comp
L Device:R R22
U 1 1 62009510
P 5300 7800
AR Path="/62009510" Ref="R22"  Part="1" 
AR Path="/624FCD7A/62009510" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009510" Ref="R?"  Part="1" 
AR Path="/61F60664/62009510" Ref="R?"  Part="1" 
F 0 "R?" H 5370 7846 50  0000 L CNN
F 1 "10k" H 5370 7755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5230 7800 50  0001 C CNN
F 3 "~" H 5300 7800 50  0001 C CNN
	1    5300 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 62009516
P 14950 2950
AR Path="/61E3FF76/62009516" Ref="Q?"  Part="1" 
AR Path="/62009516" Ref="Q1"  Part="1" 
AR Path="/624FCD7A/62009516" Ref="Q?"  Part="1" 
AR Path="/61F602DC/62009516" Ref="Q?"  Part="1" 
AR Path="/61F60664/62009516" Ref="Q?"  Part="1" 
F 0 "Q?" H 15140 2996 50  0000 L CNN
F 1 "TEMT7100X01" H 15140 2905 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 15150 3050 50  0001 C CNN
F 3 "~" H 14950 2950 50  0001 C CNN
	1    14950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6200951C
P 14000 2950
AR Path="/61E3FF76/6200951C" Ref="D?"  Part="1" 
AR Path="/6200951C" Ref="D1"  Part="1" 
AR Path="/624FCD7A/6200951C" Ref="D?"  Part="1" 
AR Path="/61F602DC/6200951C" Ref="D?"  Part="1" 
AR Path="/61F60664/6200951C" Ref="D?"  Part="1" 
F 0 "D?" V 14039 2832 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 13948 2832 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 14000 2950 50  0001 C CNN
F 3 "~" H 14000 2950 50  0001 C CNN
	1    14000 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009522
P 15050 3450
AR Path="/61E3FF76/62009522" Ref="#PWR?"  Part="1" 
AR Path="/62009522" Ref="#PWR08"  Part="1" 
AR Path="/624FCD7A/62009522" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009522" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009522" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 3200 50  0001 C CNN
F 1 "GND" H 15055 3277 50  0000 C CNN
F 2 "" H 15050 3450 50  0001 C CNN
F 3 "" H 15050 3450 50  0001 C CNN
	1    15050 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62009528
P 14000 2400
AR Path="/61E3FF76/62009528" Ref="R?"  Part="1" 
AR Path="/62009528" Ref="R1"  Part="1" 
AR Path="/624FCD7A/62009528" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009528" Ref="R?"  Part="1" 
AR Path="/61F60664/62009528" Ref="R?"  Part="1" 
F 0 "R?" H 14070 2446 50  0000 L CNN
F 1 "100" H 14070 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13930 2400 50  0001 C CNN
F 3 "~" H 14000 2400 50  0001 C CNN
	1    14000 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6200952E
P 14000 3450
AR Path="/61E3FF76/6200952E" Ref="#PWR?"  Part="1" 
AR Path="/6200952E" Ref="#PWR07"  Part="1" 
AR Path="/624FCD7A/6200952E" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200952E" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200952E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 3200 50  0001 C CNN
F 1 "GND" H 14005 3277 50  0000 C CNN
F 2 "" H 14000 3450 50  0001 C CNN
F 3 "" H 14000 3450 50  0001 C CNN
	1    14000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 3450 15050 3150
Wire Wire Line
	14000 3450 14000 3100
Wire Wire Line
	11950 11100 12050 11100
Wire Wire Line
	12050 11300 11950 11300
Wire Wire Line
	11950 11400 12050 11400
Wire Wire Line
	12050 11500 11950 11500
Wire Wire Line
	12050 12250 12150 12250
Wire Wire Line
	12150 12350 12050 12350
Wire Wire Line
	12300 13550 12400 13550
Wire Wire Line
	12300 13650 12400 13650
$Comp
L Device:R R2
U 1 1 6200953E
P 15050 2400
AR Path="/6200953E" Ref="R2"  Part="1" 
AR Path="/624FCD7A/6200953E" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200953E" Ref="R?"  Part="1" 
AR Path="/61F60664/6200953E" Ref="R?"  Part="1" 
F 0 "R?" H 15120 2446 50  0000 L CNN
F 1 "10k" H 15120 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14980 2400 50  0001 C CNN
F 3 "~" H 15050 2400 50  0001 C CNN
	1    15050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 2550 15050 2650
$Comp
L power:+3.3V #PWR02
U 1 1 62009545
P 15050 1950
AR Path="/62009545" Ref="#PWR02"  Part="1" 
AR Path="/624FCD7A/62009545" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009545" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009545" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 1800 50  0001 C CNN
F 1 "+3.3V" H 15065 2123 50  0000 C CNN
F 2 "" H 15050 1950 50  0001 C CNN
F 3 "" H 15050 1950 50  0001 C CNN
	1    15050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR01
U 1 1 6200954B
P 14000 1950
AR Path="/6200954B" Ref="#PWR01"  Part="1" 
AR Path="/624FCD7A/6200954B" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200954B" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200954B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 1800 50  0001 C CNN
F 1 "+3.3V" H 14015 2123 50  0000 C CNN
F 2 "" H 14000 1950 50  0001 C CNN
F 3 "" H 14000 1950 50  0001 C CNN
	1    14000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 2550 14000 2800
Wire Wire Line
	14000 2250 14000 1950
Wire Wire Line
	15050 1950 15050 2250
Wire Wire Line
	15050 2650 15650 2650
Connection ~ 15050 2650
Wire Wire Line
	15050 2650 15050 2750
Entry Wire Line
	15650 2650 15750 2750
Text Label 15650 2650 2    50   ~ 0
Sensor01
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 62009559
P 16950 2950
AR Path="/61E3FF76/62009559" Ref="Q?"  Part="1" 
AR Path="/62009559" Ref="Q2"  Part="1" 
AR Path="/624FCD7A/62009559" Ref="Q?"  Part="1" 
AR Path="/61F602DC/62009559" Ref="Q?"  Part="1" 
AR Path="/61F60664/62009559" Ref="Q?"  Part="1" 
F 0 "Q?" H 17140 2996 50  0000 L CNN
F 1 "TEMT7100X01" H 17140 2905 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 17150 3050 50  0001 C CNN
F 3 "~" H 16950 2950 50  0001 C CNN
	1    16950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6200955F
P 16000 2950
AR Path="/61E3FF76/6200955F" Ref="D?"  Part="1" 
AR Path="/6200955F" Ref="D2"  Part="1" 
AR Path="/624FCD7A/6200955F" Ref="D?"  Part="1" 
AR Path="/61F602DC/6200955F" Ref="D?"  Part="1" 
AR Path="/61F60664/6200955F" Ref="D?"  Part="1" 
F 0 "D?" V 16039 2832 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 15948 2832 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 16000 2950 50  0001 C CNN
F 3 "~" H 16000 2950 50  0001 C CNN
	1    16000 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009565
P 17050 3450
AR Path="/61E3FF76/62009565" Ref="#PWR?"  Part="1" 
AR Path="/62009565" Ref="#PWR010"  Part="1" 
AR Path="/624FCD7A/62009565" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009565" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009565" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 3200 50  0001 C CNN
F 1 "GND" H 17055 3277 50  0000 C CNN
F 2 "" H 17050 3450 50  0001 C CNN
F 3 "" H 17050 3450 50  0001 C CNN
	1    17050 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6200956B
P 16000 2400
AR Path="/61E3FF76/6200956B" Ref="R?"  Part="1" 
AR Path="/6200956B" Ref="R3"  Part="1" 
AR Path="/624FCD7A/6200956B" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200956B" Ref="R?"  Part="1" 
AR Path="/61F60664/6200956B" Ref="R?"  Part="1" 
F 0 "R?" H 16070 2446 50  0000 L CNN
F 1 "100" H 16070 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15930 2400 50  0001 C CNN
F 3 "~" H 16000 2400 50  0001 C CNN
	1    16000 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009571
P 16000 3450
AR Path="/61E3FF76/62009571" Ref="#PWR?"  Part="1" 
AR Path="/62009571" Ref="#PWR09"  Part="1" 
AR Path="/624FCD7A/62009571" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009571" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009571" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 3200 50  0001 C CNN
F 1 "GND" H 16005 3277 50  0000 C CNN
F 2 "" H 16000 3450 50  0001 C CNN
F 3 "" H 16000 3450 50  0001 C CNN
	1    16000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 3450 17050 3150
Wire Wire Line
	16000 3450 16000 3100
$Comp
L Device:R R4
U 1 1 62009579
P 17050 2400
AR Path="/62009579" Ref="R4"  Part="1" 
AR Path="/624FCD7A/62009579" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009579" Ref="R?"  Part="1" 
AR Path="/61F60664/62009579" Ref="R?"  Part="1" 
F 0 "R?" H 17120 2446 50  0000 L CNN
F 1 "10k" H 17120 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 2400 50  0001 C CNN
F 3 "~" H 17050 2400 50  0001 C CNN
	1    17050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 2550 17050 2650
$Comp
L power:+3.3V #PWR04
U 1 1 62009580
P 17050 1950
AR Path="/62009580" Ref="#PWR04"  Part="1" 
AR Path="/624FCD7A/62009580" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009580" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009580" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 1800 50  0001 C CNN
F 1 "+3.3V" H 17065 2123 50  0000 C CNN
F 2 "" H 17050 1950 50  0001 C CNN
F 3 "" H 17050 1950 50  0001 C CNN
	1    17050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR03
U 1 1 62009586
P 16000 1950
AR Path="/62009586" Ref="#PWR03"  Part="1" 
AR Path="/624FCD7A/62009586" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009586" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009586" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 1800 50  0001 C CNN
F 1 "+3.3V" H 16015 2123 50  0000 C CNN
F 2 "" H 16000 1950 50  0001 C CNN
F 3 "" H 16000 1950 50  0001 C CNN
	1    16000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16000 2550 16000 2800
Wire Wire Line
	16000 2250 16000 1950
Wire Wire Line
	17050 1950 17050 2250
Wire Wire Line
	17050 2650 17650 2650
Connection ~ 17050 2650
Wire Wire Line
	17050 2650 17050 2750
Entry Wire Line
	17650 2650 17750 2750
Text Label 17650 2650 2    50   ~ 0
Sensor02
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 62009594
P 18950 2950
AR Path="/61E3FF76/62009594" Ref="Q?"  Part="1" 
AR Path="/62009594" Ref="Q3"  Part="1" 
AR Path="/624FCD7A/62009594" Ref="Q?"  Part="1" 
AR Path="/61F602DC/62009594" Ref="Q?"  Part="1" 
AR Path="/61F60664/62009594" Ref="Q?"  Part="1" 
F 0 "Q?" H 19140 2996 50  0000 L CNN
F 1 "TEMT7100X01" H 19140 2905 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 19150 3050 50  0001 C CNN
F 3 "~" H 18950 2950 50  0001 C CNN
	1    18950 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6200959A
P 18000 2950
AR Path="/61E3FF76/6200959A" Ref="D?"  Part="1" 
AR Path="/6200959A" Ref="D3"  Part="1" 
AR Path="/624FCD7A/6200959A" Ref="D?"  Part="1" 
AR Path="/61F602DC/6200959A" Ref="D?"  Part="1" 
AR Path="/61F60664/6200959A" Ref="D?"  Part="1" 
F 0 "D?" V 18039 2832 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 17948 2832 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 18000 2950 50  0001 C CNN
F 3 "~" H 18000 2950 50  0001 C CNN
	1    18000 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620095A0
P 19050 3450
AR Path="/61E3FF76/620095A0" Ref="#PWR?"  Part="1" 
AR Path="/620095A0" Ref="#PWR012"  Part="1" 
AR Path="/624FCD7A/620095A0" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095A0" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095A0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 3200 50  0001 C CNN
F 1 "GND" H 19055 3277 50  0000 C CNN
F 2 "" H 19050 3450 50  0001 C CNN
F 3 "" H 19050 3450 50  0001 C CNN
	1    19050 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 620095A6
P 18000 2400
AR Path="/61E3FF76/620095A6" Ref="R?"  Part="1" 
AR Path="/620095A6" Ref="R5"  Part="1" 
AR Path="/624FCD7A/620095A6" Ref="R?"  Part="1" 
AR Path="/61F602DC/620095A6" Ref="R?"  Part="1" 
AR Path="/61F60664/620095A6" Ref="R?"  Part="1" 
F 0 "R?" H 18070 2446 50  0000 L CNN
F 1 "100" H 18070 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17930 2400 50  0001 C CNN
F 3 "~" H 18000 2400 50  0001 C CNN
	1    18000 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620095AC
P 18000 3450
AR Path="/61E3FF76/620095AC" Ref="#PWR?"  Part="1" 
AR Path="/620095AC" Ref="#PWR011"  Part="1" 
AR Path="/624FCD7A/620095AC" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095AC" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095AC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 3200 50  0001 C CNN
F 1 "GND" H 18005 3277 50  0000 C CNN
F 2 "" H 18000 3450 50  0001 C CNN
F 3 "" H 18000 3450 50  0001 C CNN
	1    18000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 3450 19050 3150
Wire Wire Line
	18000 3450 18000 3100
$Comp
L Device:R R6
U 1 1 620095B4
P 19050 2400
AR Path="/620095B4" Ref="R6"  Part="1" 
AR Path="/624FCD7A/620095B4" Ref="R?"  Part="1" 
AR Path="/61F602DC/620095B4" Ref="R?"  Part="1" 
AR Path="/61F60664/620095B4" Ref="R?"  Part="1" 
F 0 "R?" H 19120 2446 50  0000 L CNN
F 1 "10k" H 19120 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 18980 2400 50  0001 C CNN
F 3 "~" H 19050 2400 50  0001 C CNN
	1    19050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 2550 19050 2650
$Comp
L power:+3.3V #PWR06
U 1 1 620095BB
P 19050 1950
AR Path="/620095BB" Ref="#PWR06"  Part="1" 
AR Path="/624FCD7A/620095BB" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095BB" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 1800 50  0001 C CNN
F 1 "+3.3V" H 19065 2123 50  0000 C CNN
F 2 "" H 19050 1950 50  0001 C CNN
F 3 "" H 19050 1950 50  0001 C CNN
	1    19050 1950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 620095C1
P 18000 1950
AR Path="/620095C1" Ref="#PWR05"  Part="1" 
AR Path="/624FCD7A/620095C1" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095C1" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 1800 50  0001 C CNN
F 1 "+3.3V" H 18015 2123 50  0000 C CNN
F 2 "" H 18000 1950 50  0001 C CNN
F 3 "" H 18000 1950 50  0001 C CNN
	1    18000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 2550 18000 2800
Wire Wire Line
	18000 2250 18000 1950
Wire Wire Line
	19050 1950 19050 2250
Wire Wire Line
	19050 2650 19650 2650
Connection ~ 19050 2650
Wire Wire Line
	19050 2650 19050 2750
Entry Wire Line
	19650 2650 19750 2750
Text Label 19650 2650 2    50   ~ 0
Sensor03
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 620095CF
P 14950 4950
AR Path="/61E3FF76/620095CF" Ref="Q?"  Part="1" 
AR Path="/620095CF" Ref="Q4"  Part="1" 
AR Path="/624FCD7A/620095CF" Ref="Q?"  Part="1" 
AR Path="/61F602DC/620095CF" Ref="Q?"  Part="1" 
AR Path="/61F60664/620095CF" Ref="Q?"  Part="1" 
F 0 "Q?" H 15140 4996 50  0000 L CNN
F 1 "TEMT7100X01" H 15140 4905 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 15150 5050 50  0001 C CNN
F 3 "~" H 14950 4950 50  0001 C CNN
	1    14950 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 620095D5
P 14000 4950
AR Path="/61E3FF76/620095D5" Ref="D?"  Part="1" 
AR Path="/620095D5" Ref="D4"  Part="1" 
AR Path="/624FCD7A/620095D5" Ref="D?"  Part="1" 
AR Path="/61F602DC/620095D5" Ref="D?"  Part="1" 
AR Path="/61F60664/620095D5" Ref="D?"  Part="1" 
F 0 "D?" V 14039 4832 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 13948 4832 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 14000 4950 50  0001 C CNN
F 3 "~" H 14000 4950 50  0001 C CNN
	1    14000 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620095DB
P 15050 5450
AR Path="/61E3FF76/620095DB" Ref="#PWR?"  Part="1" 
AR Path="/620095DB" Ref="#PWR021"  Part="1" 
AR Path="/624FCD7A/620095DB" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095DB" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095DB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 5200 50  0001 C CNN
F 1 "GND" H 15055 5277 50  0000 C CNN
F 2 "" H 15050 5450 50  0001 C CNN
F 3 "" H 15050 5450 50  0001 C CNN
	1    15050 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 620095E1
P 14000 4400
AR Path="/61E3FF76/620095E1" Ref="R?"  Part="1" 
AR Path="/620095E1" Ref="R7"  Part="1" 
AR Path="/624FCD7A/620095E1" Ref="R?"  Part="1" 
AR Path="/61F602DC/620095E1" Ref="R?"  Part="1" 
AR Path="/61F60664/620095E1" Ref="R?"  Part="1" 
F 0 "R?" H 14070 4446 50  0000 L CNN
F 1 "100" H 14070 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13930 4400 50  0001 C CNN
F 3 "~" H 14000 4400 50  0001 C CNN
	1    14000 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620095E7
P 14000 5450
AR Path="/61E3FF76/620095E7" Ref="#PWR?"  Part="1" 
AR Path="/620095E7" Ref="#PWR020"  Part="1" 
AR Path="/624FCD7A/620095E7" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095E7" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095E7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 5200 50  0001 C CNN
F 1 "GND" H 14005 5277 50  0000 C CNN
F 2 "" H 14000 5450 50  0001 C CNN
F 3 "" H 14000 5450 50  0001 C CNN
	1    14000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 5450 15050 5150
Wire Wire Line
	14000 5450 14000 5100
$Comp
L Device:R R8
U 1 1 620095EF
P 15050 4400
AR Path="/620095EF" Ref="R8"  Part="1" 
AR Path="/624FCD7A/620095EF" Ref="R?"  Part="1" 
AR Path="/61F602DC/620095EF" Ref="R?"  Part="1" 
AR Path="/61F60664/620095EF" Ref="R?"  Part="1" 
F 0 "R?" H 15120 4446 50  0000 L CNN
F 1 "10k" H 15120 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14980 4400 50  0001 C CNN
F 3 "~" H 15050 4400 50  0001 C CNN
	1    15050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 4550 15050 4650
$Comp
L power:+3.3V #PWR014
U 1 1 620095F6
P 15050 3950
AR Path="/620095F6" Ref="#PWR014"  Part="1" 
AR Path="/624FCD7A/620095F6" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095F6" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095F6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 3800 50  0001 C CNN
F 1 "+3.3V" H 15065 4123 50  0000 C CNN
F 2 "" H 15050 3950 50  0001 C CNN
F 3 "" H 15050 3950 50  0001 C CNN
	1    15050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 620095FC
P 14000 3950
AR Path="/620095FC" Ref="#PWR013"  Part="1" 
AR Path="/624FCD7A/620095FC" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620095FC" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620095FC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 3800 50  0001 C CNN
F 1 "+3.3V" H 14015 4123 50  0000 C CNN
F 2 "" H 14000 3950 50  0001 C CNN
F 3 "" H 14000 3950 50  0001 C CNN
	1    14000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 4550 14000 4800
Wire Wire Line
	14000 4250 14000 3950
Wire Wire Line
	15050 3950 15050 4250
Wire Wire Line
	15050 4650 15650 4650
Connection ~ 15050 4650
Wire Wire Line
	15050 4650 15050 4750
Entry Wire Line
	15650 4650 15750 4750
Text Label 15650 4650 2    50   ~ 0
Sensor04
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 6200960A
P 16950 4950
AR Path="/61E3FF76/6200960A" Ref="Q?"  Part="1" 
AR Path="/6200960A" Ref="Q5"  Part="1" 
AR Path="/624FCD7A/6200960A" Ref="Q?"  Part="1" 
AR Path="/61F602DC/6200960A" Ref="Q?"  Part="1" 
AR Path="/61F60664/6200960A" Ref="Q?"  Part="1" 
F 0 "Q?" H 17140 4996 50  0000 L CNN
F 1 "TEMT7100X01" H 17140 4905 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 17150 5050 50  0001 C CNN
F 3 "~" H 16950 4950 50  0001 C CNN
	1    16950 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 62009610
P 16000 4950
AR Path="/61E3FF76/62009610" Ref="D?"  Part="1" 
AR Path="/62009610" Ref="D5"  Part="1" 
AR Path="/624FCD7A/62009610" Ref="D?"  Part="1" 
AR Path="/61F602DC/62009610" Ref="D?"  Part="1" 
AR Path="/61F60664/62009610" Ref="D?"  Part="1" 
F 0 "D?" V 16039 4832 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 15948 4832 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 16000 4950 50  0001 C CNN
F 3 "~" H 16000 4950 50  0001 C CNN
	1    16000 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009616
P 17050 5450
AR Path="/61E3FF76/62009616" Ref="#PWR?"  Part="1" 
AR Path="/62009616" Ref="#PWR023"  Part="1" 
AR Path="/624FCD7A/62009616" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009616" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009616" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 5200 50  0001 C CNN
F 1 "GND" H 17055 5277 50  0000 C CNN
F 2 "" H 17050 5450 50  0001 C CNN
F 3 "" H 17050 5450 50  0001 C CNN
	1    17050 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6200961C
P 16000 4400
AR Path="/61E3FF76/6200961C" Ref="R?"  Part="1" 
AR Path="/6200961C" Ref="R9"  Part="1" 
AR Path="/624FCD7A/6200961C" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200961C" Ref="R?"  Part="1" 
AR Path="/61F60664/6200961C" Ref="R?"  Part="1" 
F 0 "R?" H 16070 4446 50  0000 L CNN
F 1 "100" H 16070 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15930 4400 50  0001 C CNN
F 3 "~" H 16000 4400 50  0001 C CNN
	1    16000 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009622
P 16000 5450
AR Path="/61E3FF76/62009622" Ref="#PWR?"  Part="1" 
AR Path="/62009622" Ref="#PWR022"  Part="1" 
AR Path="/624FCD7A/62009622" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009622" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009622" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 5200 50  0001 C CNN
F 1 "GND" H 16005 5277 50  0000 C CNN
F 2 "" H 16000 5450 50  0001 C CNN
F 3 "" H 16000 5450 50  0001 C CNN
	1    16000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 5450 17050 5150
Wire Wire Line
	16000 5450 16000 5100
$Comp
L Device:R R10
U 1 1 6200962A
P 17050 4400
AR Path="/6200962A" Ref="R10"  Part="1" 
AR Path="/624FCD7A/6200962A" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200962A" Ref="R?"  Part="1" 
AR Path="/61F60664/6200962A" Ref="R?"  Part="1" 
F 0 "R?" H 17120 4446 50  0000 L CNN
F 1 "10k" H 17120 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 4400 50  0001 C CNN
F 3 "~" H 17050 4400 50  0001 C CNN
	1    17050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 4550 17050 4650
$Comp
L power:+3.3V #PWR016
U 1 1 62009631
P 17050 3950
AR Path="/62009631" Ref="#PWR016"  Part="1" 
AR Path="/624FCD7A/62009631" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009631" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009631" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 3800 50  0001 C CNN
F 1 "+3.3V" H 17065 4123 50  0000 C CNN
F 2 "" H 17050 3950 50  0001 C CNN
F 3 "" H 17050 3950 50  0001 C CNN
	1    17050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 62009637
P 16000 3950
AR Path="/62009637" Ref="#PWR015"  Part="1" 
AR Path="/624FCD7A/62009637" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009637" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009637" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 3800 50  0001 C CNN
F 1 "+3.3V" H 16015 4123 50  0000 C CNN
F 2 "" H 16000 3950 50  0001 C CNN
F 3 "" H 16000 3950 50  0001 C CNN
	1    16000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16000 4550 16000 4800
Wire Wire Line
	16000 4250 16000 3950
Wire Wire Line
	17050 3950 17050 4250
Wire Wire Line
	17050 4650 17650 4650
Connection ~ 17050 4650
Wire Wire Line
	17050 4650 17050 4750
Entry Wire Line
	17650 4650 17750 4750
Text Label 17650 4650 2    50   ~ 0
Sensor05
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 62009645
P 18950 4950
AR Path="/61E3FF76/62009645" Ref="Q?"  Part="1" 
AR Path="/62009645" Ref="Q6"  Part="1" 
AR Path="/624FCD7A/62009645" Ref="Q?"  Part="1" 
AR Path="/61F602DC/62009645" Ref="Q?"  Part="1" 
AR Path="/61F60664/62009645" Ref="Q?"  Part="1" 
F 0 "Q?" H 19140 4996 50  0000 L CNN
F 1 "TEMT7100X01" H 19140 4905 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 19150 5050 50  0001 C CNN
F 3 "~" H 18950 4950 50  0001 C CNN
	1    18950 4950
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 6200964B
P 18000 4950
AR Path="/61E3FF76/6200964B" Ref="D?"  Part="1" 
AR Path="/6200964B" Ref="D6"  Part="1" 
AR Path="/624FCD7A/6200964B" Ref="D?"  Part="1" 
AR Path="/61F602DC/6200964B" Ref="D?"  Part="1" 
AR Path="/61F60664/6200964B" Ref="D?"  Part="1" 
F 0 "D?" V 18039 4832 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 17948 4832 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 18000 4950 50  0001 C CNN
F 3 "~" H 18000 4950 50  0001 C CNN
	1    18000 4950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009651
P 19050 5450
AR Path="/61E3FF76/62009651" Ref="#PWR?"  Part="1" 
AR Path="/62009651" Ref="#PWR025"  Part="1" 
AR Path="/624FCD7A/62009651" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009651" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009651" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 5200 50  0001 C CNN
F 1 "GND" H 19055 5277 50  0000 C CNN
F 2 "" H 19050 5450 50  0001 C CNN
F 3 "" H 19050 5450 50  0001 C CNN
	1    19050 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62009657
P 18000 4400
AR Path="/61E3FF76/62009657" Ref="R?"  Part="1" 
AR Path="/62009657" Ref="R11"  Part="1" 
AR Path="/624FCD7A/62009657" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009657" Ref="R?"  Part="1" 
AR Path="/61F60664/62009657" Ref="R?"  Part="1" 
F 0 "R?" H 18070 4446 50  0000 L CNN
F 1 "100" H 18070 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17930 4400 50  0001 C CNN
F 3 "~" H 18000 4400 50  0001 C CNN
	1    18000 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6200965D
P 18000 5450
AR Path="/61E3FF76/6200965D" Ref="#PWR?"  Part="1" 
AR Path="/6200965D" Ref="#PWR024"  Part="1" 
AR Path="/624FCD7A/6200965D" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200965D" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200965D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 5200 50  0001 C CNN
F 1 "GND" H 18005 5277 50  0000 C CNN
F 2 "" H 18000 5450 50  0001 C CNN
F 3 "" H 18000 5450 50  0001 C CNN
	1    18000 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 5450 19050 5150
Wire Wire Line
	18000 5450 18000 5100
$Comp
L Device:R R12
U 1 1 62009665
P 19050 4400
AR Path="/62009665" Ref="R12"  Part="1" 
AR Path="/624FCD7A/62009665" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009665" Ref="R?"  Part="1" 
AR Path="/61F60664/62009665" Ref="R?"  Part="1" 
F 0 "R?" H 19120 4446 50  0000 L CNN
F 1 "10k" H 19120 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 18980 4400 50  0001 C CNN
F 3 "~" H 19050 4400 50  0001 C CNN
	1    19050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 4550 19050 4650
$Comp
L power:+3.3V #PWR018
U 1 1 6200966C
P 19050 3950
AR Path="/6200966C" Ref="#PWR018"  Part="1" 
AR Path="/624FCD7A/6200966C" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200966C" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200966C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 3800 50  0001 C CNN
F 1 "+3.3V" H 19065 4123 50  0000 C CNN
F 2 "" H 19050 3950 50  0001 C CNN
F 3 "" H 19050 3950 50  0001 C CNN
	1    19050 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR017
U 1 1 62009672
P 18000 3950
AR Path="/62009672" Ref="#PWR017"  Part="1" 
AR Path="/624FCD7A/62009672" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009672" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009672" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 3800 50  0001 C CNN
F 1 "+3.3V" H 18015 4123 50  0000 C CNN
F 2 "" H 18000 3950 50  0001 C CNN
F 3 "" H 18000 3950 50  0001 C CNN
	1    18000 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 4550 18000 4800
Wire Wire Line
	18000 4250 18000 3950
Wire Wire Line
	19050 3950 19050 4250
Wire Wire Line
	19050 4650 19650 4650
Connection ~ 19050 4650
Wire Wire Line
	19050 4650 19050 4750
Entry Wire Line
	19650 4650 19750 4750
Text Label 19650 4650 2    50   ~ 0
Sensor06
Entry Bus Bus
	17750 5750 17650 5850
Entry Bus Bus
	15750 5750 15650 5850
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 62009682
P 14950 7250
AR Path="/61E3FF76/62009682" Ref="Q?"  Part="1" 
AR Path="/62009682" Ref="Q7"  Part="1" 
AR Path="/624FCD7A/62009682" Ref="Q?"  Part="1" 
AR Path="/61F602DC/62009682" Ref="Q?"  Part="1" 
AR Path="/61F60664/62009682" Ref="Q?"  Part="1" 
F 0 "Q?" H 15140 7296 50  0000 L CNN
F 1 "TEMT7100X01" H 15140 7205 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 15150 7350 50  0001 C CNN
F 3 "~" H 14950 7250 50  0001 C CNN
	1    14950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 62009688
P 14000 7250
AR Path="/61E3FF76/62009688" Ref="D?"  Part="1" 
AR Path="/62009688" Ref="D7"  Part="1" 
AR Path="/624FCD7A/62009688" Ref="D?"  Part="1" 
AR Path="/61F602DC/62009688" Ref="D?"  Part="1" 
AR Path="/61F60664/62009688" Ref="D?"  Part="1" 
F 0 "D?" V 14039 7132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 13948 7132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 14000 7250 50  0001 C CNN
F 3 "~" H 14000 7250 50  0001 C CNN
	1    14000 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6200968E
P 15050 7750
AR Path="/61E3FF76/6200968E" Ref="#PWR?"  Part="1" 
AR Path="/6200968E" Ref="#PWR048"  Part="1" 
AR Path="/624FCD7A/6200968E" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200968E" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200968E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 7500 50  0001 C CNN
F 1 "GND" H 15055 7577 50  0000 C CNN
F 2 "" H 15050 7750 50  0001 C CNN
F 3 "" H 15050 7750 50  0001 C CNN
	1    15050 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62009694
P 14000 6700
AR Path="/61E3FF76/62009694" Ref="R?"  Part="1" 
AR Path="/62009694" Ref="R14"  Part="1" 
AR Path="/624FCD7A/62009694" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009694" Ref="R?"  Part="1" 
AR Path="/61F60664/62009694" Ref="R?"  Part="1" 
F 0 "R?" H 14070 6746 50  0000 L CNN
F 1 "100" H 14070 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13930 6700 50  0001 C CNN
F 3 "~" H 14000 6700 50  0001 C CNN
	1    14000 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6200969A
P 14000 7750
AR Path="/61E3FF76/6200969A" Ref="#PWR?"  Part="1" 
AR Path="/6200969A" Ref="#PWR047"  Part="1" 
AR Path="/624FCD7A/6200969A" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200969A" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200969A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 7500 50  0001 C CNN
F 1 "GND" H 14005 7577 50  0000 C CNN
F 2 "" H 14000 7750 50  0001 C CNN
F 3 "" H 14000 7750 50  0001 C CNN
	1    14000 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 7750 15050 7450
Wire Wire Line
	14000 7750 14000 7400
$Comp
L Device:R R15
U 1 1 620096A2
P 15050 6700
AR Path="/620096A2" Ref="R15"  Part="1" 
AR Path="/624FCD7A/620096A2" Ref="R?"  Part="1" 
AR Path="/61F602DC/620096A2" Ref="R?"  Part="1" 
AR Path="/61F60664/620096A2" Ref="R?"  Part="1" 
F 0 "R?" H 15120 6746 50  0000 L CNN
F 1 "10k" H 15120 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14980 6700 50  0001 C CNN
F 3 "~" H 15050 6700 50  0001 C CNN
	1    15050 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 6850 15050 6950
$Comp
L power:+3.3V #PWR033
U 1 1 620096A9
P 15050 6250
AR Path="/620096A9" Ref="#PWR033"  Part="1" 
AR Path="/624FCD7A/620096A9" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620096A9" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620096A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 6100 50  0001 C CNN
F 1 "+3.3V" H 15065 6423 50  0000 C CNN
F 2 "" H 15050 6250 50  0001 C CNN
F 3 "" H 15050 6250 50  0001 C CNN
	1    15050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR032
U 1 1 620096AF
P 14000 6250
AR Path="/620096AF" Ref="#PWR032"  Part="1" 
AR Path="/624FCD7A/620096AF" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620096AF" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620096AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 6100 50  0001 C CNN
F 1 "+3.3V" H 14015 6423 50  0000 C CNN
F 2 "" H 14000 6250 50  0001 C CNN
F 3 "" H 14000 6250 50  0001 C CNN
	1    14000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 6850 14000 7100
Wire Wire Line
	14000 6550 14000 6250
Wire Wire Line
	15050 6250 15050 6550
Wire Wire Line
	15050 6950 15650 6950
Connection ~ 15050 6950
Wire Wire Line
	15050 6950 15050 7050
Text Label 15650 6950 2    50   ~ 0
Sensor07
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 620096BC
P 16950 7250
AR Path="/61E3FF76/620096BC" Ref="Q?"  Part="1" 
AR Path="/620096BC" Ref="Q8"  Part="1" 
AR Path="/624FCD7A/620096BC" Ref="Q?"  Part="1" 
AR Path="/61F602DC/620096BC" Ref="Q?"  Part="1" 
AR Path="/61F60664/620096BC" Ref="Q?"  Part="1" 
F 0 "Q?" H 17140 7296 50  0000 L CNN
F 1 "TEMT7100X01" H 17140 7205 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 17150 7350 50  0001 C CNN
F 3 "~" H 16950 7250 50  0001 C CNN
	1    16950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 620096C2
P 16000 7250
AR Path="/61E3FF76/620096C2" Ref="D?"  Part="1" 
AR Path="/620096C2" Ref="D8"  Part="1" 
AR Path="/624FCD7A/620096C2" Ref="D?"  Part="1" 
AR Path="/61F602DC/620096C2" Ref="D?"  Part="1" 
AR Path="/61F60664/620096C2" Ref="D?"  Part="1" 
F 0 "D?" V 16039 7132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 15948 7132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 16000 7250 50  0001 C CNN
F 3 "~" H 16000 7250 50  0001 C CNN
	1    16000 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620096C8
P 17050 7750
AR Path="/61E3FF76/620096C8" Ref="#PWR?"  Part="1" 
AR Path="/620096C8" Ref="#PWR050"  Part="1" 
AR Path="/624FCD7A/620096C8" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620096C8" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620096C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 7500 50  0001 C CNN
F 1 "GND" H 17055 7577 50  0000 C CNN
F 2 "" H 17050 7750 50  0001 C CNN
F 3 "" H 17050 7750 50  0001 C CNN
	1    17050 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 620096CE
P 16000 6700
AR Path="/61E3FF76/620096CE" Ref="R?"  Part="1" 
AR Path="/620096CE" Ref="R16"  Part="1" 
AR Path="/624FCD7A/620096CE" Ref="R?"  Part="1" 
AR Path="/61F602DC/620096CE" Ref="R?"  Part="1" 
AR Path="/61F60664/620096CE" Ref="R?"  Part="1" 
F 0 "R?" H 16070 6746 50  0000 L CNN
F 1 "100" H 16070 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15930 6700 50  0001 C CNN
F 3 "~" H 16000 6700 50  0001 C CNN
	1    16000 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620096D4
P 16000 7750
AR Path="/61E3FF76/620096D4" Ref="#PWR?"  Part="1" 
AR Path="/620096D4" Ref="#PWR049"  Part="1" 
AR Path="/624FCD7A/620096D4" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620096D4" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620096D4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 7500 50  0001 C CNN
F 1 "GND" H 16005 7577 50  0000 C CNN
F 2 "" H 16000 7750 50  0001 C CNN
F 3 "" H 16000 7750 50  0001 C CNN
	1    16000 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 7750 17050 7450
Wire Wire Line
	16000 7750 16000 7400
$Comp
L Device:R R17
U 1 1 620096DC
P 17050 6700
AR Path="/620096DC" Ref="R17"  Part="1" 
AR Path="/624FCD7A/620096DC" Ref="R?"  Part="1" 
AR Path="/61F602DC/620096DC" Ref="R?"  Part="1" 
AR Path="/61F60664/620096DC" Ref="R?"  Part="1" 
F 0 "R?" H 17120 6746 50  0000 L CNN
F 1 "10k" H 17120 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 6700 50  0001 C CNN
F 3 "~" H 17050 6700 50  0001 C CNN
	1    17050 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 6850 17050 6950
$Comp
L power:+3.3V #PWR035
U 1 1 620096E3
P 17050 6250
AR Path="/620096E3" Ref="#PWR035"  Part="1" 
AR Path="/624FCD7A/620096E3" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620096E3" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620096E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 6100 50  0001 C CNN
F 1 "+3.3V" H 17065 6423 50  0000 C CNN
F 2 "" H 17050 6250 50  0001 C CNN
F 3 "" H 17050 6250 50  0001 C CNN
	1    17050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 620096E9
P 16000 6250
AR Path="/620096E9" Ref="#PWR034"  Part="1" 
AR Path="/624FCD7A/620096E9" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620096E9" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620096E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 6100 50  0001 C CNN
F 1 "+3.3V" H 16015 6423 50  0000 C CNN
F 2 "" H 16000 6250 50  0001 C CNN
F 3 "" H 16000 6250 50  0001 C CNN
	1    16000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	16000 6850 16000 7100
Wire Wire Line
	16000 6550 16000 6250
Wire Wire Line
	17050 6250 17050 6550
Wire Wire Line
	17050 6950 17650 6950
Connection ~ 17050 6950
Wire Wire Line
	17050 6950 17050 7050
Text Label 17650 6950 2    50   ~ 0
Sensor08
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 620096F6
P 18950 7250
AR Path="/61E3FF76/620096F6" Ref="Q?"  Part="1" 
AR Path="/620096F6" Ref="Q9"  Part="1" 
AR Path="/624FCD7A/620096F6" Ref="Q?"  Part="1" 
AR Path="/61F602DC/620096F6" Ref="Q?"  Part="1" 
AR Path="/61F60664/620096F6" Ref="Q?"  Part="1" 
F 0 "Q?" H 19140 7296 50  0000 L CNN
F 1 "TEMT7100X01" H 19140 7205 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 19150 7350 50  0001 C CNN
F 3 "~" H 18950 7250 50  0001 C CNN
	1    18950 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 620096FC
P 18000 7250
AR Path="/61E3FF76/620096FC" Ref="D?"  Part="1" 
AR Path="/620096FC" Ref="D9"  Part="1" 
AR Path="/624FCD7A/620096FC" Ref="D?"  Part="1" 
AR Path="/61F602DC/620096FC" Ref="D?"  Part="1" 
AR Path="/61F60664/620096FC" Ref="D?"  Part="1" 
F 0 "D?" V 18039 7132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 17948 7132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 18000 7250 50  0001 C CNN
F 3 "~" H 18000 7250 50  0001 C CNN
	1    18000 7250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009702
P 19050 7750
AR Path="/61E3FF76/62009702" Ref="#PWR?"  Part="1" 
AR Path="/62009702" Ref="#PWR052"  Part="1" 
AR Path="/624FCD7A/62009702" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009702" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009702" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 7500 50  0001 C CNN
F 1 "GND" H 19055 7577 50  0000 C CNN
F 2 "" H 19050 7750 50  0001 C CNN
F 3 "" H 19050 7750 50  0001 C CNN
	1    19050 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62009708
P 18000 6700
AR Path="/61E3FF76/62009708" Ref="R?"  Part="1" 
AR Path="/62009708" Ref="R18"  Part="1" 
AR Path="/624FCD7A/62009708" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009708" Ref="R?"  Part="1" 
AR Path="/61F60664/62009708" Ref="R?"  Part="1" 
F 0 "R?" H 18070 6746 50  0000 L CNN
F 1 "100" H 18070 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17930 6700 50  0001 C CNN
F 3 "~" H 18000 6700 50  0001 C CNN
	1    18000 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6200970E
P 18000 7750
AR Path="/61E3FF76/6200970E" Ref="#PWR?"  Part="1" 
AR Path="/6200970E" Ref="#PWR051"  Part="1" 
AR Path="/624FCD7A/6200970E" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200970E" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200970E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 7500 50  0001 C CNN
F 1 "GND" H 18005 7577 50  0000 C CNN
F 2 "" H 18000 7750 50  0001 C CNN
F 3 "" H 18000 7750 50  0001 C CNN
	1    18000 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 7750 19050 7450
Wire Wire Line
	18000 7750 18000 7400
$Comp
L Device:R R19
U 1 1 62009716
P 19050 6700
AR Path="/62009716" Ref="R19"  Part="1" 
AR Path="/624FCD7A/62009716" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009716" Ref="R?"  Part="1" 
AR Path="/61F60664/62009716" Ref="R?"  Part="1" 
F 0 "R?" H 19120 6746 50  0000 L CNN
F 1 "10k" H 19120 6655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 18980 6700 50  0001 C CNN
F 3 "~" H 19050 6700 50  0001 C CNN
	1    19050 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 6850 19050 6950
$Comp
L power:+3.3V #PWR037
U 1 1 6200971D
P 19050 6250
AR Path="/6200971D" Ref="#PWR037"  Part="1" 
AR Path="/624FCD7A/6200971D" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200971D" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200971D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 6100 50  0001 C CNN
F 1 "+3.3V" H 19065 6423 50  0000 C CNN
F 2 "" H 19050 6250 50  0001 C CNN
F 3 "" H 19050 6250 50  0001 C CNN
	1    19050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR036
U 1 1 62009723
P 18000 6250
AR Path="/62009723" Ref="#PWR036"  Part="1" 
AR Path="/624FCD7A/62009723" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009723" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009723" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 6100 50  0001 C CNN
F 1 "+3.3V" H 18015 6423 50  0000 C CNN
F 2 "" H 18000 6250 50  0001 C CNN
F 3 "" H 18000 6250 50  0001 C CNN
	1    18000 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 6850 18000 7100
Wire Wire Line
	18000 6550 18000 6250
Wire Wire Line
	19050 6250 19050 6550
Wire Wire Line
	19050 6950 19650 6950
Connection ~ 19050 6950
Wire Wire Line
	19050 6950 19050 7050
Text Label 19650 6950 2    50   ~ 0
Sensor09
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 62009730
P 14950 9250
AR Path="/61E3FF76/62009730" Ref="Q?"  Part="1" 
AR Path="/62009730" Ref="Q11"  Part="1" 
AR Path="/624FCD7A/62009730" Ref="Q?"  Part="1" 
AR Path="/61F602DC/62009730" Ref="Q?"  Part="1" 
AR Path="/61F60664/62009730" Ref="Q?"  Part="1" 
F 0 "Q?" H 15140 9296 50  0000 L CNN
F 1 "TEMT7100X01" H 15140 9205 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 15150 9350 50  0001 C CNN
F 3 "~" H 14950 9250 50  0001 C CNN
	1    14950 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 62009736
P 14000 9250
AR Path="/61E3FF76/62009736" Ref="D?"  Part="1" 
AR Path="/62009736" Ref="D13"  Part="1" 
AR Path="/624FCD7A/62009736" Ref="D?"  Part="1" 
AR Path="/61F602DC/62009736" Ref="D?"  Part="1" 
AR Path="/61F60664/62009736" Ref="D?"  Part="1" 
F 0 "D?" V 14039 9132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 13948 9132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 14000 9250 50  0001 C CNN
F 3 "~" H 14000 9250 50  0001 C CNN
	1    14000 9250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6200973C
P 15050 9750
AR Path="/61E3FF76/6200973C" Ref="#PWR?"  Part="1" 
AR Path="/6200973C" Ref="#PWR069"  Part="1" 
AR Path="/624FCD7A/6200973C" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200973C" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200973C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 9500 50  0001 C CNN
F 1 "GND" H 15055 9577 50  0000 C CNN
F 2 "" H 15050 9750 50  0001 C CNN
F 3 "" H 15050 9750 50  0001 C CNN
	1    15050 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62009742
P 14000 8700
AR Path="/61E3FF76/62009742" Ref="R?"  Part="1" 
AR Path="/62009742" Ref="R25"  Part="1" 
AR Path="/624FCD7A/62009742" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009742" Ref="R?"  Part="1" 
AR Path="/61F60664/62009742" Ref="R?"  Part="1" 
F 0 "R?" H 14070 8746 50  0000 L CNN
F 1 "100" H 14070 8655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 13930 8700 50  0001 C CNN
F 3 "~" H 14000 8700 50  0001 C CNN
	1    14000 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009748
P 14000 9750
AR Path="/61E3FF76/62009748" Ref="#PWR?"  Part="1" 
AR Path="/62009748" Ref="#PWR068"  Part="1" 
AR Path="/624FCD7A/62009748" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009748" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009748" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 9500 50  0001 C CNN
F 1 "GND" H 14005 9577 50  0000 C CNN
F 2 "" H 14000 9750 50  0001 C CNN
F 3 "" H 14000 9750 50  0001 C CNN
	1    14000 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 9750 15050 9450
Wire Wire Line
	14000 9750 14000 9400
$Comp
L Device:R R26
U 1 1 62009750
P 15050 8700
AR Path="/62009750" Ref="R26"  Part="1" 
AR Path="/624FCD7A/62009750" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009750" Ref="R?"  Part="1" 
AR Path="/61F60664/62009750" Ref="R?"  Part="1" 
F 0 "R?" H 15120 8746 50  0000 L CNN
F 1 "10k" H 15120 8655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 14980 8700 50  0001 C CNN
F 3 "~" H 15050 8700 50  0001 C CNN
	1    15050 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	15050 8850 15050 8950
$Comp
L power:+3.3V #PWR057
U 1 1 62009757
P 15050 8250
AR Path="/62009757" Ref="#PWR057"  Part="1" 
AR Path="/624FCD7A/62009757" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009757" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009757" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 15050 8100 50  0001 C CNN
F 1 "+3.3V" H 15065 8423 50  0000 C CNN
F 2 "" H 15050 8250 50  0001 C CNN
F 3 "" H 15050 8250 50  0001 C CNN
	1    15050 8250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR056
U 1 1 6200975D
P 14000 8250
AR Path="/6200975D" Ref="#PWR056"  Part="1" 
AR Path="/624FCD7A/6200975D" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200975D" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200975D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14000 8100 50  0001 C CNN
F 1 "+3.3V" H 14015 8423 50  0000 C CNN
F 2 "" H 14000 8250 50  0001 C CNN
F 3 "" H 14000 8250 50  0001 C CNN
	1    14000 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	14000 8850 14000 9100
Wire Wire Line
	14000 8550 14000 8250
Wire Wire Line
	15050 8250 15050 8550
Wire Wire Line
	15050 8950 15650 8950
Connection ~ 15050 8950
Wire Wire Line
	15050 8950 15050 9050
Text Label 15650 8950 2    50   ~ 0
Sensor10
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 6200976A
P 16950 9250
AR Path="/61E3FF76/6200976A" Ref="Q?"  Part="1" 
AR Path="/6200976A" Ref="Q12"  Part="1" 
AR Path="/624FCD7A/6200976A" Ref="Q?"  Part="1" 
AR Path="/61F602DC/6200976A" Ref="Q?"  Part="1" 
AR Path="/61F60664/6200976A" Ref="Q?"  Part="1" 
F 0 "Q?" H 17140 9296 50  0000 L CNN
F 1 "TEMT7100X01" H 17140 9205 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 17150 9350 50  0001 C CNN
F 3 "~" H 16950 9250 50  0001 C CNN
	1    16950 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 62009770
P 16000 9250
AR Path="/61E3FF76/62009770" Ref="D?"  Part="1" 
AR Path="/62009770" Ref="D14"  Part="1" 
AR Path="/624FCD7A/62009770" Ref="D?"  Part="1" 
AR Path="/61F602DC/62009770" Ref="D?"  Part="1" 
AR Path="/61F60664/62009770" Ref="D?"  Part="1" 
F 0 "D?" V 16039 9132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 15948 9132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 16000 9250 50  0001 C CNN
F 3 "~" H 16000 9250 50  0001 C CNN
	1    16000 9250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009776
P 17050 9750
AR Path="/61E3FF76/62009776" Ref="#PWR?"  Part="1" 
AR Path="/62009776" Ref="#PWR071"  Part="1" 
AR Path="/624FCD7A/62009776" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009776" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009776" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 9500 50  0001 C CNN
F 1 "GND" H 17055 9577 50  0000 C CNN
F 2 "" H 17050 9750 50  0001 C CNN
F 3 "" H 17050 9750 50  0001 C CNN
	1    17050 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6200977C
P 16000 8700
AR Path="/61E3FF76/6200977C" Ref="R?"  Part="1" 
AR Path="/6200977C" Ref="R27"  Part="1" 
AR Path="/624FCD7A/6200977C" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200977C" Ref="R?"  Part="1" 
AR Path="/61F60664/6200977C" Ref="R?"  Part="1" 
F 0 "R?" H 16070 8746 50  0000 L CNN
F 1 "100" H 16070 8655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 15930 8700 50  0001 C CNN
F 3 "~" H 16000 8700 50  0001 C CNN
	1    16000 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62009782
P 16000 9750
AR Path="/61E3FF76/62009782" Ref="#PWR?"  Part="1" 
AR Path="/62009782" Ref="#PWR070"  Part="1" 
AR Path="/624FCD7A/62009782" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009782" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009782" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 9500 50  0001 C CNN
F 1 "GND" H 16005 9577 50  0000 C CNN
F 2 "" H 16000 9750 50  0001 C CNN
F 3 "" H 16000 9750 50  0001 C CNN
	1    16000 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 9750 17050 9450
Wire Wire Line
	16000 9750 16000 9400
$Comp
L Device:R R28
U 1 1 6200978A
P 17050 8700
AR Path="/6200978A" Ref="R28"  Part="1" 
AR Path="/624FCD7A/6200978A" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200978A" Ref="R?"  Part="1" 
AR Path="/61F60664/6200978A" Ref="R?"  Part="1" 
F 0 "R?" H 17120 8746 50  0000 L CNN
F 1 "10k" H 17120 8655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 16980 8700 50  0001 C CNN
F 3 "~" H 17050 8700 50  0001 C CNN
	1    17050 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	17050 8850 17050 8950
$Comp
L power:+3.3V #PWR059
U 1 1 62009791
P 17050 8250
AR Path="/62009791" Ref="#PWR059"  Part="1" 
AR Path="/624FCD7A/62009791" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009791" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009791" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 17050 8100 50  0001 C CNN
F 1 "+3.3V" H 17065 8423 50  0000 C CNN
F 2 "" H 17050 8250 50  0001 C CNN
F 3 "" H 17050 8250 50  0001 C CNN
	1    17050 8250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR058
U 1 1 62009797
P 16000 8250
AR Path="/62009797" Ref="#PWR058"  Part="1" 
AR Path="/624FCD7A/62009797" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009797" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009797" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16000 8100 50  0001 C CNN
F 1 "+3.3V" H 16015 8423 50  0000 C CNN
F 2 "" H 16000 8250 50  0001 C CNN
F 3 "" H 16000 8250 50  0001 C CNN
	1    16000 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	16000 8850 16000 9100
Wire Wire Line
	16000 8550 16000 8250
Wire Wire Line
	17050 8250 17050 8550
Wire Wire Line
	17050 8950 17650 8950
Connection ~ 17050 8950
Wire Wire Line
	17050 8950 17050 9050
Text Label 17650 8950 2    50   ~ 0
Sensor11
$Comp
L Device:Q_Photo_NPN Q?
U 1 1 620097A4
P 18950 9250
AR Path="/61E3FF76/620097A4" Ref="Q?"  Part="1" 
AR Path="/620097A4" Ref="Q13"  Part="1" 
AR Path="/624FCD7A/620097A4" Ref="Q?"  Part="1" 
AR Path="/61F602DC/620097A4" Ref="Q?"  Part="1" 
AR Path="/61F60664/620097A4" Ref="Q?"  Part="1" 
F 0 "Q?" H 19140 9296 50  0000 L CNN
F 1 "TEMT7100X01" H 19140 9205 50  0000 L CNN
F 2 "TEMT7100X01:TEMT7100X01" H 19150 9350 50  0001 C CNN
F 3 "~" H 18950 9250 50  0001 C CNN
	1    18950 9250
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 620097AA
P 18000 9250
AR Path="/61E3FF76/620097AA" Ref="D?"  Part="1" 
AR Path="/620097AA" Ref="D15"  Part="1" 
AR Path="/624FCD7A/620097AA" Ref="D?"  Part="1" 
AR Path="/61F602DC/620097AA" Ref="D?"  Part="1" 
AR Path="/61F60664/620097AA" Ref="D?"  Part="1" 
F 0 "D?" V 18039 9132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 17948 9132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 18000 9250 50  0001 C CNN
F 3 "~" H 18000 9250 50  0001 C CNN
	1    18000 9250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620097B0
P 19050 9750
AR Path="/61E3FF76/620097B0" Ref="#PWR?"  Part="1" 
AR Path="/620097B0" Ref="#PWR073"  Part="1" 
AR Path="/624FCD7A/620097B0" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620097B0" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620097B0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 9500 50  0001 C CNN
F 1 "GND" H 19055 9577 50  0000 C CNN
F 2 "" H 19050 9750 50  0001 C CNN
F 3 "" H 19050 9750 50  0001 C CNN
	1    19050 9750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 620097B6
P 18000 8700
AR Path="/61E3FF76/620097B6" Ref="R?"  Part="1" 
AR Path="/620097B6" Ref="R29"  Part="1" 
AR Path="/624FCD7A/620097B6" Ref="R?"  Part="1" 
AR Path="/61F602DC/620097B6" Ref="R?"  Part="1" 
AR Path="/61F60664/620097B6" Ref="R?"  Part="1" 
F 0 "R?" H 18070 8746 50  0000 L CNN
F 1 "100" H 18070 8655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 17930 8700 50  0001 C CNN
F 3 "~" H 18000 8700 50  0001 C CNN
	1    18000 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 620097BC
P 18000 9750
AR Path="/61E3FF76/620097BC" Ref="#PWR?"  Part="1" 
AR Path="/620097BC" Ref="#PWR072"  Part="1" 
AR Path="/624FCD7A/620097BC" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620097BC" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620097BC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 9500 50  0001 C CNN
F 1 "GND" H 18005 9577 50  0000 C CNN
F 2 "" H 18000 9750 50  0001 C CNN
F 3 "" H 18000 9750 50  0001 C CNN
	1    18000 9750
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 9750 19050 9450
Wire Wire Line
	18000 9750 18000 9400
$Comp
L Device:R R30
U 1 1 620097C4
P 19050 8700
AR Path="/620097C4" Ref="R30"  Part="1" 
AR Path="/624FCD7A/620097C4" Ref="R?"  Part="1" 
AR Path="/61F602DC/620097C4" Ref="R?"  Part="1" 
AR Path="/61F60664/620097C4" Ref="R?"  Part="1" 
F 0 "R?" H 19120 8746 50  0000 L CNN
F 1 "10k" H 19120 8655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 18980 8700 50  0001 C CNN
F 3 "~" H 19050 8700 50  0001 C CNN
	1    19050 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	19050 8850 19050 8950
$Comp
L power:+3.3V #PWR061
U 1 1 620097CB
P 19050 8250
AR Path="/620097CB" Ref="#PWR061"  Part="1" 
AR Path="/624FCD7A/620097CB" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620097CB" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620097CB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 19050 8100 50  0001 C CNN
F 1 "+3.3V" H 19065 8423 50  0000 C CNN
F 2 "" H 19050 8250 50  0001 C CNN
F 3 "" H 19050 8250 50  0001 C CNN
	1    19050 8250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR060
U 1 1 620097D1
P 18000 8250
AR Path="/620097D1" Ref="#PWR060"  Part="1" 
AR Path="/624FCD7A/620097D1" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620097D1" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620097D1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18000 8100 50  0001 C CNN
F 1 "+3.3V" H 18015 8423 50  0000 C CNN
F 2 "" H 18000 8250 50  0001 C CNN
F 3 "" H 18000 8250 50  0001 C CNN
	1    18000 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	18000 8850 18000 9100
Wire Wire Line
	18000 8550 18000 8250
Wire Wire Line
	19050 8250 19050 8550
Wire Wire Line
	19050 8950 19650 8950
Connection ~ 19050 8950
Wire Wire Line
	19050 8950 19050 9050
Text Label 19650 8950 2    50   ~ 0
Sensor12
Entry Wire Line
	15650 6950 15750 6850
Entry Wire Line
	17650 6950 17750 6850
Entry Wire Line
	19650 6950 19750 6850
Entry Wire Line
	15650 8950 15750 8850
Entry Wire Line
	19650 8950 19750 8850
Entry Wire Line
	17650 8950 17750 8850
Entry Bus Bus
	15750 5950 15650 5850
Entry Bus Bus
	17750 5950 17650 5850
Entry Bus Bus
	19750 5950 19650 5850
Text Label 8200 8850 2    50   ~ 0
Sensor02
Text Label 4800 9350 0    50   ~ 0
Sensor03
Text Label 4800 9250 0    50   ~ 0
Sensor04
Text Label 8200 7150 2    50   ~ 0
Sensor08
Entry Wire Line
	8300 7050 8200 7150
Entry Wire Line
	8200 7250 8300 7150
Entry Wire Line
	8200 7750 8300 7650
Entry Wire Line
	8200 7850 8300 7750
Text Label 4800 9150 0    50   ~ 0
Sensor09
Text Label 4800 9050 0    50   ~ 0
Sensor10
Entry Wire Line
	8200 8850 8300 8750
Entry Wire Line
	8200 8950 8300 8850
$Comp
L Connector_Generic:Conn_01x06 J3
U 1 1 620097FD
P 9250 7450
AR Path="/620097FD" Ref="J3"  Part="1" 
AR Path="/624FCD7A/620097FD" Ref="J?"  Part="1" 
AR Path="/61F602DC/620097FD" Ref="J?"  Part="1" 
AR Path="/61F60664/620097FD" Ref="J?"  Part="1" 
F 0 "J?" H 9250 6850 50  0000 C CNN
F 1 "FFC6" H 9250 6950 50  0000 C CNN
F 2 "FFC:Molex_0545480671_01x06_P0.5mm" H 9250 7450 50  0001 C CNN
F 3 "~" H 9250 7450 50  0001 C CNN
	1    9250 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR063
U 1 1 62009803
P 8950 7050
AR Path="/62009803" Ref="#PWR063"  Part="1" 
AR Path="/624FCD7A/62009803" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009803" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009803" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 6900 50  0001 C CNN
F 1 "+3.3V" H 8965 7223 50  0000 C CNN
F 2 "" H 8950 7050 50  0001 C CNN
F 3 "" H 8950 7050 50  0001 C CNN
	1    8950 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR066
U 1 1 6200980A
P 8950 7950
AR Path="/6200980A" Ref="#PWR066"  Part="1" 
AR Path="/624FCD7A/6200980A" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200980A" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200980A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 7700 50  0001 C CNN
F 1 "GND" H 8955 7777 50  0000 C CNN
F 2 "" H 8950 7950 50  0001 C CNN
F 3 "" H 8950 7950 50  0001 C CNN
	1    8950 7950
	1    0    0    -1  
$EndComp
Text Label 9000 12100 0    50   ~ 0
DRV1_EN
Text Label 9000 12200 0    50   ~ 0
DRV1_PN
Text Label 9000 12400 0    50   ~ 0
DRV2_EN
Text Label 9000 12300 0    50   ~ 0
DRV2_PN
Text Label 9000 13400 0    50   ~ 0
Rotary1
Text Label 9000 13200 0    50   ~ 0
Rotary2
Text Label 9000 13100 0    50   ~ 0
Rotary4
Text Label 9000 13300 0    50   ~ 0
Rotary8
Text Label 9000 13000 0    50   ~ 0
LED_R
Text Label 9000 12900 0    50   ~ 0
LED_G
Text Label 9000 12800 0    50   ~ 0
LED_B
Entry Wire Line
	8900 12200 9000 12300
Entry Wire Line
	8900 12300 9000 12400
Entry Wire Line
	8900 13000 9000 13100
Entry Wire Line
	8900 13100 9000 13200
Entry Wire Line
	8900 13200 9000 13300
Entry Wire Line
	8900 13300 9000 13400
Entry Wire Line
	8900 12800 9000 12900
Entry Wire Line
	8900 12900 9000 13000
Entry Wire Line
	8800 10150 8900 10250
Wire Bus Line
	5200 11200 8900 11200
Wire Wire Line
	7650 10250 7750 10250
Wire Wire Line
	7750 9050 7650 9050
Wire Wire Line
	7650 8450 7750 8450
Wire Wire Line
	7650 8550 7750 8550
Entry Wire Line
	8900 13400 9000 13500
Entry Wire Line
	8900 13500 9000 13600
Text Label 9000 13500 0    50   ~ 0
SW1
Text Label 9000 13600 0    50   ~ 0
SW2
Entry Wire Line
	8900 12700 9000 12800
Text Label 9000 12600 0    50   ~ 0
LED_Red
Entry Wire Line
	8900 12500 9000 12600
Text Label 9000 12700 0    50   ~ 0
LED_White
Entry Wire Line
	8900 12600 9000 12700
$Comp
L Device:R_Pack04 RN1
U 1 1 62009839
P 16750 11350
AR Path="/62009839" Ref="RN1"  Part="1" 
AR Path="/624FCD7A/62009839" Ref="RN?"  Part="1" 
AR Path="/61F602DC/62009839" Ref="RN?"  Part="1" 
AR Path="/61F60664/62009839" Ref="RN?"  Part="1" 
F 0 "RN?" H 16938 11396 50  0000 L CNN
F 1 "10k" H 16938 11305 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" V 17025 11350 50  0001 C CNN
F 3 "~" H 16750 11350 50  0001 C CNN
	1    16750 11350
	1    0    0    -1  
$EndComp
Wire Wire Line
	16350 11650 16550 11650
Wire Wire Line
	16350 11750 16650 11750
Wire Wire Line
	16350 11850 16750 11850
Wire Wire Line
	16550 11550 16550 11650
Connection ~ 16550 11650
Wire Wire Line
	16550 11650 17250 11650
Wire Wire Line
	16650 11750 16650 11550
Connection ~ 16650 11750
Wire Wire Line
	16650 11750 17250 11750
Wire Wire Line
	16750 11550 16750 11850
Connection ~ 16750 11850
Wire Wire Line
	16750 11850 17250 11850
Wire Wire Line
	16550 11050 16550 11150
Wire Wire Line
	16650 11150 16650 11050
Connection ~ 16650 11050
Wire Wire Line
	16650 11050 16550 11050
Wire Wire Line
	16750 11050 16750 11150
Wire Wire Line
	16750 11050 16650 11050
$Comp
L power:+3.3V #PWR076
U 1 1 62009851
P 16550 10950
AR Path="/62009851" Ref="#PWR076"  Part="1" 
AR Path="/624FCD7A/62009851" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009851" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009851" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 16550 10800 50  0001 C CNN
F 1 "+3.3V" H 16565 11123 50  0000 C CNN
F 2 "" H 16550 10950 50  0001 C CNN
F 3 "" H 16550 10950 50  0001 C CNN
	1    16550 10950
	1    0    0    -1  
$EndComp
Wire Wire Line
	16550 10950 16550 11050
Connection ~ 16550 11050
Wire Wire Line
	5150 13450 5850 13450
Wire Wire Line
	4750 12400 4750 12800
Connection ~ 4750 12400
Wire Wire Line
	4750 12400 5100 12400
Wire Wire Line
	4750 12300 4750 12400
Wire Wire Line
	5750 12400 5750 13250
Wire Wire Line
	5400 12400 5750 12400
$Comp
L Device:Ferrite_Bead FB2
U 1 1 62009860
P 5250 12400
AR Path="/62009860" Ref="FB2"  Part="1" 
AR Path="/624FCD7A/62009860" Ref="FB?"  Part="1" 
AR Path="/61F602DC/62009860" Ref="FB?"  Part="1" 
AR Path="/61F60664/62009860" Ref="FB?"  Part="1" 
F 0 "FB?" V 4976 12400 50  0000 C CNN
F 1 "470" V 5067 12400 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 5180 12400 50  0001 C CNN
F 3 "~" H 5250 12400 50  0001 C CNN
	1    5250 12400
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 12950 5150 13050
Connection ~ 5150 12950
Wire Wire Line
	5250 12950 5150 12950
Wire Wire Line
	5550 12950 5650 12950
$Comp
L Device:Ferrite_Bead FB3
U 1 1 6200986A
P 5400 12950
AR Path="/6200986A" Ref="FB3"  Part="1" 
AR Path="/624FCD7A/6200986A" Ref="FB?"  Part="1" 
AR Path="/61F602DC/6200986A" Ref="FB?"  Part="1" 
AR Path="/61F60664/6200986A" Ref="FB?"  Part="1" 
F 0 "FB?" V 5126 12950 50  0000 C CNN
F 1 "470" V 5217 12950 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 5330 12950 50  0001 C CNN
F 3 "~" H 5400 12950 50  0001 C CNN
	1    5400 12950
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 12750 5150 12950
Wire Wire Line
	4750 13100 4750 13450
Connection ~ 4750 13450
Wire Wire Line
	5650 12950 5650 13350
Connection ~ 5150 13450
Wire Wire Line
	5150 13350 5150 13450
Wire Wire Line
	4750 13450 5150 13450
$Comp
L Device:C C19
U 1 1 62009877
P 4750 12950
AR Path="/62009877" Ref="C19"  Part="1" 
AR Path="/624FCD7A/62009877" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009877" Ref="C?"  Part="1" 
AR Path="/61F60664/62009877" Ref="C?"  Part="1" 
F 0 "C?" H 4865 12996 50  0000 L CNN
F 1 "0.1u" H 4865 12905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4788 12800 50  0001 C CNN
F 3 "~" H 4750 12950 50  0001 C CNN
	1    4750 12950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 6200987D
P 5150 13200
AR Path="/6200987D" Ref="C21"  Part="1" 
AR Path="/624FCD7A/6200987D" Ref="C?"  Part="1" 
AR Path="/61F602DC/6200987D" Ref="C?"  Part="1" 
AR Path="/61F60664/6200987D" Ref="C?"  Part="1" 
F 0 "C?" H 5265 13246 50  0000 L CNN
F 1 "0.1u" H 5265 13155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5188 13050 50  0001 C CNN
F 3 "~" H 5150 13200 50  0001 C CNN
	1    5150 13200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 13550 4750 13450
$Comp
L power:GND #PWR094
U 1 1 62009884
P 4750 13550
AR Path="/62009884" Ref="#PWR094"  Part="1" 
AR Path="/624FCD7A/62009884" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009884" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009884" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 13300 50  0001 C CNN
F 1 "GND" H 4755 13377 50  0000 C CNN
F 2 "" H 4750 13550 50  0001 C CNN
F 3 "" H 4750 13550 50  0001 C CNN
	1    4750 13550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 6200988A
P 6050 13350
AR Path="/6200988A" Ref="J10"  Part="1" 
AR Path="/624FCD7A/6200988A" Ref="J?"  Part="1" 
AR Path="/61F602DC/6200988A" Ref="J?"  Part="1" 
AR Path="/61F60664/6200988A" Ref="J?"  Part="1" 
F 0 "J?" H 6130 13392 50  0000 L CNN
F 1 "PA3" H 6130 13301 50  0000 L CNN
F 2 "PA:PA_01x03" H 6050 13350 50  0001 C CNN
F 3 "~" H 6050 13350 50  0001 C CNN
	1    6050 13350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 13350 5850 13350
Wire Wire Line
	5750 13250 5850 13250
$Comp
L power:+3.3V #PWR089
U 1 1 62009892
P 5150 12750
AR Path="/62009892" Ref="#PWR089"  Part="1" 
AR Path="/624FCD7A/62009892" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009892" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009892" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 12600 50  0001 C CNN
F 1 "+3.3V" H 5165 12923 50  0000 C CNN
F 2 "" H 5150 12750 50  0001 C CNN
F 3 "" H 5150 12750 50  0001 C CNN
	1    5150 12750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR084
U 1 1 62009898
P 4750 12300
AR Path="/62009898" Ref="#PWR084"  Part="1" 
AR Path="/624FCD7A/62009898" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009898" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009898" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 12150 50  0001 C CNN
F 1 "+5V" H 4765 12473 50  0000 C CNN
F 2 "" H 4750 12300 50  0001 C CNN
F 3 "" H 4750 12300 50  0001 C CNN
	1    4750 12300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 6200989E
P 14950 11450
AR Path="/6200989E" Ref="RN2"  Part="1" 
AR Path="/624FCD7A/6200989E" Ref="RN?"  Part="1" 
AR Path="/61F602DC/6200989E" Ref="RN?"  Part="1" 
AR Path="/61F60664/6200989E" Ref="RN?"  Part="1" 
F 0 "RN?" H 15138 11496 50  0000 L CNN
F 1 "10k" H 15138 11405 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" V 15225 11450 50  0001 C CNN
F 3 "~" H 14950 11450 50  0001 C CNN
	1    14950 11450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14100 11950 14750 11950
Wire Wire Line
	14100 12050 14850 12050
Wire Wire Line
	14100 13150 14950 13150
Wire Wire Line
	14100 13250 15050 13250
Wire Wire Line
	14750 11650 14750 11950
Connection ~ 14750 11950
Wire Wire Line
	14750 11950 15200 11950
Wire Wire Line
	14850 11650 14850 12050
Connection ~ 14850 12050
Wire Wire Line
	14850 12050 15200 12050
Wire Wire Line
	14950 11650 14950 13150
Connection ~ 14950 13150
Wire Wire Line
	14950 13150 15200 13150
Wire Wire Line
	15050 11650 15050 13250
Connection ~ 15050 13250
Wire Wire Line
	15050 13250 15200 13250
Wire Wire Line
	14750 11250 14750 11150
Wire Wire Line
	14750 11150 14850 11150
Wire Wire Line
	15050 11150 15050 11250
Wire Wire Line
	14850 11250 14850 11150
Connection ~ 14850 11150
Wire Wire Line
	14850 11150 14950 11150
Wire Wire Line
	14950 11150 14950 11250
Connection ~ 14950 11150
Wire Wire Line
	14950 11150 15050 11150
Wire Wire Line
	14750 11050 14750 11150
Connection ~ 14750 11150
Wire Wire Line
	6750 6300 6750 6950
$Comp
L Device:C C2
U 1 1 620098C0
P 5950 5500
AR Path="/620098C0" Ref="C2"  Part="1" 
AR Path="/624FCD7A/620098C0" Ref="C?"  Part="1" 
AR Path="/61F602DC/620098C0" Ref="C?"  Part="1" 
AR Path="/61F60664/620098C0" Ref="C?"  Part="1" 
F 0 "C?" H 6065 5546 50  0000 L CNN
F 1 "0.1u" H 6065 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5988 5350 50  0001 C CNN
F 3 "~" H 5950 5500 50  0001 C CNN
	1    5950 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 620098C6
P 5950 5750
AR Path="/620098C6" Ref="#PWR027"  Part="1" 
AR Path="/624FCD7A/620098C6" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620098C6" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620098C6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 5500 50  0001 C CNN
F 1 "GND" H 5955 5577 50  0000 C CNN
F 2 "" H 5950 5750 50  0001 C CNN
F 3 "" H 5950 5750 50  0001 C CNN
	1    5950 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5750 5950 5650
$Comp
L Device:C C1
U 1 1 620098CD
P 5550 5500
AR Path="/620098CD" Ref="C1"  Part="1" 
AR Path="/624FCD7A/620098CD" Ref="C?"  Part="1" 
AR Path="/61F602DC/620098CD" Ref="C?"  Part="1" 
AR Path="/61F60664/620098CD" Ref="C?"  Part="1" 
F 0 "C?" H 5665 5546 50  0000 L CNN
F 1 "0.1u" H 5665 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5588 5350 50  0001 C CNN
F 3 "~" H 5550 5500 50  0001 C CNN
	1    5550 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 620098D3
P 5550 5750
AR Path="/620098D3" Ref="#PWR026"  Part="1" 
AR Path="/624FCD7A/620098D3" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620098D3" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620098D3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 5500 50  0001 C CNN
F 1 "GND" H 5555 5577 50  0000 C CNN
F 2 "" H 5550 5750 50  0001 C CNN
F 3 "" H 5550 5750 50  0001 C CNN
	1    5550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5750 5550 5650
Wire Wire Line
	6750 5350 6750 5250
Wire Wire Line
	6750 5250 6350 5250
Wire Wire Line
	5550 5250 5550 5350
Wire Wire Line
	5950 5350 5950 5250
Connection ~ 5950 5250
Wire Wire Line
	5950 5250 5550 5250
Wire Wire Line
	6350 5250 6350 5350
Connection ~ 6350 5250
Wire Wire Line
	6350 5250 5950 5250
Wire Wire Line
	6850 6850 6950 6850
Wire Wire Line
	6950 6850 6950 6950
Wire Wire Line
	6850 6850 6850 6950
Wire Wire Line
	6950 6850 7050 6850
Wire Wire Line
	7050 6850 7050 6950
Connection ~ 6950 6850
Wire Wire Line
	7050 6850 7150 6850
Wire Wire Line
	7150 6850 7150 6950
Connection ~ 7050 6850
$Comp
L power:+3.3V #PWR019
U 1 1 620098EC
P 5550 5150
AR Path="/620098EC" Ref="#PWR019"  Part="1" 
AR Path="/624FCD7A/620098EC" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620098EC" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620098EC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5550 5000 50  0001 C CNN
F 1 "+3.3V" H 5565 5323 50  0000 C CNN
F 2 "" H 5550 5150 50  0001 C CNN
F 3 "" H 5550 5150 50  0001 C CNN
	1    5550 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5150 5550 5250
Connection ~ 5550 5250
$Comp
L power:+3.3V #PWR031
U 1 1 620098F4
P 5950 6200
AR Path="/620098F4" Ref="#PWR031"  Part="1" 
AR Path="/624FCD7A/620098F4" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620098F4" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620098F4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 6050 50  0001 C CNN
F 1 "+3.3V" H 5965 6373 50  0000 C CNN
F 2 "" H 5950 6200 50  0001 C CNN
F 3 "" H 5950 6200 50  0001 C CNN
	1    5950 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6200 5950 6300
Connection ~ 5950 6300
Wire Wire Line
	7250 6300 7250 6950
$Comp
L Device:Ferrite_Bead FB1
U 1 1 620098FD
P 7800 6050
AR Path="/620098FD" Ref="FB1"  Part="1" 
AR Path="/624FCD7A/620098FD" Ref="FB?"  Part="1" 
AR Path="/61F602DC/620098FD" Ref="FB?"  Part="1" 
AR Path="/61F60664/620098FD" Ref="FB?"  Part="1" 
F 0 "FB?" H 7937 6096 50  0000 L CNN
F 1 "470" H 7937 6005 50  0000 L CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 7730 6050 50  0001 C CNN
F 3 "~" H 7800 6050 50  0001 C CNN
	1    7800 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 6200 7800 6300
Connection ~ 7800 6300
$Comp
L power:+3.3V #PWR030
U 1 1 62009905
P 7800 5800
AR Path="/62009905" Ref="#PWR030"  Part="1" 
AR Path="/624FCD7A/62009905" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009905" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009905" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7800 5650 50  0001 C CNN
F 1 "+3.3V" H 7815 5973 50  0000 C CNN
F 2 "" H 7800 5800 50  0001 C CNN
F 3 "" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5800 7800 5900
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 6200990C
P 12750 7300
AR Path="/6200990C" Ref="J1"  Part="1" 
AR Path="/624FCD7A/6200990C" Ref="J?"  Part="1" 
AR Path="/61F602DC/6200990C" Ref="J?"  Part="1" 
AR Path="/61F60664/6200990C" Ref="J?"  Part="1" 
F 0 "J?" H 12830 7342 50  0000 L CNN
F 1 "SH3" H 12830 7251 50  0000 L CNN
F 2 "SH:SH_01x03" H 12750 7300 50  0001 C CNN
F 3 "~" H 12750 7300 50  0001 C CNN
	1    12750 7300
	1    0    0    -1  
$EndComp
Text GLabel 11450 7700 0    50   Input ~ 0
SubSens2
$Comp
L power:+5V #PWR039
U 1 1 62009913
P 12450 6700
AR Path="/62009913" Ref="#PWR039"  Part="1" 
AR Path="/624FCD7A/62009913" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009913" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009913" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12450 6550 50  0001 C CNN
F 1 "+5V" H 12465 6873 50  0000 C CNN
F 2 "" H 12450 6700 50  0001 C CNN
F 3 "" H 12450 6700 50  0001 C CNN
	1    12450 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR053
U 1 1 62009919
P 12450 7850
AR Path="/62009919" Ref="#PWR053"  Part="1" 
AR Path="/624FCD7A/62009919" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009919" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009919" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12450 7600 50  0001 C CNN
F 1 "GND" H 12455 7677 50  0000 C CNN
F 2 "" H 12450 7850 50  0001 C CNN
F 3 "" H 12450 7850 50  0001 C CNN
	1    12450 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 7400 12550 7400
Wire Wire Line
	12550 7200 12450 7200
$Comp
L power:+3.3V #PWR079
U 1 1 62009921
P 18600 11350
AR Path="/62009921" Ref="#PWR079"  Part="1" 
AR Path="/624FCD7A/62009921" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009921" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009921" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18600 11200 50  0001 C CNN
F 1 "+3.3V" H 18615 11523 50  0000 C CNN
F 2 "" H 18600 11350 50  0001 C CNN
F 3 "" H 18600 11350 50  0001 C CNN
	1    18600 11350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR087
U 1 1 62009927
P 18600 12450
AR Path="/62009927" Ref="#PWR087"  Part="1" 
AR Path="/624FCD7A/62009927" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009927" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009927" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 18600 12300 50  0001 C CNN
F 1 "+3.3V" H 18615 12623 50  0000 C CNN
F 2 "" H 18600 12450 50  0001 C CNN
F 3 "" H 18600 12450 50  0001 C CNN
	1    18600 12450
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6200992D
P 7400 6200
AR Path="/6200992D" Ref="#FLG01"  Part="1" 
AR Path="/624FCD7A/6200992D" Ref="#FLG?"  Part="1" 
AR Path="/61F602DC/6200992D" Ref="#FLG?"  Part="1" 
AR Path="/61F60664/6200992D" Ref="#FLG?"  Part="1" 
F 0 "#FLG?" H 7400 6275 50  0001 C CNN
F 1 "PWR_FLAG" H 7400 6373 50  0000 C CNN
F 2 "" H 7400 6200 50  0001 C CNN
F 3 "~" H 7400 6200 50  0001 C CNN
	1    7400 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6200 7400 6300
Entry Bus Bus
	19750 5750 19650 5850
Wire Wire Line
	7250 6300 7400 6300
Text Notes 13400 10750 0    200  ~ 0
ENCORDER
$Comp
L power:+5V #PWR078
U 1 1 62009937
P 13200 11250
AR Path="/62009937" Ref="#PWR078"  Part="1" 
AR Path="/624FCD7A/62009937" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009937" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009937" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13200 11100 50  0001 C CNN
F 1 "+5V" H 13215 11423 50  0000 C CNN
F 2 "" H 13200 11250 50  0001 C CNN
F 3 "" H 13200 11250 50  0001 C CNN
	1    13200 11250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR085
U 1 1 6200993D
P 13200 12450
AR Path="/6200993D" Ref="#PWR085"  Part="1" 
AR Path="/624FCD7A/6200993D" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200993D" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200993D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 13200 12300 50  0001 C CNN
F 1 "+5V" H 13215 12623 50  0000 C CNN
F 2 "" H 13200 12450 50  0001 C CNN
F 3 "" H 13200 12450 50  0001 C CNN
	1    13200 12450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR077
U 1 1 62009943
P 14750 11050
AR Path="/62009943" Ref="#PWR077"  Part="1" 
AR Path="/624FCD7A/62009943" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009943" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009943" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 14750 10900 50  0001 C CNN
F 1 "+5V" H 14765 11223 50  0000 C CNN
F 2 "" H 14750 11050 50  0001 C CNN
F 3 "" H 14750 11050 50  0001 C CNN
	1    14750 11050
	1    0    0    -1  
$EndComp
Text Notes 10950 6250 0    200  ~ 0
SideSensor
Text Notes 15400 1500 0    200  ~ 0
ForegroundSensor
Text Notes 16800 10900 0    200  ~ 0
InertialSensor
Text Notes 4450 11950 0    200  ~ 0
PowerSupply
Text Notes 11550 10500 0    200  ~ 0
SWD
Text Notes 11550 11900 0    200  ~ 0
I2C
Text Notes 11550 13100 0    200  ~ 0
USART
$Comp
L OSC:ASTMLPA-16MHz-LJ-E-T U1
U 1 1 62009950
P 4250 7600
AR Path="/62009950" Ref="U1"  Part="1" 
AR Path="/624FCD7A/62009950" Ref="U?"  Part="1" 
AR Path="/61F602DC/62009950" Ref="U?"  Part="1" 
AR Path="/61F60664/62009950" Ref="U?"  Part="1" 
F 0 "U?" V 3600 7550 50  0000 L CNN
F 1 "ASTMLPA-16MHz-LJ-E-T" V 3700 7100 50  0000 L CNN
F 2 "osc:ASTMLPA-16.000MHz-LJ-E-T" H 4250 8000 50  0001 C CNN
F 3 "" H 4250 8000 50  0001 C CNN
	1    4250 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR055
U 1 1 62009956
P 4250 8100
AR Path="/62009956" Ref="#PWR055"  Part="1" 
AR Path="/624FCD7A/62009956" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009956" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009956" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 7850 50  0001 C CNN
F 1 "GND" H 4255 7927 50  0000 C CNN
F 2 "" H 4250 8100 50  0001 C CNN
F 3 "" H 4250 8100 50  0001 C CNN
	1    4250 8100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR044
U 1 1 6200995C
P 4250 7100
AR Path="/6200995C" Ref="#PWR044"  Part="1" 
AR Path="/624FCD7A/6200995C" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/6200995C" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/6200995C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 6950 50  0001 C CNN
F 1 "+3.3V" H 4265 7273 50  0000 C CNN
F 2 "" H 4250 7100 50  0001 C CNN
F 3 "" H 4250 7100 50  0001 C CNN
	1    4250 7100
	1    0    0    -1  
$EndComp
NoConn ~ 3800 7600
Connection ~ 10050 7850
Wire Wire Line
	10050 7750 10050 7850
$Comp
L power:+3.3V #PWR046
U 1 1 62009965
P 10050 7750
AR Path="/62009965" Ref="#PWR046"  Part="1" 
AR Path="/624FCD7A/62009965" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009965" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009965" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10050 7600 50  0001 C CNN
F 1 "+3.3V" H 10065 7923 50  0000 C CNN
F 2 "" H 10050 7750 50  0001 C CNN
F 3 "" H 10050 7750 50  0001 C CNN
	1    10050 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 8850 10050 8950
Wire Wire Line
	9650 8650 9750 8650
Connection ~ 9650 8650
Wire Wire Line
	9650 8650 9650 8850
Wire Wire Line
	9550 8650 9650 8650
Wire Wire Line
	9650 9150 9650 9350
Wire Wire Line
	10050 9350 10050 9250
$Comp
L power:GND #PWR065
U 1 1 62009972
P 10050 9350
AR Path="/62009972" Ref="#PWR065"  Part="1" 
AR Path="/624FCD7A/62009972" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009972" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009972" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10050 9100 50  0001 C CNN
F 1 "GND" H 10055 9177 50  0000 C CNN
F 2 "" H 10050 9350 50  0001 C CNN
F 3 "" H 10050 9350 50  0001 C CNN
	1    10050 9350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR064
U 1 1 62009978
P 9650 9350
AR Path="/62009978" Ref="#PWR064"  Part="1" 
AR Path="/624FCD7A/62009978" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009978" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009978" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9650 9100 50  0001 C CNN
F 1 "GND" H 9655 9177 50  0000 C CNN
F 2 "" H 9650 9350 50  0001 C CNN
F 3 "" H 9650 9350 50  0001 C CNN
	1    9650 9350
	1    0    0    -1  
$EndComp
Connection ~ 10050 8350
Wire Wire Line
	10050 8450 10050 8350
Wire Wire Line
	9850 8350 9850 8250
Wire Wire Line
	10050 8200 10050 8350
Wire Wire Line
	10050 7850 10050 8000
Wire Wire Line
	9850 7950 9850 7850
$Comp
L Device:Buzzer BZ?
U 1 1 62009984
P 10250 8100
AR Path="/61EDC519/62009984" Ref="BZ?"  Part="1" 
AR Path="/62009984" Ref="BZ1"  Part="1" 
AR Path="/624FCD7A/62009984" Ref="BZ?"  Part="1" 
AR Path="/61F602DC/62009984" Ref="BZ?"  Part="1" 
AR Path="/61F60664/62009984" Ref="BZ?"  Part="1" 
F 0 "BZ?" H 10403 8129 50  0000 L CNN
F 1 "TE044003-4" H 10403 8038 50  0000 L CNN
F 2 "Buzzer:TE044003-4" V 10225 8200 50  0001 C CNN
F 3 "~" V 10225 8200 50  0001 C CNN
	1    10250 8100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6200998A
P 10050 9100
AR Path="/61EDC519/6200998A" Ref="R?"  Part="1" 
AR Path="/6200998A" Ref="R33"  Part="1" 
AR Path="/624FCD7A/6200998A" Ref="R?"  Part="1" 
AR Path="/61F602DC/6200998A" Ref="R?"  Part="1" 
AR Path="/61F60664/6200998A" Ref="R?"  Part="1" 
F 0 "R?" H 9980 9054 50  0000 R CNN
F 1 "36" H 9980 9145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9980 9100 50  0001 C CNN
F 3 "~" H 10050 9100 50  0001 C CNN
	1    10050 9100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 62009990
P 9650 9000
AR Path="/61EDC519/62009990" Ref="R?"  Part="1" 
AR Path="/62009990" Ref="R32"  Part="1" 
AR Path="/624FCD7A/62009990" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009990" Ref="R?"  Part="1" 
AR Path="/61F60664/62009990" Ref="R?"  Part="1" 
F 0 "R?" H 9580 8954 50  0000 R CNN
F 1 "10k" H 9580 9045 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9580 9000 50  0001 C CNN
F 3 "~" H 9650 9000 50  0001 C CNN
	1    9650 9000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 62009996
P 9400 8650
AR Path="/61EDC519/62009996" Ref="R?"  Part="1" 
AR Path="/62009996" Ref="R23"  Part="1" 
AR Path="/624FCD7A/62009996" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009996" Ref="R?"  Part="1" 
AR Path="/61F60664/62009996" Ref="R?"  Part="1" 
F 0 "R?" V 9193 8650 50  0000 C CNN
F 1 "100" V 9284 8650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9330 8650 50  0001 C CNN
F 3 "~" H 9400 8650 50  0001 C CNN
	1    9400 8650
	0    1    1    0   
$EndComp
$Comp
L Device:D D11
U 1 1 6200999C
P 9850 8100
AR Path="/6200999C" Ref="D11"  Part="1" 
AR Path="/624FCD7A/6200999C" Ref="D?"  Part="1" 
AR Path="/61F602DC/6200999C" Ref="D?"  Part="1" 
AR Path="/61F60664/6200999C" Ref="D?"  Part="1" 
F 0 "D?" H 9750 7900 50  0000 L CNN
F 1 "RB751S40-AU_R1_000A1" H 9350 8000 50  0000 L CNN
F 2 "original:SOD-523" H 9850 8100 50  0001 C CNN
F 3 "~" H 9850 8100 50  0001 C CNN
	1    9850 8100
	0    1    1    0   
$EndComp
Text Notes 10100 7850 0    50   ~ 0
90mA
Wire Wire Line
	10150 8000 10050 8000
Wire Wire Line
	10050 8200 10150 8200
$Comp
L Transistor_FET:2N7002 Q10
U 1 1 620099A5
P 9950 8650
AR Path="/620099A5" Ref="Q10"  Part="1" 
AR Path="/624FCD7A/620099A5" Ref="Q?"  Part="1" 
AR Path="/61F602DC/620099A5" Ref="Q?"  Part="1" 
AR Path="/61F60664/620099A5" Ref="Q?"  Part="1" 
F 0 "Q?" H 10155 8696 50  0000 L CNN
F 1 "2N7002T" H 10155 8605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-523" H 10150 8575 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 9950 8650 50  0001 L CNN
	1    9950 8650
	1    0    0    -1  
$EndComp
Text Notes 4300 7150 0    50   ~ 0
6.2mA\n
Text Notes 6850 6750 0    50   ~ 0
240mA\n
Text Notes 9450 7450 0    200  ~ 0
Buzzer
Text Notes 4000 7100 2    200  ~ 0
Oscillator
Connection ~ 5650 7950
Wire Wire Line
	5300 7950 5650 7950
Wire Wire Line
	5650 7550 6250 7550
Wire Wire Line
	6050 7650 6250 7650
Text Notes 14800 11100 0    50   ~ 0
2mA
Text Notes 16600 11000 0    50   ~ 0
1.5mA
Text Notes 14050 2000 0    50   ~ 0
20mA
Wire Wire Line
	12000 6900 12000 6800
Wire Wire Line
	11650 7400 11650 7700
Wire Wire Line
	11650 6800 11650 7100
$Comp
L Device:R R?
U 1 1 620099B9
P 11650 7250
AR Path="/61EC4080/620099B9" Ref="R?"  Part="1" 
AR Path="/620099B9" Ref="R21"  Part="1" 
AR Path="/624FCD7A/620099B9" Ref="R?"  Part="1" 
AR Path="/61F602DC/620099B9" Ref="R?"  Part="1" 
AR Path="/61F60664/620099B9" Ref="R?"  Part="1" 
F 0 "R?" H 11720 7296 50  0000 L CNN
F 1 "10k" H 11720 7205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11580 7250 50  0001 C CNN
F 3 "~" H 11650 7250 50  0001 C CNN
	1    11650 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 7200 12000 7300
$Comp
L Device:R R?
U 1 1 620099C0
P 12000 7050
AR Path="/61EC4080/620099C0" Ref="R?"  Part="1" 
AR Path="/620099C0" Ref="R20"  Part="1" 
AR Path="/624FCD7A/620099C0" Ref="R?"  Part="1" 
AR Path="/61F602DC/620099C0" Ref="R?"  Part="1" 
AR Path="/61F60664/620099C0" Ref="R?"  Part="1" 
F 0 "R?" H 12070 7096 50  0000 L CNN
F 1 "470" H 12070 7005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11930 7050 50  0001 C CNN
F 3 "~" H 12000 7050 50  0001 C CNN
	1    12000 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 7600 12000 7700
$Comp
L Device:LED D?
U 1 1 620099C7
P 12000 7450
AR Path="/61EC4080/620099C7" Ref="D?"  Part="1" 
AR Path="/620099C7" Ref="D10"  Part="1" 
AR Path="/624FCD7A/620099C7" Ref="D?"  Part="1" 
AR Path="/61F602DC/620099C7" Ref="D?"  Part="1" 
AR Path="/61F60664/620099C7" Ref="D?"  Part="1" 
F 0 "D?" V 12039 7332 50  0000 R CNN
F 1 "SMLEN3WBC8W1" V 11948 7332 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 12000 7450 50  0001 C CNN
F 3 "~" H 12000 7450 50  0001 C CNN
	1    12000 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12450 7400 12450 7850
Wire Wire Line
	12350 7300 12550 7300
Wire Wire Line
	12350 7700 12350 7300
Wire Wire Line
	12450 6700 12450 6800
Wire Wire Line
	12450 6800 12000 6800
Connection ~ 12450 6800
Wire Wire Line
	12450 6800 12450 7200
Connection ~ 12000 6800
Connection ~ 12000 7700
Wire Wire Line
	12000 7700 12350 7700
Wire Wire Line
	11650 6800 12000 6800
Wire Wire Line
	11650 7700 12000 7700
Wire Wire Line
	11450 7700 11650 7700
Connection ~ 11650 7700
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 620099DB
P 12750 8900
AR Path="/620099DB" Ref="J2"  Part="1" 
AR Path="/624FCD7A/620099DB" Ref="J?"  Part="1" 
AR Path="/61F602DC/620099DB" Ref="J?"  Part="1" 
AR Path="/61F60664/620099DB" Ref="J?"  Part="1" 
F 0 "J?" H 12830 8942 50  0000 L CNN
F 1 "SH3" H 12830 8851 50  0000 L CNN
F 2 "SH:SH_01x03" H 12750 8900 50  0001 C CNN
F 3 "~" H 12750 8900 50  0001 C CNN
	1    12750 8900
	1    0    0    -1  
$EndComp
Text GLabel 11450 9300 0    50   Input ~ 0
SubSens1
$Comp
L power:+5V #PWR062
U 1 1 620099E2
P 12450 8300
AR Path="/620099E2" Ref="#PWR062"  Part="1" 
AR Path="/624FCD7A/620099E2" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620099E2" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620099E2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12450 8150 50  0001 C CNN
F 1 "+5V" H 12465 8473 50  0000 C CNN
F 2 "" H 12450 8300 50  0001 C CNN
F 3 "" H 12450 8300 50  0001 C CNN
	1    12450 8300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR067
U 1 1 620099E8
P 12450 9450
AR Path="/620099E8" Ref="#PWR067"  Part="1" 
AR Path="/624FCD7A/620099E8" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/620099E8" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/620099E8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 12450 9200 50  0001 C CNN
F 1 "GND" H 12455 9277 50  0000 C CNN
F 2 "" H 12450 9450 50  0001 C CNN
F 3 "" H 12450 9450 50  0001 C CNN
	1    12450 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12450 9000 12550 9000
Wire Wire Line
	12550 8800 12450 8800
Wire Wire Line
	12000 8500 12000 8400
Wire Wire Line
	11650 9000 11650 9300
Wire Wire Line
	11650 8400 11650 8700
$Comp
L Device:R R?
U 1 1 620099F3
P 11650 8850
AR Path="/61EC4080/620099F3" Ref="R?"  Part="1" 
AR Path="/620099F3" Ref="R31"  Part="1" 
AR Path="/624FCD7A/620099F3" Ref="R?"  Part="1" 
AR Path="/61F602DC/620099F3" Ref="R?"  Part="1" 
AR Path="/61F60664/620099F3" Ref="R?"  Part="1" 
F 0 "R?" H 11720 8896 50  0000 L CNN
F 1 "10k" H 11720 8805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11580 8850 50  0001 C CNN
F 3 "~" H 11650 8850 50  0001 C CNN
	1    11650 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 8800 12000 8900
$Comp
L Device:R R?
U 1 1 620099FA
P 12000 8650
AR Path="/61EC4080/620099FA" Ref="R?"  Part="1" 
AR Path="/620099FA" Ref="R24"  Part="1" 
AR Path="/624FCD7A/620099FA" Ref="R?"  Part="1" 
AR Path="/61F602DC/620099FA" Ref="R?"  Part="1" 
AR Path="/61F60664/620099FA" Ref="R?"  Part="1" 
F 0 "R?" H 12070 8696 50  0000 L CNN
F 1 "470" H 12070 8605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 11930 8650 50  0001 C CNN
F 3 "~" H 12000 8650 50  0001 C CNN
	1    12000 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 9200 12000 9300
$Comp
L Device:LED D?
U 1 1 62009A01
P 12000 9050
AR Path="/61EC4080/62009A01" Ref="D?"  Part="1" 
AR Path="/62009A01" Ref="D12"  Part="1" 
AR Path="/624FCD7A/62009A01" Ref="D?"  Part="1" 
AR Path="/61F602DC/62009A01" Ref="D?"  Part="1" 
AR Path="/61F60664/62009A01" Ref="D?"  Part="1" 
F 0 "D?" V 12039 8932 50  0000 R CNN
F 1 "SMLEN3WBC8W1" V 11948 8932 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 12000 9050 50  0001 C CNN
F 3 "~" H 12000 9050 50  0001 C CNN
	1    12000 9050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12450 9000 12450 9450
Wire Wire Line
	12350 8900 12550 8900
Wire Wire Line
	12350 9300 12350 8900
Wire Wire Line
	12450 8300 12450 8400
Wire Wire Line
	12450 8400 12000 8400
Connection ~ 12450 8400
Wire Wire Line
	12450 8400 12450 8800
Connection ~ 12000 8400
Connection ~ 12000 9300
Wire Wire Line
	12000 9300 12350 9300
Wire Wire Line
	11650 8400 12000 8400
Wire Wire Line
	11650 9300 12000 9300
Wire Wire Line
	11450 9300 11650 9300
Connection ~ 11650 9300
Text Notes 12500 8350 0    50   ~ 0
36mA
Text Notes 12500 6750 0    50   ~ 0
36mA
Entry Wire Line
	8900 13600 9000 13700
Text Label 9000 13700 0    50   ~ 0
SW3
Wire Wire Line
	9850 7850 10050 7850
Wire Wire Line
	9850 8350 10050 8350
$Comp
L Device:C C10
U 1 1 62009A1B
P 3250 7600
AR Path="/62009A1B" Ref="C10"  Part="1" 
AR Path="/624FCD7A/62009A1B" Ref="C?"  Part="1" 
AR Path="/61F602DC/62009A1B" Ref="C?"  Part="1" 
AR Path="/61F60664/62009A1B" Ref="C?"  Part="1" 
F 0 "C?" H 3365 7646 50  0000 L CNN
F 1 "0.1u" H 3365 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 7450 50  0001 C CNN
F 3 "~" H 3250 7600 50  0001 C CNN
	1    3250 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7900 4250 8000
Wire Wire Line
	4250 8000 3250 8000
Wire Wire Line
	3250 7750 3250 8000
Connection ~ 4250 8000
Wire Wire Line
	4250 8000 4250 8100
Wire Wire Line
	4250 7100 4250 7200
Wire Wire Line
	4250 7200 3250 7200
Wire Wire Line
	3250 7200 3250 7450
Connection ~ 4250 7200
Wire Wire Line
	4250 7200 4250 7300
Wire Wire Line
	8950 7750 8950 7950
Wire Wire Line
	6250 8350 4800 8350
Wire Wire Line
	4800 8350 4800 7600
$Comp
L Device:R R13
U 1 1 62009A2E
P 5200 6650
AR Path="/62009A2E" Ref="R13"  Part="1" 
AR Path="/624FCD7A/62009A2E" Ref="R?"  Part="1" 
AR Path="/61F602DC/62009A2E" Ref="R?"  Part="1" 
AR Path="/61F60664/62009A2E" Ref="R?"  Part="1" 
F 0 "R?" H 5270 6696 50  0000 L CNN
F 1 "10k" H 5270 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5130 6650 50  0001 C CNN
F 3 "~" H 5200 6650 50  0001 C CNN
	1    5200 6650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR038
U 1 1 62009A34
P 5200 6400
AR Path="/62009A34" Ref="#PWR038"  Part="1" 
AR Path="/624FCD7A/62009A34" Ref="#PWR?"  Part="1" 
AR Path="/61F602DC/62009A34" Ref="#PWR?"  Part="1" 
AR Path="/61F60664/62009A34" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5200 6250 50  0001 C CNN
F 1 "+3.3V" H 5215 6573 50  0000 C CNN
F 2 "" H 5200 6400 50  0001 C CNN
F 3 "" H 5200 6400 50  0001 C CNN
	1    5200 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6400 5200 6500
Wire Wire Line
	4900 6900 5200 6900
Wire Wire Line
	5200 6800 5200 6900
Connection ~ 5200 6900
Text GLabel 4700 6900 0    50   Input ~ 0
nRST
Wire Wire Line
	4700 6900 4900 6900
Connection ~ 4900 6900
Wire Wire Line
	6250 7150 5800 7150
Wire Wire Line
	5300 7350 6250 7350
Wire Wire Line
	4700 7600 4800 7600
Wire Wire Line
	7150 6850 7150 5250
Wire Wire Line
	7150 5250 6750 5250
Connection ~ 7150 6850
Connection ~ 6750 5250
Entry Wire Line
	8900 12000 9000 12100
Entry Wire Line
	8900 12000 9000 12100
Entry Wire Line
	8900 12100 9000 12200
Wire Wire Line
	9000 12100 9500 12100
Wire Wire Line
	9000 12200 9500 12200
Wire Wire Line
	9000 12300 9500 12300
Wire Wire Line
	9000 12400 9500 12400
Wire Wire Line
	9000 13100 9500 13100
Wire Wire Line
	9000 13200 9500 13200
Wire Wire Line
	9000 13300 9500 13300
Wire Wire Line
	9000 13400 9500 13400
Wire Wire Line
	9000 13500 9500 13500
Wire Wire Line
	9000 13600 9500 13600
Wire Wire Line
	9000 13700 9500 13700
Wire Wire Line
	9000 12600 9500 12600
Wire Wire Line
	9000 12700 9500 12700
Wire Wire Line
	9000 12800 9500 12800
Wire Wire Line
	9000 12900 9500 12900
Wire Wire Line
	9000 13000 9500 13000
Text Label 8800 8250 2    50   ~ 0
LED_R
Text Label 8800 8150 2    50   ~ 0
LED_G
Text Label 5300 9750 0    50   ~ 0
LED_B
Wire Wire Line
	7650 8650 9250 8650
Text Label 8800 8350 2    50   ~ 0
Rotary4
Text Label 5300 9850 0    50   ~ 0
Rotary2
Text Label 5300 10050 0    50   ~ 0
Rotary1
Text Label 5300 9950 0    50   ~ 0
Rotary8
Entry Wire Line
	5300 9850 5200 9950
Entry Wire Line
	5300 9950 5200 10050
Entry Wire Line
	5300 10050 5200 10150
Wire Wire Line
	5300 9850 6250 9850
Wire Wire Line
	5300 9950 6250 9950
Wire Wire Line
	5300 10050 6250 10050
Text Label 8800 10150 2    50   ~ 0
LED_Red
Text Label 5300 9650 0    50   ~ 0
LED_White
Entry Wire Line
	5300 9650 5200 9750
Entry Wire Line
	5300 9750 5200 9850
Wire Wire Line
	5300 9750 6250 9750
Wire Wire Line
	5300 9650 6250 9650
Text GLabel 7750 9250 2    50   Input ~ 0
Encorder2_A
Text GLabel 7750 9350 2    50   Input ~ 0
Encorder2_B
Text Label 4800 8950 0    50   ~ 0
Sensor11
Text Label 4800 8850 0    50   ~ 0
Sensor12
Entry Wire Line
	4700 9450 4800 9350
Entry Wire Line
	4700 9350 4800 9250
Entry Wire Line
	8800 8150 8900 8250
Entry Wire Line
	8800 8250 8900 8350
Entry Wire Line
	8800 8350 8900 8450
Wire Wire Line
	7750 7950 7650 7950
Wire Wire Line
	7750 8050 7650 8050
Wire Wire Line
	7750 9150 7650 9150
Wire Wire Line
	7750 9650 7650 9650
Wire Wire Line
	7750 9750 7650 9750
Wire Wire Line
	7750 9850 7650 9850
Wire Wire Line
	7750 9950 7650 9950
Wire Wire Line
	7750 10350 7650 10350
Wire Wire Line
	8950 7050 8950 7250
Wire Wire Line
	6150 9450 6250 9450
Wire Wire Line
	6150 9550 6250 9550
Text Notes 3650 9700 1    200  ~ 0
SensorBar
Wire Wire Line
	7650 8850 8200 8850
Wire Wire Line
	7650 7650 8200 7650
Wire Wire Line
	8200 7750 7650 7750
Wire Wire Line
	8200 7850 7650 7850
$Comp
L MCU_ST_STM32F4:STM32F405RGTx U2
U 1 1 62009A8F
P 6950 8750
AR Path="/62009A8F" Ref="U2"  Part="1" 
AR Path="/624FCD7A/62009A8F" Ref="U?"  Part="1" 
AR Path="/61F602DC/62009A8F" Ref="U?"  Part="1" 
AR Path="/61F60664/62009A8F" Ref="U?"  Part="1" 
F 0 "U?" H 6950 7400 50  0000 C CNN
F 1 "STM32F405RGTx" H 6950 7300 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6350 7050 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 6950 8750 50  0001 C CNN
	1    6950 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 8150 8800 8150
Wire Wire Line
	7650 8250 8800 8250
Wire Wire Line
	7650 8350 8800 8350
Connection ~ 8900 11200
Wire Wire Line
	7650 10150 8800 10150
Entry Wire Line
	8800 9450 8900 9550
Entry Wire Line
	8800 9550 8900 9650
Text Label 8800 9450 2    50   ~ 0
DRV1_PN
Text Label 8800 9550 2    50   ~ 0
DRV2_PN
Wire Wire Line
	7650 9550 8800 9550
Wire Wire Line
	7650 9450 8800 9450
Wire Wire Line
	7650 9250 7750 9250
Text GLabel 6150 9550 0    50   Input ~ 0
USART_RX
Text GLabel 6150 9450 0    50   Input ~ 0
USART_TX
Wire Wire Line
	7650 9350 7750 9350
Text Label 5300 8650 0    50   ~ 0
DRV1_EN
Wire Wire Line
	5300 8650 6250 8650
Entry Wire Line
	5300 8650 5200 8750
Wire Bus Line
	4700 11000 8300 11000
Text Label 5300 10150 0    50   ~ 0
DRV2_EN
Wire Wire Line
	5300 8450 6250 8450
Entry Wire Line
	5300 8450 5200 8550
Wire Wire Line
	5650 7650 5650 7550
Wire Wire Line
	5300 7350 5300 7650
Wire Wire Line
	6250 10150 5300 10150
Wire Wire Line
	6250 10250 5300 10250
Wire Wire Line
	6250 10350 5300 10350
Entry Wire Line
	5300 10150 5200 10250
Entry Wire Line
	5300 10250 5200 10350
Entry Wire Line
	5300 10350 5200 10450
Text Label 5300 10350 0    50   ~ 0
SW2
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62009AB7
P 9700 12200
AR Path="/61EDC519/62009AB7" Ref="J?"  Part="1" 
AR Path="/62009AB7" Ref="J6"  Part="1" 
AR Path="/624FCD7A/62009AB7" Ref="J?"  Part="1" 
AR Path="/61F602DC/62009AB7" Ref="J?"  Part="1" 
AR Path="/61F60664/62009AB7" Ref="J?"  Part="1" 
F 0 "J?" H 9700 12400 50  0000 C CNN
F 1 "FFC4" V 9800 12250 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0040_1x04-1MP_P1.00mm_Horizontal" H 9700 12200 50  0001 C CNN
F 3 "~" H 9700 12200 50  0001 C CNN
	1    9700 12200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x12 J?
U 1 1 62009ABD
P 9700 13100
AR Path="/61EDC519/62009ABD" Ref="J?"  Part="1" 
AR Path="/62009ABD" Ref="J8"  Part="1" 
AR Path="/624FCD7A/62009ABD" Ref="J?"  Part="1" 
AR Path="/61F602DC/62009ABD" Ref="J?"  Part="1" 
AR Path="/61F60664/62009ABD" Ref="J?"  Part="1" 
F 0 "J?" H 9700 13700 50  0000 C CNN
F 1 "FFC12" V 9800 13300 50  0000 C CNN
F 2 "FFC:WürthElektronik_687112183722_01x12_P0.5mm" H 9700 13100 50  0001 C CNN
F 3 "~" H 9700 13100 50  0001 C CNN
	1    9700 13100
	1    0    0    -1  
$EndComp
Text Label 5300 10250 0    50   ~ 0
SW1
Text Label 5300 8450 0    50   ~ 0
SW3
Wire Wire Line
	5800 6900 5800 7150
Text GLabel 7750 10050 2    50   Input ~ 0
ICM_nCS
Wire Wire Line
	7750 10050 7650 10050
Text GLabel 16350 11950 0    50   Input ~ 0
ICM_nCS
Wire Wire Line
	16350 11950 16850 11950
Wire Wire Line
	16850 11550 16850 11950
Connection ~ 16850 11950
Wire Wire Line
	16850 11950 17250 11950
Wire Wire Line
	16750 11050 16850 11050
Wire Wire Line
	16850 11050 16850 11150
Connection ~ 16750 11050
Wire Wire Line
	5200 6900 5800 6900
$Comp
L SKRPABE010:Switch SW?
U 1 1 62009AD1
P 5200 7200
AR Path="/61EDC519/62009AD1" Ref="SW?"  Part="1" 
AR Path="/624FCD7A/62009AD1" Ref="SW?"  Part="1" 
AR Path="/61F602DC/62009AD1" Ref="SW?"  Part="1" 
AR Path="/62009AD1" Ref="SW1"  Part="1" 
AR Path="/61F60664/62009AD1" Ref="SW?"  Part="1" 
F 0 "SW?" V 5154 7348 50  0000 L CNN
F 1 "SKRPABE010" V 5245 7348 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 5200 7200 50  0001 C CNN
F 3 "" H 5200 7200 50  0001 C CNN
	1    5200 7200
	0    1    1    0   
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61FB644F
P 16250 14900
F 0 "#FLG03" H 16250 14975 50  0001 C CNN
F 1 "PWR_FLAG" H 16250 15073 50  0000 C CNN
F 2 "" H 16250 14900 50  0001 C CNN
F 3 "~" H 16250 14900 50  0001 C CNN
	1    16250 14900
	-1   0    0    1   
$EndComp
Wire Wire Line
	16250 14900 16250 14400
$Comp
L power:PWR_FLAG #FLG04
U 1 1 61FB6456
P 16750 14900
F 0 "#FLG04" H 16750 14975 50  0001 C CNN
F 1 "PWR_FLAG" H 16750 15073 50  0000 C CNN
F 2 "" H 16750 14900 50  0001 C CNN
F 3 "~" H 16750 14900 50  0001 C CNN
	1    16750 14900
	-1   0    0    1   
$EndComp
Wire Wire Line
	16750 14900 16750 14400
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61FB645D
P 17250 14400
F 0 "#FLG02" H 17250 14475 50  0001 C CNN
F 1 "PWR_FLAG" H 17250 14573 50  0000 C CNN
F 2 "" H 17250 14400 50  0001 C CNN
F 3 "~" H 17250 14400 50  0001 C CNN
	1    17250 14400
	1    0    0    -1  
$EndComp
Wire Wire Line
	17250 14400 17250 14900
$Comp
L power:+5V #PWR096
U 1 1 61FB6464
P 16250 14400
F 0 "#PWR096" H 16250 14250 50  0001 C CNN
F 1 "+5V" H 16265 14573 50  0000 C CNN
F 2 "" H 16250 14400 50  0001 C CNN
F 3 "" H 16250 14400 50  0001 C CNN
	1    16250 14400
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR097
U 1 1 61FB646A
P 16750 14400
F 0 "#PWR097" H 16750 14250 50  0001 C CNN
F 1 "+3.3V" H 16765 14573 50  0000 C CNN
F 2 "" H 16750 14400 50  0001 C CNN
F 3 "" H 16750 14400 50  0001 C CNN
	1    16750 14400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR098
U 1 1 61FB6470
P 17250 14900
F 0 "#PWR098" H 17250 14650 50  0001 C CNN
F 1 "GND" H 17255 14727 50  0000 C CNN
F 2 "" H 17250 14900 50  0001 C CNN
F 3 "" H 17250 14900 50  0001 C CNN
	1    17250 14900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 8950 7650 8950
Text Label 8200 8950 2    50   ~ 0
Sensor01
Wire Wire Line
	8200 7150 7650 7150
Wire Wire Line
	8200 7250 7650 7250
Wire Wire Line
	4800 9250 6250 9250
Wire Wire Line
	4800 9350 6250 9350
Text Notes 12700 8700 0    50   ~ 0
Right
Text Notes 12700 7100 0    50   ~ 0
Left\n
Text Label 8200 7850 2    50   ~ 0
Sensor05
Text Label 8200 7750 2    50   ~ 0
Sensor06
Text Label 8200 7250 2    50   ~ 0
Sensor07
Wire Wire Line
	4800 8850 6250 8850
Wire Wire Line
	4800 8950 6250 8950
Wire Wire Line
	4800 9050 6250 9050
Wire Wire Line
	4800 9150 6250 9150
Entry Wire Line
	4700 8950 4800 8850
Entry Wire Line
	4700 9050 4800 8950
Entry Wire Line
	4700 9150 4800 9050
Entry Wire Line
	4700 9250 4800 9150
Wire Wire Line
	8950 7250 9050 7250
Wire Wire Line
	9050 7750 8950 7750
Wire Wire Line
	8200 7650 8200 7600
Wire Wire Line
	8200 7600 8400 7600
Wire Wire Line
	8400 7600 8400 7650
Wire Wire Line
	8400 7650 9050 7650
Wire Wire Line
	7650 7550 9050 7550
Wire Wire Line
	7650 7450 9050 7450
Wire Wire Line
	7650 7350 9050 7350
Text Notes 15050 2000 0    50   ~ 0
20mA
Text Notes 18100 1500 0    50   ~ 0
All : 480mA
Text Notes 12650 6250 0    50   ~ 0
All:72mA
Text Notes 6150 12400 0    50   ~ 0
5V : under 100mA\n3.3V : under 600mA
Wire Bus Line
	19750 5950 19750 8850
Wire Bus Line
	17750 5950 17750 8850
Wire Bus Line
	15750 5950 15750 8850
Wire Bus Line
	19750 2750 19750 5750
Wire Bus Line
	17750 2750 17750 5750
Wire Bus Line
	15750 2750 15750 5750
Wire Bus Line
	8300 5850 19650 5850
Wire Bus Line
	8300 5850 8300 11000
Wire Bus Line
	8900 8250 8900 11200
Wire Bus Line
	4700 8950 4700 11000
Wire Bus Line
	5200 8550 5200 11200
Wire Bus Line
	8900 11200 8900 13600
Text Notes 850  1500 0    500  ~ 0
Main
$EndSCHEMATC
