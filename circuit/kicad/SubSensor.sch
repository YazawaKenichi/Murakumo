EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L SubSensor-rescue:S7136-S7136 U1
U 1 1 61F6138D
P 4100 4500
F 0 "U1" H 4100 4815 50  0000 C CNN
F 1 "S7136" H 4100 4724 50  0000 C CNN
F 2 "sens:S7136" H 4100 4500 50  0001 C CNN
F 3 "https://www.hamamatsu.com/resources/pdf/ssd/s4282-51_etc_kpic1002j.pdf" H 4100 4500 50  0001 C CNN
	1    4100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4450 4650 4450
$Comp
L Device:LED D1
U 1 1 61F61394
P 4800 4250
F 0 "D1" V 4839 4132 50  0000 R CNN
F 1 "SIR19-21C/TR8" V 4748 4132 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 4800 4250 50  0001 C CNN
F 3 "~" H 4800 4250 50  0001 C CNN
	1    4800 4250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61F6139A
P 4800 3850
F 0 "R1" H 4870 3896 50  0000 L CNN
F 1 "68" H 4870 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4730 3850 50  0001 C CNN
F 3 "~" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4550 4550 4550
Wire Wire Line
	4800 4400 4800 4550
Wire Wire Line
	4800 3550 4800 3700
Wire Wire Line
	4800 4000 4800 4100
Wire Wire Line
	4650 3550 4650 4450
Connection ~ 4650 3550
Wire Wire Line
	4650 3550 4800 3550
$Comp
L Connector_Generic:Conn_01x03 J1
U 1 1 61F613A7
P 3050 4450
F 0 "J1" H 2968 4125 50  0000 C CNN
F 1 "SH3" H 2968 4216 50  0000 C CNN
F 2 "SH:SH_01x03" H 3050 4450 50  0001 C CNN
F 3 "~" H 3050 4450 50  0001 C CNN
	1    3050 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	3250 4550 3550 4550
Wire Wire Line
	3250 4350 3400 4350
Wire Wire Line
	3400 4350 3400 3550
Wire Wire Line
	3400 3450 3400 3550
Connection ~ 3400 3550
$Comp
L Device:C C1
U 1 1 61F613B2
P 3550 4000
F 0 "C1" H 3665 4046 50  0000 L CNN
F 1 "0.1u" H 3665 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3588 3850 50  0001 C CNN
F 3 "~" H 3550 4000 50  0001 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3850 3550 3550
Wire Wire Line
	3550 4150 3550 4550
Connection ~ 3550 4550
Wire Wire Line
	3550 4550 3650 4550
Wire Wire Line
	3400 3550 3550 3550
Connection ~ 3550 3550
$Comp
L power:GND #PWR02
U 1 1 61F613BE
P 3550 4650
F 0 "#PWR02" H 3550 4400 50  0001 C CNN
F 1 "GND" H 3555 4477 50  0000 C CNN
F 2 "" H 3550 4650 50  0001 C CNN
F 3 "" H 3550 4650 50  0001 C CNN
	1    3550 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 4650 3550 4550
$Comp
L power:+5V #PWR01
U 1 1 61F613C5
P 3400 3450
F 0 "#PWR01" H 3400 3300 50  0001 C CNN
F 1 "+5V" H 3415 3623 50  0000 C CNN
F 2 "" H 3400 3450 50  0001 C CNN
F 3 "" H 3400 3450 50  0001 C CNN
	1    3400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3550 4650 3550
Wire Wire Line
	3250 4450 3650 4450
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61FED478
P 5250 5800
F 0 "#FLG?" H 5250 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 5973 50  0000 C CNN
F 2 "" H 5250 5800 50  0001 C CNN
F 3 "~" H 5250 5800 50  0001 C CNN
	1    5250 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5250 5800 5250 5300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61FED47F
P 5750 5800
F 0 "#FLG?" H 5750 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 5750 5973 50  0000 C CNN
F 2 "" H 5750 5800 50  0001 C CNN
F 3 "~" H 5750 5800 50  0001 C CNN
	1    5750 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 5800 5750 5300
$Comp
L power:PWR_FLAG #FLG?
U 1 1 61FED486
P 6250 5300
F 0 "#FLG?" H 6250 5375 50  0001 C CNN
F 1 "PWR_FLAG" H 6250 5473 50  0000 C CNN
F 2 "" H 6250 5300 50  0001 C CNN
F 3 "~" H 6250 5300 50  0001 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5300 6250 5800
$Comp
L power:+5V #PWR?
U 1 1 61FED48D
P 5250 5300
F 0 "#PWR?" H 5250 5150 50  0001 C CNN
F 1 "+5V" H 5265 5473 50  0000 C CNN
F 2 "" H 5250 5300 50  0001 C CNN
F 3 "" H 5250 5300 50  0001 C CNN
	1    5250 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61FED493
P 5750 5300
F 0 "#PWR?" H 5750 5150 50  0001 C CNN
F 1 "+3.3V" H 5765 5473 50  0000 C CNN
F 2 "" H 5750 5300 50  0001 C CNN
F 3 "" H 5750 5300 50  0001 C CNN
	1    5750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FED499
P 6250 5800
F 0 "#PWR?" H 6250 5550 50  0001 C CNN
F 1 "GND" H 6255 5627 50  0000 C CNN
F 2 "" H 6250 5800 50  0001 C CNN
F 3 "" H 6250 5800 50  0001 C CNN
	1    6250 5800
	1    0    0    -1  
$EndComp
Text Notes 600  1200 0    500  ~ 0
SubSensor
$EndSCHEMATC
