EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
Title "Murakumo_Side_Sensor_Circuit"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L S7136:S7136 U6
U 1 1 61F63F2D
P 7000 3450
F 0 "U6" H 7000 3765 50  0000 C CNN
F 1 "S7136" H 7000 3674 50  0000 C CNN
F 2 "sens:S7136" H 7000 3450 50  0001 C CNN
F 3 "https://www.hamamatsu.com/resources/pdf/ssd/s4282-51_etc_kpic1002j.pdf" H 7000 3450 50  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3400 7550 3400
$Comp
L Device:LED D13
U 1 1 61F63F34
P 7700 3200
F 0 "D13" V 7739 3082 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 7648 3082 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 7700 3200 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
	1    7700 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 61F63F3A
P 7700 2800
F 0 "R30" H 7770 2846 50  0000 L CNN
F 1 "68" H 7770 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7630 2800 50  0001 C CNN
F 3 "~" H 7700 2800 50  0001 C CNN
	1    7700 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3500 7450 3500
Wire Wire Line
	7700 3350 7700 3500
Wire Wire Line
	7700 2500 7700 2650
Wire Wire Line
	7700 2950 7700 3050
Wire Wire Line
	7550 2500 7550 3400
Connection ~ 7550 2500
Wire Wire Line
	7550 2500 7700 2500
$Comp
L Connector_Generic:Conn_01x03 J10
U 1 1 61F63F62
P 5950 3400
F 0 "J10" H 5868 3075 50  0000 C CNN
F 1 "SH3" H 5868 3166 50  0000 C CNN
F 2 "SH:SH_01x03" H 5950 3400 50  0001 C CNN
F 3 "~" H 5950 3400 50  0001 C CNN
	1    5950 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 3500 6450 3500
Wire Wire Line
	6150 3300 6300 3300
Wire Wire Line
	6300 3300 6300 2500
Wire Wire Line
	6300 2400 6300 2500
Connection ~ 6300 2500
$Comp
L Device:C C24
U 1 1 61F63F73
P 6450 2950
F 0 "C24" H 6565 2996 50  0000 L CNN
F 1 "0.1u" H 6565 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 2800 50  0001 C CNN
F 3 "~" H 6450 2950 50  0001 C CNN
	1    6450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2800 6450 2500
Wire Wire Line
	6450 3100 6450 3500
Connection ~ 6450 3500
Wire Wire Line
	6450 3500 6550 3500
Wire Wire Line
	6300 2500 6450 2500
Connection ~ 6450 2500
$Comp
L power:GND #PWR072
U 1 1 61F6B876
P 6450 3600
F 0 "#PWR072" H 6450 3350 50  0001 C CNN
F 1 "GND" H 6455 3427 50  0000 C CNN
F 2 "" H 6450 3600 50  0001 C CNN
F 3 "" H 6450 3600 50  0001 C CNN
	1    6450 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 3600 6450 3500
$Comp
L power:+5V #PWR070
U 1 1 624AE95B
P 6300 2400
F 0 "#PWR070" H 6300 2250 50  0001 C CNN
F 1 "+5V" H 6315 2573 50  0000 C CNN
F 2 "" H 6300 2400 50  0001 C CNN
F 3 "" H 6300 2400 50  0001 C CNN
	1    6300 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2500 7550 2500
Wire Wire Line
	6150 3400 6550 3400
$Comp
L S7136:S7136 U5
U 1 1 62E812F5
P 4300 3450
F 0 "U5" H 4300 3765 50  0000 C CNN
F 1 "S7136" H 4300 3674 50  0000 C CNN
F 2 "sens:S7136" H 4300 3450 50  0001 C CNN
F 3 "https://www.hamamatsu.com/resources/pdf/ssd/s4282-51_etc_kpic1002j.pdf" H 4300 3450 50  0001 C CNN
	1    4300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3400 4850 3400
$Comp
L Device:LED D12
U 1 1 62E812FC
P 5000 3200
F 0 "D12" V 5039 3082 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 4948 3082 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5000 3200 50  0001 C CNN
F 3 "~" H 5000 3200 50  0001 C CNN
	1    5000 3200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R29
U 1 1 62E81302
P 5000 2800
F 0 "R29" H 5070 2846 50  0000 L CNN
F 1 "68" H 5070 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4930 2800 50  0001 C CNN
F 3 "~" H 5000 2800 50  0001 C CNN
	1    5000 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 3500 4750 3500
Wire Wire Line
	5000 3350 5000 3500
Wire Wire Line
	5000 2500 5000 2650
Wire Wire Line
	5000 2950 5000 3050
Wire Wire Line
	4850 2500 4850 3400
Connection ~ 4850 2500
Wire Wire Line
	4850 2500 5000 2500
$Comp
L Connector_Generic:Conn_01x03 J9
U 1 1 62E8130F
P 3250 3400
F 0 "J9" H 3168 3075 50  0000 C CNN
F 1 "SH3" H 3168 3166 50  0000 C CNN
F 2 "SH:SH_01x03" H 3250 3400 50  0001 C CNN
F 3 "~" H 3250 3400 50  0001 C CNN
	1    3250 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 3500 3750 3500
Wire Wire Line
	3450 3300 3600 3300
Wire Wire Line
	3600 3300 3600 2500
Wire Wire Line
	3600 2400 3600 2500
Connection ~ 3600 2500
$Comp
L Device:C C23
U 1 1 62E8131A
P 3750 2950
F 0 "C23" H 3865 2996 50  0000 L CNN
F 1 "0.1u" H 3865 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3788 2800 50  0001 C CNN
F 3 "~" H 3750 2950 50  0001 C CNN
	1    3750 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2800 3750 2500
Wire Wire Line
	3750 3100 3750 3500
Connection ~ 3750 3500
Wire Wire Line
	3750 3500 3850 3500
Wire Wire Line
	3600 2500 3750 2500
Connection ~ 3750 2500
$Comp
L power:GND #PWR071
U 1 1 62E81326
P 3750 3600
F 0 "#PWR071" H 3750 3350 50  0001 C CNN
F 1 "GND" H 3755 3427 50  0000 C CNN
F 2 "" H 3750 3600 50  0001 C CNN
F 3 "" H 3750 3600 50  0001 C CNN
	1    3750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 3600 3750 3500
$Comp
L power:+5V #PWR069
U 1 1 62E8132D
P 3600 2400
F 0 "#PWR069" H 3600 2250 50  0001 C CNN
F 1 "+5V" H 3615 2573 50  0000 C CNN
F 2 "" H 3600 2400 50  0001 C CNN
F 3 "" H 3600 2400 50  0001 C CNN
	1    3600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 2500 4850 2500
Wire Wire Line
	3450 3400 3850 3400
$EndSCHEMATC
