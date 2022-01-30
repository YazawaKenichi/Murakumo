EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 5
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
L Device:R R15
U 1 1 61F9AD64
P 4600 5800
AR Path="/61F9AD64" Ref="R15"  Part="1" 
AR Path="/61EDC519/61F9AD64" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AD64" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AD64" Ref="R15"  Part="1" 
F 0 "R15" H 4670 5846 50  0000 L CNN
F 1 "1.2k" H 4670 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4530 5800 50  0001 C CNN
F 3 "~" H 4600 5800 50  0001 C CNN
	1    4600 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 61F9AD6A
P 4600 6050
AR Path="/61F9AD6A" Ref="#PWR041"  Part="1" 
AR Path="/61EDC519/61F9AD6A" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AD6A" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AD6A" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 4600 5800 50  0001 C CNN
F 1 "GND" H 4605 5877 50  0000 C CNN
F 2 "" H 4600 6050 50  0001 C CNN
F 3 "" H 4600 6050 50  0001 C CNN
	1    4600 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 61F9AD70
P 4850 4700
AR Path="/61F9AD70" Ref="R8"  Part="1" 
AR Path="/61EDC519/61F9AD70" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AD70" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AD70" Ref="R8"  Part="1" 
F 0 "R8" H 4920 4746 50  0000 L CNN
F 1 "10k" H 4920 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4780 4700 50  0001 C CNN
F 3 "~" H 4850 4700 50  0001 C CNN
	1    4850 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5750 4850 5750
Wire Wire Line
	4850 4450 4850 4550
Wire Wire Line
	5850 5750 5950 5750
Wire Wire Line
	6150 5550 6150 5650
Wire Wire Line
	5850 5550 6150 5550
Wire Wire Line
	5850 5650 6150 5650
Connection ~ 6150 5650
Wire Wire Line
	5850 5450 6350 5450
$Comp
L Device:C C18
U 1 1 61F9AD7E
P 6150 4650
AR Path="/61F9AD7E" Ref="C18"  Part="1" 
AR Path="/61EDC519/61F9AD7E" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AD7E" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AD7E" Ref="C18"  Part="1" 
F 0 "C18" H 6265 4696 50  0000 L CNN
F 1 "0.1u" H 6265 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6188 4500 50  0001 C CNN
F 3 "~" H 6150 4650 50  0001 C CNN
	1    6150 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 61F9AD84
P 6550 4500
AR Path="/61F9AD84" Ref="C14"  Part="1" 
AR Path="/61EDC519/61F9AD84" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AD84" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AD84" Ref="C14"  Part="1" 
F 0 "C14" H 6665 4546 50  0000 L CNN
F 1 "0.1u" H 6665 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6588 4350 50  0001 C CNN
F 3 "~" H 6550 4500 50  0001 C CNN
	1    6550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 61F9AD8A
P 6550 4750
AR Path="/61F9AD8A" Ref="#PWR028"  Part="1" 
AR Path="/61EDC519/61F9AD8A" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AD8A" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AD8A" Ref="#PWR028"  Part="1" 
F 0 "#PWR028" H 6550 4500 50  0001 C CNN
F 1 "GND" H 6555 4577 50  0000 C CNN
F 2 "" H 6550 4750 50  0001 C CNN
F 3 "" H 6550 4750 50  0001 C CNN
	1    6550 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C15
U 1 1 61F9AD90
P 6950 4500
AR Path="/61F9AD90" Ref="C15"  Part="1" 
AR Path="/61EDC519/61F9AD90" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AD90" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AD90" Ref="C15"  Part="1" 
F 0 "C15" H 7068 4546 50  0000 L CNN
F 1 "100u" H 7068 4455 50  0000 L CNN
F 2 "Capacitor:ECASD91B107M012K00" H 6988 4350 50  0001 C CNN
F 3 "~" H 6950 4500 50  0001 C CNN
	1    6950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 61F9AD96
P 6950 4750
AR Path="/61F9AD96" Ref="#PWR029"  Part="1" 
AR Path="/61EDC519/61F9AD96" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AD96" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AD96" Ref="#PWR029"  Part="1" 
F 0 "#PWR029" H 6950 4500 50  0001 C CNN
F 1 "GND" H 6955 4577 50  0000 C CNN
F 2 "" H 6950 4750 50  0001 C CNN
F 3 "" H 6950 4750 50  0001 C CNN
	1    6950 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 61F9AD9C
P 6950 4150
AR Path="/61F9AD9C" Ref="#PWR021"  Part="1" 
AR Path="/61EDC519/61F9AD9C" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AD9C" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AD9C" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 6950 4000 50  0001 C CNN
F 1 "+BATT" H 6965 4323 50  0000 C CNN
F 2 "" H 6950 4150 50  0001 C CNN
F 3 "" H 6950 4150 50  0001 C CNN
	1    6950 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5750 6350 5450
Wire Wire Line
	6150 5650 6150 5750
Wire Wire Line
	6950 4250 6950 4350
Wire Wire Line
	6550 4250 6550 4350
Wire Wire Line
	5950 4950 5850 4950
Wire Wire Line
	5950 4250 5950 4950
Wire Wire Line
	6550 4650 6550 4750
Wire Wire Line
	6950 4750 6950 4650
Wire Wire Line
	5950 4250 6150 4250
Wire Wire Line
	6150 4500 6150 4250
Connection ~ 6150 4250
Wire Wire Line
	6150 4250 6550 4250
Wire Wire Line
	6150 4800 6150 5050
Wire Wire Line
	6150 5050 5850 5050
Connection ~ 6550 4250
Wire Wire Line
	6550 4250 6950 4250
Wire Wire Line
	6950 4150 6950 4250
Connection ~ 6950 4250
Wire Wire Line
	4600 5650 4600 5550
$Comp
L DRVxxxx:DRV8874 U3
U 1 1 61F9ADB5
P 5400 5350
AR Path="/61F9ADB5" Ref="U3"  Part="1" 
AR Path="/61EDC519/61F9ADB5" Ref="U?"  Part="1" 
AR Path="/61F60426/61F9ADB5" Ref="U?"  Part="1" 
AR Path="/61F60BF1/61F9ADB5" Ref="U3"  Part="1" 
F 0 "U3" H 5400 5965 50  0000 C CNN
F 1 "DRV8874" H 5400 5874 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 5400 6250 50  0001 C CNN
F 3 "" H 4750 6150 50  0001 C CNN
	1    5400 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5950 5950 5750
$Comp
L power:GND #PWR037
U 1 1 61F9ADBC
P 6150 5750
AR Path="/61F9ADBC" Ref="#PWR037"  Part="1" 
AR Path="/61EDC519/61F9ADBC" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9ADBC" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9ADBC" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6150 5500 50  0001 C CNN
F 1 "GND" H 6155 5577 50  0000 C CNN
F 2 "" H 6150 5750 50  0001 C CNN
F 3 "" H 6150 5750 50  0001 C CNN
	1    6150 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 61F9ADC2
P 6350 5750
AR Path="/61F9ADC2" Ref="#PWR038"  Part="1" 
AR Path="/61EDC519/61F9ADC2" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9ADC2" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9ADC2" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6350 5500 50  0001 C CNN
F 1 "GND" H 6355 5577 50  0000 C CNN
F 2 "" H 6350 5750 50  0001 C CNN
F 3 "" H 6350 5750 50  0001 C CNN
	1    6350 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 5950 5350 6050
Wire Wire Line
	4850 5950 5350 5950
Wire Wire Line
	4850 5750 4850 5950
Wire Wire Line
	5450 5950 5950 5950
Wire Wire Line
	5450 6050 5450 5950
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 61F9ADCD
P 5450 6250
AR Path="/61F9ADCD" Ref="J5"  Part="1" 
AR Path="/61EDC519/61F9ADCD" Ref="J?"  Part="1" 
AR Path="/61F60426/61F9ADCD" Ref="J?"  Part="1" 
AR Path="/61F60BF1/61F9ADCD" Ref="J5"  Part="1" 
F 0 "J5" V 5322 6330 50  0000 L CNN
F 1 "PA2" V 5413 6330 50  0000 L CNN
F 2 "PA:PA_01x02" H 5450 6250 50  0001 C CNN
F 3 "~" H 5450 6250 50  0001 C CNN
	1    5450 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 5350 6350 5350
Wire Wire Line
	6350 5350 6350 5450
Connection ~ 6350 5450
Wire Wire Line
	4600 5950 4600 6050
Wire Wire Line
	6450 5350 6450 5250
Wire Wire Line
	6600 5350 6450 5350
Wire Wire Line
	6450 5050 6600 5050
Wire Wire Line
	6450 5150 6450 5050
Wire Wire Line
	5850 5150 6450 5150
Wire Wire Line
	6450 5250 5850 5250
$Comp
L Device:C C20
U 1 1 61F9ADDD
P 6600 5200
AR Path="/61F9ADDD" Ref="C20"  Part="1" 
AR Path="/61EDC519/61F9ADDD" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9ADDD" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9ADDD" Ref="C20"  Part="1" 
F 0 "C20" H 6715 5246 50  0000 L CNN
F 1 "22n" H 6715 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6638 5050 50  0001 C CNN
F 3 "~" H 6600 5200 50  0001 C CNN
	1    6600 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 61F9ADE3
P 8000 5800
AR Path="/61F9ADE3" Ref="R16"  Part="1" 
AR Path="/61EDC519/61F9ADE3" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9ADE3" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9ADE3" Ref="R16"  Part="1" 
F 0 "R16" H 8070 5846 50  0000 L CNN
F 1 "1.2k" H 8070 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7930 5800 50  0001 C CNN
F 3 "~" H 8000 5800 50  0001 C CNN
	1    8000 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 61F9ADE9
P 8000 6050
AR Path="/61F9ADE9" Ref="#PWR043"  Part="1" 
AR Path="/61EDC519/61F9ADE9" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9ADE9" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9ADE9" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 8000 5800 50  0001 C CNN
F 1 "GND" H 8005 5877 50  0000 C CNN
F 2 "" H 8000 6050 50  0001 C CNN
F 3 "" H 8000 6050 50  0001 C CNN
	1    8000 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 61F9ADEF
P 8400 4700
AR Path="/61F9ADEF" Ref="R9"  Part="1" 
AR Path="/61EDC519/61F9ADEF" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9ADEF" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9ADEF" Ref="R9"  Part="1" 
F 0 "R9" H 8470 4746 50  0000 L CNN
F 1 "10k" H 8470 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8330 4700 50  0001 C CNN
F 3 "~" H 8400 4700 50  0001 C CNN
	1    8400 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5750 8400 5750
Wire Wire Line
	8400 4850 8400 4950
Wire Wire Line
	8400 4450 8400 4550
Wire Wire Line
	9400 5750 9500 5750
Wire Wire Line
	9700 5550 9700 5650
Wire Wire Line
	9400 5550 9700 5550
Wire Wire Line
	9400 5650 9700 5650
Connection ~ 9700 5650
Wire Wire Line
	9400 5450 9900 5450
$Comp
L Device:C C19
U 1 1 61F9ADFE
P 9700 4650
AR Path="/61F9ADFE" Ref="C19"  Part="1" 
AR Path="/61EDC519/61F9ADFE" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9ADFE" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9ADFE" Ref="C19"  Part="1" 
F 0 "C19" H 9815 4696 50  0000 L CNN
F 1 "0.1u" H 9815 4605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9738 4500 50  0001 C CNN
F 3 "~" H 9700 4650 50  0001 C CNN
	1    9700 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C16
U 1 1 61F9AE04
P 10100 4500
AR Path="/61F9AE04" Ref="C16"  Part="1" 
AR Path="/61EDC519/61F9AE04" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AE04" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AE04" Ref="C16"  Part="1" 
F 0 "C16" H 10215 4546 50  0000 L CNN
F 1 "0.1u" H 10215 4455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10138 4350 50  0001 C CNN
F 3 "~" H 10100 4500 50  0001 C CNN
	1    10100 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 61F9AE0A
P 10100 4750
AR Path="/61F9AE0A" Ref="#PWR031"  Part="1" 
AR Path="/61EDC519/61F9AE0A" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE0A" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE0A" Ref="#PWR031"  Part="1" 
F 0 "#PWR031" H 10100 4500 50  0001 C CNN
F 1 "GND" H 10105 4577 50  0000 C CNN
F 2 "" H 10100 4750 50  0001 C CNN
F 3 "" H 10100 4750 50  0001 C CNN
	1    10100 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C17
U 1 1 61F9AE10
P 10500 4500
AR Path="/61F9AE10" Ref="C17"  Part="1" 
AR Path="/61EDC519/61F9AE10" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AE10" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AE10" Ref="C17"  Part="1" 
F 0 "C17" H 10618 4546 50  0000 L CNN
F 1 "100u" H 10618 4455 50  0000 L CNN
F 2 "Capacitor:ECASD91B107M012K00" H 10538 4350 50  0001 C CNN
F 3 "~" H 10500 4500 50  0001 C CNN
	1    10500 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 61F9AE16
P 10500 4750
AR Path="/61F9AE16" Ref="#PWR032"  Part="1" 
AR Path="/61EDC519/61F9AE16" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE16" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE16" Ref="#PWR032"  Part="1" 
F 0 "#PWR032" H 10500 4500 50  0001 C CNN
F 1 "GND" H 10505 4577 50  0000 C CNN
F 2 "" H 10500 4750 50  0001 C CNN
F 3 "" H 10500 4750 50  0001 C CNN
	1    10500 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR022
U 1 1 61F9AE1C
P 10500 4150
AR Path="/61F9AE1C" Ref="#PWR022"  Part="1" 
AR Path="/61EDC519/61F9AE1C" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE1C" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE1C" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 10500 4000 50  0001 C CNN
F 1 "+BATT" H 10515 4323 50  0000 C CNN
F 2 "" H 10500 4150 50  0001 C CNN
F 3 "" H 10500 4150 50  0001 C CNN
	1    10500 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5750 9900 5450
Wire Wire Line
	9700 5650 9700 5750
Wire Wire Line
	10500 4250 10500 4350
Wire Wire Line
	10100 4250 10100 4350
Wire Wire Line
	9500 4950 9400 4950
Wire Wire Line
	9500 4250 9500 4950
Wire Wire Line
	10100 4650 10100 4750
Wire Wire Line
	10500 4750 10500 4650
Wire Wire Line
	8400 4950 8500 4950
$Comp
L Device:R R14
U 1 1 61F9AE2B
P 7450 5750
AR Path="/61F9AE2B" Ref="R14"  Part="1" 
AR Path="/61EDC519/61F9AE2B" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AE2B" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AE2B" Ref="R14"  Part="1" 
F 0 "R14" H 7520 5796 50  0000 L CNN
F 1 "50k" H 7520 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7380 5750 50  0001 C CNN
F 3 "~" H 7450 5750 50  0001 C CNN
	1    7450 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR042
U 1 1 61F9AE31
P 7450 6050
AR Path="/61F9AE31" Ref="#PWR042"  Part="1" 
AR Path="/61EDC519/61F9AE31" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE31" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE31" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 7450 5800 50  0001 C CNN
F 1 "GND" H 7455 5877 50  0000 C CNN
F 2 "" H 7450 6050 50  0001 C CNN
F 3 "" H 7450 6050 50  0001 C CNN
	1    7450 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4750 7450 4850
Wire Wire Line
	9500 4250 9700 4250
Wire Wire Line
	9700 4500 9700 4250
Connection ~ 9700 4250
Wire Wire Line
	9700 4250 10100 4250
Wire Wire Line
	9700 4800 9700 5050
Wire Wire Line
	9700 5050 9400 5050
Connection ~ 10100 4250
Wire Wire Line
	10100 4250 10500 4250
Wire Wire Line
	10500 4150 10500 4250
Connection ~ 10500 4250
Wire Wire Line
	7450 5350 8500 5350
Entry Wire Line
	7850 5250 7750 5150
Entry Wire Line
	7850 5150 7750 5050
Text Label 7850 5150 0    50   ~ 0
DRV2_EN
Text Label 7850 5250 0    50   ~ 0
DRV2_PN
Wire Wire Line
	7450 5150 7450 5350
Wire Wire Line
	8000 5650 8000 5550
$Comp
L DRVxxxx:DRV8874 U4
U 1 1 61F9AE49
P 8950 5350
AR Path="/61F9AE49" Ref="U4"  Part="1" 
AR Path="/61EDC519/61F9AE49" Ref="U?"  Part="1" 
AR Path="/61F60426/61F9AE49" Ref="U?"  Part="1" 
AR Path="/61F60BF1/61F9AE49" Ref="U4"  Part="1" 
F 0 "U4" H 8950 5965 50  0000 C CNN
F 1 "DRV8874" H 8950 5874 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 8950 6250 50  0001 C CNN
F 3 "" H 8300 6150 50  0001 C CNN
	1    8950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 5950 9500 5750
$Comp
L power:GND #PWR039
U 1 1 61F9AE50
P 9700 5750
AR Path="/61F9AE50" Ref="#PWR039"  Part="1" 
AR Path="/61EDC519/61F9AE50" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE50" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE50" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 9700 5500 50  0001 C CNN
F 1 "GND" H 9705 5577 50  0000 C CNN
F 2 "" H 9700 5750 50  0001 C CNN
F 3 "" H 9700 5750 50  0001 C CNN
	1    9700 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR040
U 1 1 61F9AE56
P 9900 5750
AR Path="/61F9AE56" Ref="#PWR040"  Part="1" 
AR Path="/61EDC519/61F9AE56" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE56" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE56" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 9900 5500 50  0001 C CNN
F 1 "GND" H 9905 5577 50  0000 C CNN
F 2 "" H 9900 5750 50  0001 C CNN
F 3 "" H 9900 5750 50  0001 C CNN
	1    9900 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5950 8900 6050
Wire Wire Line
	8400 5950 8900 5950
Wire Wire Line
	8400 5750 8400 5950
Wire Wire Line
	9000 5950 9500 5950
Wire Wire Line
	9000 6050 9000 5950
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 61F9AE61
P 9000 6250
AR Path="/61F9AE61" Ref="J6"  Part="1" 
AR Path="/61EDC519/61F9AE61" Ref="J?"  Part="1" 
AR Path="/61F60426/61F9AE61" Ref="J?"  Part="1" 
AR Path="/61F60BF1/61F9AE61" Ref="J6"  Part="1" 
F 0 "J6" V 8872 6330 50  0000 L CNN
F 1 "PA2" V 8963 6330 50  0000 L CNN
F 2 "PA:PA_01x02" H 9000 6250 50  0001 C CNN
F 3 "~" H 9000 6250 50  0001 C CNN
	1    9000 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 5350 9900 5350
Wire Wire Line
	9900 5350 9900 5450
Connection ~ 9900 5450
Wire Wire Line
	8000 5950 8000 6050
Wire Wire Line
	7450 5350 7450 5600
Connection ~ 7450 5350
Wire Wire Line
	7450 5900 7450 6050
Wire Wire Line
	8000 5550 8500 5550
Wire Wire Line
	10000 5350 10000 5250
Wire Wire Line
	10150 5350 10000 5350
Wire Wire Line
	10000 5050 10150 5050
Wire Wire Line
	10000 5150 10000 5050
Wire Wire Line
	9400 5150 10000 5150
Wire Wire Line
	10000 5250 9400 5250
$Comp
L Device:C C21
U 1 1 61F9AE75
P 10150 5200
AR Path="/61F9AE75" Ref="C21"  Part="1" 
AR Path="/61EDC519/61F9AE75" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AE75" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AE75" Ref="C21"  Part="1" 
F 0 "C21" H 10265 5246 50  0000 L CNN
F 1 "22n" H 10265 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10188 5050 50  0001 C CNN
F 3 "~" H 10150 5200 50  0001 C CNN
	1    10150 5200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded_SH-7050 SW2
U 1 1 61F9AE7B
P 10250 3350
AR Path="/61F9AE7B" Ref="SW2"  Part="1" 
AR Path="/61EDC519/61F9AE7B" Ref="SW?"  Part="1" 
AR Path="/61F60426/61F9AE7B" Ref="SW?"  Part="1" 
AR Path="/61F60BF1/61F9AE7B" Ref="SW2"  Part="1" 
F 0 "SW2" H 10450 2900 50  0000 R CNN
F 1 "220AMB16R" H 10450 3000 50  0000 R CNN
F 2 "Switch:220AMB16R" H 9950 2900 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 10250 3350 50  0001 C CNN
	1    10250 3350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 61F9AE81
P 9750 3950
AR Path="/61F9AE81" Ref="#PWR020"  Part="1" 
AR Path="/61EDC519/61F9AE81" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE81" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE81" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 9750 3700 50  0001 C CNN
F 1 "GND" H 9755 3777 50  0000 C CNN
F 2 "" H 9750 3950 50  0001 C CNN
F 3 "" H 9750 3950 50  0001 C CNN
	1    9750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3550 9850 3550
$Comp
L Device:C C7
U 1 1 61F9AE88
P 8200 3700
AR Path="/61F9AE88" Ref="C7"  Part="1" 
AR Path="/61EDC519/61F9AE88" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AE88" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AE88" Ref="C7"  Part="1" 
F 0 "C7" H 8315 3746 50  0000 L CNN
F 1 "0.1u" H 8315 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8238 3550 50  0001 C CNN
F 3 "~" H 8200 3700 50  0001 C CNN
	1    8200 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3550 9400 3450
Connection ~ 9400 3450
$Comp
L power:GND #PWR016
U 1 1 61F9AE90
P 8200 3950
AR Path="/61F9AE90" Ref="#PWR016"  Part="1" 
AR Path="/61EDC519/61F9AE90" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE90" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE90" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 8200 3700 50  0001 C CNN
F 1 "GND" H 8205 3777 50  0000 C CNN
F 2 "" H 8200 3950 50  0001 C CNN
F 3 "" H 8200 3950 50  0001 C CNN
	1    8200 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 61F9AE96
P 8600 3950
AR Path="/61F9AE96" Ref="#PWR017"  Part="1" 
AR Path="/61EDC519/61F9AE96" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE96" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE96" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 8600 3700 50  0001 C CNN
F 1 "GND" H 8605 3777 50  0000 C CNN
F 2 "" H 8600 3950 50  0001 C CNN
F 3 "" H 8600 3950 50  0001 C CNN
	1    8600 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR018
U 1 1 61F9AE9C
P 9000 3950
AR Path="/61F9AE9C" Ref="#PWR018"  Part="1" 
AR Path="/61EDC519/61F9AE9C" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AE9C" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AE9C" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 9000 3700 50  0001 C CNN
F 1 "GND" H 9005 3777 50  0000 C CNN
F 2 "" H 9000 3950 50  0001 C CNN
F 3 "" H 9000 3950 50  0001 C CNN
	1    9000 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 61F9AEA2
P 9400 3950
AR Path="/61F9AEA2" Ref="#PWR019"  Part="1" 
AR Path="/61EDC519/61F9AEA2" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AEA2" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AEA2" Ref="#PWR019"  Part="1" 
F 0 "#PWR019" H 9400 3700 50  0001 C CNN
F 1 "GND" H 9405 3777 50  0000 C CNN
F 2 "" H 9400 3950 50  0001 C CNN
F 3 "" H 9400 3950 50  0001 C CNN
	1    9400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 3950 9400 3850
Wire Wire Line
	9000 3850 9000 3950
Wire Wire Line
	8600 3950 8600 3850
Wire Wire Line
	8200 3850 8200 3950
$Comp
L Device:C C8
U 1 1 61F9AEAC
P 8600 3700
AR Path="/61F9AEAC" Ref="C8"  Part="1" 
AR Path="/61EDC519/61F9AEAC" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AEAC" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AEAC" Ref="C8"  Part="1" 
F 0 "C8" H 8715 3746 50  0000 L CNN
F 1 "0.1u" H 8715 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8638 3550 50  0001 C CNN
F 3 "~" H 8600 3700 50  0001 C CNN
	1    8600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 61F9AEB2
P 9400 3700
AR Path="/61F9AEB2" Ref="C10"  Part="1" 
AR Path="/61EDC519/61F9AEB2" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AEB2" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AEB2" Ref="C10"  Part="1" 
F 0 "C10" H 9515 3746 50  0000 L CNN
F 1 "0.1u" H 9515 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9438 3550 50  0001 C CNN
F 3 "~" H 9400 3700 50  0001 C CNN
	1    9400 3700
	1    0    0    -1  
$EndComp
Connection ~ 8600 3250
Connection ~ 9000 3350
$Comp
L Device:C C9
U 1 1 61F9AEBA
P 9000 3700
AR Path="/61F9AEBA" Ref="C9"  Part="1" 
AR Path="/61EDC519/61F9AEBA" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AEBA" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AEBA" Ref="C9"  Part="1" 
F 0 "C9" H 9115 3746 50  0000 L CNN
F 1 "0.1u" H 9115 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9038 3550 50  0001 C CNN
F 3 "~" H 9000 3700 50  0001 C CNN
	1    9000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3350 9000 3550
Wire Wire Line
	8600 3250 8600 3550
Connection ~ 8200 3150
Wire Wire Line
	8200 3150 8200 3550
$Comp
L Device:LED_ABGR D5
U 1 1 61F9AEC4
P 2050 5700
AR Path="/61F9AEC4" Ref="D5"  Part="1" 
AR Path="/61EDC519/61F9AEC4" Ref="D?"  Part="1" 
AR Path="/61F60426/61F9AEC4" Ref="D?"  Part="1" 
AR Path="/61F60BF1/61F9AEC4" Ref="D5"  Part="1" 
F 0 "D5" H 2050 6197 50  0000 C CNN
F 1 "APTF1616LSEEZGKQBKC" H 2050 6106 50  0000 C CNN
F 2 "original:APTF1616LSEEZGKQBKC" H 2050 5650 50  0001 C CNN
F 3 "~" H 2050 5650 50  0001 C CNN
	1    2050 5700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2050 5400 2050 5500
$Comp
L Device:R R17
U 1 1 61F9AECB
P 1750 6250
AR Path="/61F9AECB" Ref="R17"  Part="1" 
AR Path="/61EDC519/61F9AECB" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AECB" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AECB" Ref="R17"  Part="1" 
F 0 "R17" V 1650 6250 50  0000 C CNN
F 1 "1.5k" V 1850 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1680 6250 50  0001 C CNN
F 3 "~" H 1750 6250 50  0001 C CNN
	1    1750 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61F9AED1
P 2050 6250
AR Path="/61F9AED1" Ref="R18"  Part="1" 
AR Path="/61EDC519/61F9AED1" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AED1" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AED1" Ref="R18"  Part="1" 
F 0 "R18" V 1950 6250 50  0000 C CNN
F 1 "1.2k" V 2150 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1980 6250 50  0001 C CNN
F 3 "~" H 2050 6250 50  0001 C CNN
	1    2050 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R19
U 1 1 61F9AED7
P 2350 6250
AR Path="/61F9AED7" Ref="R19"  Part="1" 
AR Path="/61EDC519/61F9AED7" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AED7" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AED7" Ref="R19"  Part="1" 
F 0 "R19" V 2250 6250 50  0000 C CNN
F 1 "1.2k" V 2450 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2280 6250 50  0001 C CNN
F 3 "~" H 2350 6250 50  0001 C CNN
	1    2350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6000 1850 5900
Wire Wire Line
	2250 6000 2250 5900
Wire Wire Line
	2350 6100 2350 6000
Wire Wire Line
	2350 6000 2250 6000
Wire Wire Line
	2050 5900 2050 6100
Wire Wire Line
	1750 6100 1750 6000
Wire Wire Line
	1750 6000 1850 6000
Entry Wire Line
	7850 3250 7750 3150
Entry Wire Line
	7850 3350 7750 3250
Entry Wire Line
	7850 3450 7750 3350
Wire Wire Line
	7850 3150 8200 3150
Wire Wire Line
	7850 3250 8600 3250
Wire Wire Line
	7850 3350 9000 3350
Wire Wire Line
	7850 3450 9400 3450
Text Label 7850 3450 0    50   ~ 0
Rotary1
Text Label 7850 3350 0    50   ~ 0
Rotary2
Text Label 7850 3250 0    50   ~ 0
Rotary4
Text Label 7850 3150 0    50   ~ 0
Rotary8
Entry Wire Line
	7750 3050 7850 3150
Wire Wire Line
	9750 3550 9750 3950
Wire Wire Line
	9400 3450 9850 3450
Wire Wire Line
	9000 3350 9850 3350
Wire Wire Line
	8600 3250 9850 3250
Wire Wire Line
	8200 3150 9850 3150
Wire Wire Line
	4150 6650 4150 6800
Wire Wire Line
	4150 5500 4150 5600
$Comp
L Device:R R13
U 1 1 61F9AEF7
P 4150 5750
AR Path="/61F9AEF7" Ref="R13"  Part="1" 
AR Path="/61EDC519/61F9AEF7" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AEF7" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AEF7" Ref="R13"  Part="1" 
F 0 "R13" H 4220 5796 50  0000 L CNN
F 1 "16k" H 4220 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 5750 50  0001 C CNN
F 3 "~" H 4150 5750 50  0001 C CNN
	1    4150 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 61F9AEFD
P 4150 6800
AR Path="/61F9AEFD" Ref="#PWR044"  Part="1" 
AR Path="/61EDC519/61F9AEFD" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AEFD" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AEFD" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 4150 6550 50  0001 C CNN
F 1 "GND" H 4155 6627 50  0000 C CNN
F 2 "" H 4150 6800 50  0001 C CNN
F 3 "" H 4150 6800 50  0001 C CNN
	1    4150 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 61F9AF03
P 4150 6500
AR Path="/61F9AF03" Ref="R20"  Part="1" 
AR Path="/61EDC519/61F9AF03" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AF03" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AF03" Ref="R20"  Part="1" 
F 0 "R20" H 4220 6546 50  0000 L CNN
F 1 "50k" H 4220 6455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4080 6500 50  0001 C CNN
F 3 "~" H 4150 6500 50  0001 C CNN
	1    4150 6500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 61F9AF09
P 2750 3150
AR Path="/61F9AF09" Ref="#PWR015"  Part="1" 
AR Path="/61EDC519/61F9AF09" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AF09" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AF09" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 2750 3000 50  0001 C CNN
F 1 "+3.3V" H 2765 3323 50  0000 C CNN
F 2 "" H 2750 3150 50  0001 C CNN
F 3 "" H 2750 3150 50  0001 C CNN
	1    2750 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 61F9AF0F
P 2750 3400
AR Path="/61F9AF0F" Ref="R7"  Part="1" 
AR Path="/61EDC519/61F9AF0F" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AF0F" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AF0F" Ref="R7"  Part="1" 
F 0 "R7" H 2820 3446 50  0000 L CNN
F 1 "10k" H 2820 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2680 3400 50  0001 C CNN
F 3 "~" H 2750 3400 50  0001 C CNN
	1    2750 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C13
U 1 1 61F9AF15
P 2400 3950
AR Path="/61F9AF15" Ref="C13"  Part="1" 
AR Path="/61EDC519/61F9AF15" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AF15" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AF15" Ref="C13"  Part="1" 
F 0 "C13" H 2515 3996 50  0000 L CNN
F 1 "0.1u" H 2515 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2438 3800 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 3250 2750 3150
Wire Wire Line
	2750 3650 2400 3650
Wire Wire Line
	2400 3650 2400 3800
Wire Wire Line
	2750 3750 2750 3650
Connection ~ 2750 3650
Wire Wire Line
	2750 3650 2750 3550
Wire Wire Line
	2750 4250 2400 4250
Wire Wire Line
	2400 4250 2400 4100
Wire Wire Line
	2750 4150 2750 4250
$Comp
L power:GND #PWR025
U 1 1 61F9AF24
P 2750 4350
AR Path="/61F9AF24" Ref="#PWR025"  Part="1" 
AR Path="/61EDC519/61F9AF24" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AF24" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AF24" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 2750 4100 50  0001 C CNN
F 1 "GND" H 2755 4177 50  0000 C CNN
F 2 "" H 2750 4350 50  0001 C CNN
F 3 "" H 2750 4350 50  0001 C CNN
	1    2750 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4350 2750 4250
Connection ~ 2750 4250
$Comp
L power:+3.3V #PWR013
U 1 1 61F9AF2C
P 1250 3150
AR Path="/61F9AF2C" Ref="#PWR013"  Part="1" 
AR Path="/61EDC519/61F9AF2C" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AF2C" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AF2C" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 1250 3000 50  0001 C CNN
F 1 "+3.3V" H 1265 3323 50  0000 C CNN
F 2 "" H 1250 3150 50  0001 C CNN
F 3 "" H 1250 3150 50  0001 C CNN
	1    1250 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 61F9AF32
P 1250 3400
AR Path="/61F9AF32" Ref="R5"  Part="1" 
AR Path="/61EDC519/61F9AF32" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AF32" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AF32" Ref="R5"  Part="1" 
F 0 "R5" H 1320 3446 50  0000 L CNN
F 1 "10k" H 1320 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1180 3400 50  0001 C CNN
F 3 "~" H 1250 3400 50  0001 C CNN
	1    1250 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 61F9AF38
P 900 3950
AR Path="/61F9AF38" Ref="C11"  Part="1" 
AR Path="/61EDC519/61F9AF38" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AF38" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AF38" Ref="C11"  Part="1" 
F 0 "C11" H 1015 3996 50  0000 L CNN
F 1 "0.1u" H 1015 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 938 3800 50  0001 C CNN
F 3 "~" H 900 3950 50  0001 C CNN
	1    900  3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 3250 1250 3150
Wire Wire Line
	1250 3650 900  3650
Wire Wire Line
	900  3650 900  3800
Wire Wire Line
	1250 3750 1250 3650
Connection ~ 1250 3650
Wire Wire Line
	1250 3650 1250 3550
Wire Wire Line
	1250 4250 900  4250
Wire Wire Line
	900  4250 900  4100
Wire Wire Line
	1250 4150 1250 4250
$Comp
L power:GND #PWR023
U 1 1 61F9AF47
P 1250 4350
AR Path="/61F9AF47" Ref="#PWR023"  Part="1" 
AR Path="/61EDC519/61F9AF47" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AF47" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AF47" Ref="#PWR023"  Part="1" 
F 0 "#PWR023" H 1250 4100 50  0001 C CNN
F 1 "GND" H 1255 4177 50  0000 C CNN
F 2 "" H 1250 4350 50  0001 C CNN
F 3 "" H 1250 4350 50  0001 C CNN
	1    1250 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 4350 1250 4250
Connection ~ 1250 4250
Wire Wire Line
	1650 6500 1750 6500
Wire Wire Line
	1750 6500 1750 6400
Wire Wire Line
	2050 6400 2050 6600
Wire Wire Line
	2050 6600 1650 6600
Wire Wire Line
	1650 6700 2350 6700
Wire Wire Line
	2350 6700 2350 6400
Wire Wire Line
	1650 6900 2950 6900
$Comp
L Connector_Generic:Conn_01x03 J2
U 1 1 61F9AF56
P 8950 1350
F 0 "J2" H 9030 1392 50  0000 L CNN
F 1 "PA3" H 9030 1301 50  0000 L CNN
F 2 "PA:PA_01x03" H 8950 1350 50  0001 C CNN
F 3 "~" H 8950 1350 50  0001 C CNN
	1    8950 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 61F9AF5C
P 8650 1150
F 0 "#PWR05" H 8650 1000 50  0001 C CNN
F 1 "+5V" H 8665 1323 50  0000 C CNN
F 2 "" H 8650 1150 50  0001 C CNN
F 3 "" H 8650 1150 50  0001 C CNN
	1    8650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1150 8650 1250
Wire Wire Line
	8650 1250 8750 1250
$Comp
L power:+3.3V #PWR04
U 1 1 61F9AF64
P 8450 1150
F 0 "#PWR04" H 8450 1000 50  0001 C CNN
F 1 "+3.3V" H 8465 1323 50  0000 C CNN
F 2 "" H 8450 1150 50  0001 C CNN
F 3 "" H 8450 1150 50  0001 C CNN
	1    8450 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 61F9AF6A
P 8650 1550
F 0 "#PWR06" H 8650 1300 50  0001 C CNN
F 1 "GND" H 8655 1377 50  0000 C CNN
F 2 "" H 8650 1550 50  0001 C CNN
F 3 "" H 8650 1550 50  0001 C CNN
	1    8650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1550 8650 1450
Wire Wire Line
	8650 1450 8750 1450
Wire Wire Line
	8450 1150 8450 1350
Wire Wire Line
	8450 1350 8750 1350
$Comp
L Device:R_Pack04 RN1
U 1 1 61F9AF74
P 8400 2550
F 0 "RN1" H 8588 2596 50  0000 L CNN
F 1 "10k" H 8588 2505 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" V 8675 2550 50  0001 C CNN
F 3 "~" H 8400 2550 50  0001 C CNN
	1    8400 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2750 8500 2850
Wire Wire Line
	8400 2750 8400 2950
Wire Wire Line
	9000 2950 9000 3350
Wire Wire Line
	9400 2850 9400 3450
Wire Wire Line
	8200 2350 8200 2250
Wire Wire Line
	8200 2250 8300 2250
Wire Wire Line
	8500 2250 8500 2350
Wire Wire Line
	8300 2250 8300 2350
Connection ~ 8300 2250
Wire Wire Line
	8400 2250 8400 2350
Connection ~ 8400 2250
Wire Wire Line
	8400 2250 8500 2250
Wire Wire Line
	8300 2250 8400 2250
$Comp
L power:+3.3V #PWR011
U 1 1 61F9AF87
P 8200 2150
F 0 "#PWR011" H 8200 2000 50  0001 C CNN
F 1 "+3.3V" H 8215 2323 50  0000 C CNN
F 2 "" H 8200 2150 50  0001 C CNN
F 3 "" H 8200 2150 50  0001 C CNN
	1    8200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2150 8200 2250
Connection ~ 8200 2250
$Comp
L power:+3.3V #PWR036
U 1 1 61F9AF8F
P 4150 5500
F 0 "#PWR036" H 4150 5350 50  0001 C CNN
F 1 "+3.3V" H 4165 5673 50  0000 C CNN
F 2 "" H 4150 5500 50  0001 C CNN
F 3 "" H 4150 5500 50  0001 C CNN
	1    4150 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR030
U 1 1 61F9AF95
P 7450 4750
F 0 "#PWR030" H 7450 4600 50  0001 C CNN
F 1 "+3.3V" H 7465 4923 50  0000 C CNN
F 2 "" H 7450 4750 50  0001 C CNN
F 3 "" H 7450 4750 50  0001 C CNN
	1    7450 4750
	1    0    0    -1  
$EndComp
Text Notes 4900 4500 0    50   ~ 0
330uA
Text Notes 8450 4500 0    50   ~ 0
330uA
$Comp
L power:+3.3V #PWR026
U 1 1 61F9AF9D
P 4850 4450
F 0 "#PWR026" H 4850 4300 50  0001 C CNN
F 1 "+3.3V" H 4865 4623 50  0000 C CNN
F 2 "" H 4850 4450 50  0001 C CNN
F 3 "" H 4850 4450 50  0001 C CNN
	1    4850 4450
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR027
U 1 1 61F9AFA3
P 8400 4450
F 0 "#PWR027" H 8400 4300 50  0001 C CNN
F 1 "+3.3V" H 8415 4623 50  0000 C CNN
F 2 "" H 8400 4450 50  0001 C CNN
F 3 "" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
Text Notes 4050 5850 1    50   ~ 0
50uA
Text Notes 7400 4850 1    50   ~ 0
50uA
Text Notes 2650 3500 1    50   ~ 0
330uA\n
Text Notes 8250 2150 0    50   ~ 0
1.32mA\n
Text Notes 1600 2850 0    200  ~ 0
Switch
Text Notes 2350 5100 0    200  ~ 0
LED
$Comp
L power:+3.3V #PWR014
U 1 1 61F9AFAF
P 2000 3150
AR Path="/61F9AFAF" Ref="#PWR014"  Part="1" 
AR Path="/61EDC519/61F9AFAF" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AFAF" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AFAF" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2000 3000 50  0001 C CNN
F 1 "+3.3V" H 2015 3323 50  0000 C CNN
F 2 "" H 2000 3150 50  0001 C CNN
F 3 "" H 2000 3150 50  0001 C CNN
	1    2000 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 61F9AFB5
P 2000 3400
AR Path="/61F9AFB5" Ref="R6"  Part="1" 
AR Path="/61EDC519/61F9AFB5" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9AFB5" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9AFB5" Ref="R6"  Part="1" 
F 0 "R6" H 2070 3446 50  0000 L CNN
F 1 "10k" H 2070 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1930 3400 50  0001 C CNN
F 3 "~" H 2000 3400 50  0001 C CNN
	1    2000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C12
U 1 1 61F9AFBB
P 1650 3950
AR Path="/61F9AFBB" Ref="C12"  Part="1" 
AR Path="/61EDC519/61F9AFBB" Ref="C?"  Part="1" 
AR Path="/61F60426/61F9AFBB" Ref="C?"  Part="1" 
AR Path="/61F60BF1/61F9AFBB" Ref="C12"  Part="1" 
F 0 "C12" H 1765 3996 50  0000 L CNN
F 1 "0.1u" H 1765 3905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1688 3800 50  0001 C CNN
F 3 "~" H 1650 3950 50  0001 C CNN
	1    1650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3250 2000 3150
Wire Wire Line
	2000 3650 1650 3650
Wire Wire Line
	1650 3650 1650 3800
Wire Wire Line
	2000 3750 2000 3650
Connection ~ 2000 3650
Wire Wire Line
	2000 3650 2000 3550
Wire Wire Line
	2000 4250 1650 4250
Wire Wire Line
	1650 4250 1650 4100
Wire Wire Line
	2000 4150 2000 4250
$Comp
L power:GND #PWR024
U 1 1 61F9AFCA
P 2000 4350
AR Path="/61F9AFCA" Ref="#PWR024"  Part="1" 
AR Path="/61EDC519/61F9AFCA" Ref="#PWR?"  Part="1" 
AR Path="/61F60426/61F9AFCA" Ref="#PWR?"  Part="1" 
AR Path="/61F60BF1/61F9AFCA" Ref="#PWR024"  Part="1" 
F 0 "#PWR024" H 2000 4100 50  0001 C CNN
F 1 "GND" H 2005 4177 50  0000 C CNN
F 2 "" H 2000 4350 50  0001 C CNN
F 3 "" H 2000 4350 50  0001 C CNN
	1    2000 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4350 2000 4250
Connection ~ 2000 4250
Text Notes 1900 3500 1    50   ~ 0
330uA\n
Text Notes 1150 3500 1    50   ~ 0
330uA\n
Wire Wire Line
	1250 3650 1500 3650
Wire Wire Line
	1500 3650 1500 3000
Wire Wire Line
	2250 3000 2250 3650
Wire Wire Line
	2250 3650 2000 3650
Wire Wire Line
	2750 3650 3000 3650
Entry Wire Line
	2250 3000 2350 2900
Entry Wire Line
	1500 3000 1600 2900
Text Notes 5700 4100 0    200  ~ 0
Driver
Text Notes 8750 2750 0    200  ~ 0
RotarySwitch
Text Label 3000 3000 3    50   ~ 0
SW1
Text Label 2250 3000 3    50   ~ 0
SW2
Text Label 1500 3000 3    50   ~ 0
SW3
Wire Wire Line
	5700 900  5700 1000
$Comp
L power:+5V #PWR02
U 1 1 61F9AFE1
P 5700 900
F 0 "#PWR02" H 5700 750 50  0001 C CNN
F 1 "+5V" H 5715 1073 50  0000 C CNN
F 2 "" H 5700 900 50  0001 C CNN
F 3 "" H 5700 900 50  0001 C CNN
	1    5700 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1500 6400 1400
Wire Wire Line
	4600 1400 4600 1500
Wire Wire Line
	4600 1000 4600 1100
Wire Wire Line
	6400 1000 6400 1100
$Comp
L Device:CP C3
U 1 1 61F9AFEB
P 6400 1250
F 0 "C3" H 6518 1296 50  0000 L CNN
F 1 "10u" H 6518 1205 50  0000 L CNN
F 2 "Capacitor:AVE106M16A12T-F" H 6438 1100 50  0001 C CNN
F 3 "~" H 6400 1250 50  0001 C CNN
	1    6400 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 61F9AFF1
P 4600 1250
F 0 "C1" H 4718 1296 50  0000 L CNN
F 1 "10u" H 4718 1205 50  0000 L CNN
F 2 "Capacitor:AVE106M16A12T-F" H 4638 1100 50  0001 C CNN
F 3 "~" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
$Comp
L Regulator:Regulator_GOI U1
U 1 1 61F9AFF7
P 5200 1100
F 0 "U1" H 5200 1465 50  0000 C CNN
F 1 "AZ1117R-5.0TRE1" H 5200 1374 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 5200 1100 50  0001 C CNN
F 3 "" H 5200 1100 50  0001 C CNN
	1    5200 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 61F9AFFD
P 7450 5000
F 0 "R10" H 7520 5046 50  0000 L CNN
F 1 "16k" H 7520 4955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7380 5000 50  0001 C CNN
F 3 "~" H 7450 5000 50  0001 C CNN
	1    7450 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5550 4950 5550
Entry Wire Line
	3000 3000 3100 2900
Wire Wire Line
	3000 3000 3000 3650
Wire Wire Line
	4850 4850 4850 4950
Wire Wire Line
	4850 4950 4950 4950
Wire Wire Line
	4150 5900 4150 6100
Wire Wire Line
	4150 6100 4450 6100
Connection ~ 4150 6100
Wire Wire Line
	4150 6100 4150 6350
Wire Wire Line
	3600 4450 4100 4450
Wire Wire Line
	3600 4350 4100 4350
Wire Wire Line
	3600 4250 4100 4250
Wire Wire Line
	3600 4150 4100 4150
Wire Wire Line
	3600 3800 4100 3800
Wire Wire Line
	3600 3700 4100 3700
Wire Wire Line
	3600 3600 4100 3600
Wire Wire Line
	3600 3500 4100 3500
Wire Wire Line
	3600 3400 4100 3400
Wire Wire Line
	3600 3300 4100 3300
Wire Wire Line
	3600 3200 4100 3200
Text Label 4100 4450 2    50   ~ 0
DRV1_EN
Text Label 4100 4350 2    50   ~ 0
DRV1_PN
Entry Wire Line
	4200 5150 4300 5250
Entry Wire Line
	4200 5050 4300 5150
Entry Wire Line
	4100 4350 4200 4450
Text Label 4100 3200 2    50   ~ 0
SW3
Text Label 4100 3300 2    50   ~ 0
SW2
Text Label 4100 3400 2    50   ~ 0
SW1
Entry Wire Line
	4100 3300 4200 3200
Entry Wire Line
	4100 3200 4200 3100
Entry Wire Line
	4100 3400 4200 3300
$Comp
L Connector_Generic:Conn_01x07 J3
U 1 1 61F9B022
P 3400 3500
F 0 "J3" H 3400 3100 50  0000 C CNN
F 1 "FFC7" V 3500 3350 50  0000 C CNN
F 2 "FFC:Molex_0545480771_01x07_P0.5mm" H 3400 3500 50  0001 C CNN
F 3 "~" H 3400 3500 50  0001 C CNN
	1    3400 3500
	-1   0    0    1   
$EndComp
Text Label 4100 3500 2    50   ~ 0
Rotary8
Text Label 4100 3600 2    50   ~ 0
Rotary4
Text Label 4100 3700 2    50   ~ 0
Rotary2
Text Label 4100 3800 2    50   ~ 0
Rotary1
Entry Wire Line
	4100 3800 4200 3700
Entry Wire Line
	4100 3700 4200 3600
Entry Wire Line
	4100 3600 4200 3500
Entry Wire Line
	4100 3500 4200 3400
Text Label 4100 4150 2    50   ~ 0
DRV2_PN
Text Label 4100 4250 2    50   ~ 0
DRV2_EN
Entry Wire Line
	4200 4050 4100 4150
Entry Wire Line
	4200 4150 4100 4250
Text Label 4300 5150 0    50   ~ 0
DRV1_EN
Text Label 4300 5250 0    50   ~ 0
DRV1_PN
Wire Wire Line
	4300 5150 4950 5150
Wire Wire Line
	4300 5250 4950 5250
Entry Bus Bus
	4100 2900 4200 3000
Entry Bus Bus
	4200 3000 4300 2900
Wire Bus Line
	4300 2900 7750 2900
Connection ~ 8400 4950
Wire Wire Line
	7850 5150 8500 5150
Wire Wire Line
	7850 5250 8500 5250
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 61F9B03E
P 3400 4350
F 0 "J4" H 3400 4050 50  0000 C CNN
F 1 "FFC4" V 3500 4250 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0040_1x04-1MP_P1.00mm_Horizontal" H 3400 4350 50  0001 C CNN
F 3 "~" H 3400 4350 50  0001 C CNN
	1    3400 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4850 4950 4850 5050
Wire Wire Line
	4850 5050 4950 5050
Connection ~ 4850 4950
Wire Wire Line
	8400 4950 8400 5050
Wire Wire Line
	8400 5050 8500 5050
Entry Wire Line
	4100 4450 4200 4550
$Comp
L Device:LED D6
U 1 1 61F9B04A
P 2600 6100
AR Path="/61F9B04A" Ref="D6"  Part="1" 
AR Path="/61EDC519/61F9B04A" Ref="D?"  Part="1" 
AR Path="/61F60426/61F9B04A" Ref="D?"  Part="1" 
AR Path="/61F60BF1/61F9B04A" Ref="D6"  Part="1" 
F 0 "D6" H 2850 6150 50  0000 R CNN
F 1 "SMLEN3WBC8W1" H 2900 5950 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2600 6100 50  0001 C CNN
F 3 "~" H 2600 6100 50  0001 C CNN
	1    2600 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R11
U 1 1 61F9B050
P 2600 5650
AR Path="/61F9B050" Ref="R11"  Part="1" 
AR Path="/61EDC519/61F9B050" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9B050" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9B050" Ref="R11"  Part="1" 
F 0 "R11" H 2670 5696 50  0000 L CNN
F 1 "470" H 2670 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2530 5650 50  0001 C CNN
F 3 "~" H 2600 5650 50  0001 C CNN
	1    2600 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5800 2600 5950
Wire Wire Line
	2600 5400 2600 5500
Wire Wire Line
	2600 6250 2600 6800
Text Notes 2600 6600 1    50   ~ 0
5mA
Wire Wire Line
	2600 6800 1650 6800
Wire Wire Line
	2950 6250 2950 6900
Text Notes 2950 6600 1    50   ~ 0
5mA
Wire Wire Line
	2950 5400 2950 5500
Wire Wire Line
	2950 5800 2950 5950
$Comp
L Device:R R12
U 1 1 61F9B05F
P 2950 5650
AR Path="/61F9B05F" Ref="R12"  Part="1" 
AR Path="/61EDC519/61F9B05F" Ref="R?"  Part="1" 
AR Path="/61F60426/61F9B05F" Ref="R?"  Part="1" 
AR Path="/61F60BF1/61F9B05F" Ref="R12"  Part="1" 
F 0 "R12" H 3020 5696 50  0000 L CNN
F 1 "470" H 3020 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2880 5650 50  0001 C CNN
F 3 "~" H 2950 5650 50  0001 C CNN
	1    2950 5650
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 61F9B065
P 2950 6100
AR Path="/61F9B065" Ref="D7"  Part="1" 
AR Path="/61EDC519/61F9B065" Ref="D?"  Part="1" 
AR Path="/61F60426/61F9B065" Ref="D?"  Part="1" 
AR Path="/61F60BF1/61F9B065" Ref="D7"  Part="1" 
F 0 "D7" H 3200 6150 50  0000 R CNN
F 1 "SMLEN3WBC8W1" H 3250 5950 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2950 6100 50  0001 C CNN
F 3 "~" H 2950 6100 50  0001 C CNN
	1    2950 6100
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J7
U 1 1 61F9B06B
P 1450 6700
F 0 "J7" V 1650 6700 50  0000 C CNN
F 1 "FFC5" V 1550 6700 50  0000 C CNN
F 2 "FFC:Molex_0545480571_01x05_P0.5mm" H 1450 6700 50  0001 C CNN
F 3 "~" H 1450 6700 50  0001 C CNN
	1    1450 6700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 1000 4600 1000
$Comp
L Device:R R3
U 1 1 61F9B072
P 6050 1350
F 0 "R3" H 6120 1396 50  0000 L CNN
F 1 "680" H 6120 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5980 1350 50  0001 C CNN
F 3 "~" H 6050 1350 50  0001 C CNN
	1    6050 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61F9B078
P 6050 1850
F 0 "D3" V 6089 1732 50  0000 R CNN
F 1 "Orange" V 5998 1732 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 6050 1850 50  0001 C CNN
F 3 "~" H 6050 1850 50  0001 C CNN
	1    6050 1850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 1500 6050 1700
Wire Wire Line
	6050 1000 6050 1200
Wire Wire Line
	5700 1000 6050 1000
Connection ~ 6050 1000
Wire Wire Line
	6050 1000 6400 1000
Wire Wire Line
	8200 2750 8200 3150
Wire Wire Line
	8500 2850 9400 2850
Wire Wire Line
	8400 2950 9000 2950
Wire Wire Line
	8300 3050 8600 3050
Wire Wire Line
	8600 3050 8600 3250
Wire Wire Line
	8300 2750 8300 3050
Wire Wire Line
	7850 2000 7850 2100
$Comp
L power:GND #PWR010
U 1 1 61F9B08A
P 7850 2100
F 0 "#PWR010" H 7850 1850 50  0001 C CNN
F 1 "GND" H 7855 1927 50  0000 C CNN
F 2 "" H 7850 2100 50  0001 C CNN
F 3 "" H 7850 2100 50  0001 C CNN
	1    7850 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2000 6050 2100
$Comp
L power:GND #PWR09
U 1 1 61F9B091
P 6050 2100
F 0 "#PWR09" H 6050 1850 50  0001 C CNN
F 1 "GND" H 6055 1927 50  0000 C CNN
F 2 "" H 6050 2100 50  0001 C CNN
F 3 "" H 6050 2100 50  0001 C CNN
	1    6050 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 61F9B097
P 5200 1600
F 0 "#PWR07" H 5200 1350 50  0001 C CNN
F 1 "GND" H 5205 1427 50  0000 C CNN
F 2 "" H 5200 1600 50  0001 C CNN
F 3 "" H 5200 1600 50  0001 C CNN
	1    5200 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 61F9B09D
P 7000 1600
F 0 "#PWR08" H 7000 1350 50  0001 C CNN
F 1 "GND" H 7005 1427 50  0000 C CNN
F 2 "" H 7000 1600 50  0001 C CNN
F 3 "" H 7000 1600 50  0001 C CNN
	1    7000 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1000 7850 1000
Wire Wire Line
	7850 1000 7850 1200
Wire Wire Line
	7850 1500 7850 1700
$Comp
L Device:LED D4
U 1 1 61F9B0A6
P 7850 1850
F 0 "D4" V 7889 1732 50  0000 R CNN
F 1 "Yellow" V 7798 1732 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 7850 1850 50  0001 C CNN
F 3 "~" H 7850 1850 50  0001 C CNN
	1    7850 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 61F9B0AC
P 7850 1350
F 0 "R4" H 7920 1396 50  0000 L CNN
F 1 "270" H 7920 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 1350 50  0001 C CNN
F 3 "~" H 7850 1350 50  0001 C CNN
	1    7850 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C4
U 1 1 61F9B0B2
P 7500 1250
F 0 "C4" H 7618 1296 50  0000 L CNN
F 1 "22u" H 7618 1205 50  0000 L CNN
F 2 "Capacitor:865090168010" H 7538 1100 50  0001 C CNN
F 3 "~" H 7500 1250 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1000 7500 1100
$Comp
L power:+3.3V #PWR03
U 1 1 61F9B0B9
P 7500 900
F 0 "#PWR03" H 7500 750 50  0001 C CNN
F 1 "+3.3V" H 7515 1073 50  0000 C CNN
F 2 "" H 7500 900 50  0001 C CNN
F 3 "" H 7500 900 50  0001 C CNN
	1    7500 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 900  7500 1000
Connection ~ 7500 1000
Text Notes 1750 6100 0    50   ~ 0
2mA
Text Notes 2050 6100 0    50   ~ 0
2mA
Text Notes 2350 6100 0    50   ~ 0
2mA\n
$Comp
L power:+5V #PWR033
U 1 1 61F9B0C4
P 2050 5400
F 0 "#PWR033" H 2050 5250 50  0001 C CNN
F 1 "+5V" H 2065 5573 50  0000 C CNN
F 2 "" H 2050 5400 50  0001 C CNN
F 3 "" H 2050 5400 50  0001 C CNN
	1    2050 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR034
U 1 1 61F9B0CA
P 2600 5400
F 0 "#PWR034" H 2600 5250 50  0001 C CNN
F 1 "+5V" H 2615 5573 50  0000 C CNN
F 2 "" H 2600 5400 50  0001 C CNN
F 3 "" H 2600 5400 50  0001 C CNN
	1    2600 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 61F9B0D0
P 2950 5400
F 0 "#PWR035" H 2950 5250 50  0001 C CNN
F 1 "+5V" H 2965 5573 50  0000 C CNN
F 2 "" H 2950 5400 50  0001 C CNN
F 3 "" H 2950 5400 50  0001 C CNN
	1    2950 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 61F9B0D6
P 5700 1250
F 0 "C2" H 5818 1296 50  0000 L CNN
F 1 "22u" H 5818 1205 50  0000 L CNN
F 2 "Capacitor:865090168010" H 5738 1100 50  0001 C CNN
F 3 "~" H 5700 1250 50  0001 C CNN
	1    5700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 1100 5700 1000
Wire Wire Line
	5700 1400 5700 1500
Connection ~ 5700 1000
Wire Wire Line
	3600 1000 3800 1000
$Comp
L Device:D D1
U 1 1 61F9B0E0
P 3950 1000
F 0 "D1" H 3950 783 50  0000 C CNN
F 1 "SS2040FL-AU_R1_000A1" H 3950 874 50  0000 C CNN
F 2 "original:SOD-123FL" H 3950 1000 50  0001 C CNN
F 3 "~" H 3950 1000 50  0001 C CNN
	1    3950 1000
	-1   0    0    1   
$EndComp
NoConn ~ 1900 1700
Wire Wire Line
	2000 2200 2000 2100
Wire Wire Line
	2000 2200 2800 2200
Connection ~ 2000 2200
Wire Wire Line
	2000 2300 2000 2200
Connection ~ 3600 1000
Wire Wire Line
	3250 1000 3600 1000
Connection ~ 3250 2200
Wire Wire Line
	3600 2200 3250 2200
Wire Wire Line
	2300 1000 2800 1000
Connection ~ 3250 1000
Connection ~ 2800 2200
Wire Wire Line
	3250 2200 3250 1750
Wire Wire Line
	2800 2200 3250 2200
Connection ~ 2800 1000
Wire Wire Line
	3250 1000 2800 1000
Wire Wire Line
	3250 1450 3250 1000
$Comp
L Device:C C6
U 1 1 61F9B0F7
P 3250 1600
F 0 "C6" H 3365 1646 50  0000 L CNN
F 1 "0.1u" H 3365 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3288 1450 50  0001 C CNN
F 3 "~" H 3250 1600 50  0001 C CNN
	1    3250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1450 2800 1000
Wire Wire Line
	2800 2200 2800 1750
$Comp
L Device:CP C5
U 1 1 61F9B102
P 2800 1600
F 0 "C5" H 2918 1646 50  0000 L CNN
F 1 "220u" H 2918 1555 50  0000 L CNN
F 2 "Capacitor:EEE-1AA221XP" H 2838 1450 50  0001 C CNN
F 3 "~" H 2800 1600 50  0001 C CNN
F 4 "C" H 2800 1600 50  0001 C CNN "Spice_Primitive"
F 5 "220u" H 2800 1600 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2800 1600 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 2000 3600 2200
Wire Wire Line
	3600 1000 3600 1200
Wire Wire Line
	3600 1500 3600 1700
$Comp
L Device:LED D2
U 1 1 61F9B10B
P 3600 1850
F 0 "D2" V 3639 1732 50  0000 R CNN
F 1 "Red" V 3548 1732 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 3600 1850 50  0001 C CNN
F 3 "~" H 3600 1850 50  0001 C CNN
	1    3600 1850
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 61F9B111
P 3600 1350
F 0 "R2" H 3670 1396 50  0000 L CNN
F 1 "2k" H 3670 1305 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 3530 1350 50  0001 C CNN
F 3 "~" H 3600 1350 50  0001 C CNN
	1    3600 1350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 61F9B117
P 2000 1900
F 0 "SW1" V 2046 1712 50  0000 R CNN
F 1 "SW_DPDT_x2" V 1955 1712 50  0000 R CNN
F 2 "Switch:SSAJ120100" H 2000 1900 50  0001 C CNN
F 3 "~" H 2000 1900 50  0001 C CNN
	1    2000 1900
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 61F9B11D
P 1000 1300
F 0 "J1" H 918 975 50  0000 C CNN
F 1 "ILG2" H 918 1066 50  0000 C CNN
F 2 "ILG:ILG_01x02" H 1000 1300 50  0001 C CNN
F 3 "~" H 1000 1300 50  0001 C CNN
	1    1000 1300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 61F9B123
P 2000 2300
F 0 "#PWR012" H 2000 2050 50  0001 C CNN
F 1 "GND" H 2005 2127 50  0000 C CNN
F 2 "" H 2000 2300 50  0001 C CNN
F 3 "" H 2000 2300 50  0001 C CNN
	1    2000 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR01
U 1 1 61F9B129
P 3250 900
F 0 "#PWR01" H 3250 750 50  0001 C CNN
F 1 "+BATT" H 3265 1073 50  0000 C CNN
F 2 "" H 3250 900 50  0001 C CNN
F 3 "" H 3250 900 50  0001 C CNN
	1    3250 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 900  3250 1000
Text Notes 850  850  0    200  ~ 0
Power
Wire Wire Line
	1200 1200 1450 1200
Wire Wire Line
	1450 1300 1200 1300
$Comp
L Device:R R1
U 1 1 61F9B133
P 1650 1250
F 0 "R1" H 1720 1296 50  0000 L CNN
F 1 "10k" H 1720 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1580 1250 50  0001 C CNN
F 3 "~" H 1650 1250 50  0001 C CNN
	1    1650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 1100 1650 1000
Wire Wire Line
	1650 1400 1650 1500
Wire Wire Line
	1450 1300 1450 1450
Wire Wire Line
	1450 1200 1450 1000
Wire Wire Line
	1450 1000 1650 1000
$Comp
L Device:Q_PMOS_GDS Q1
U 1 1 61F9B13E
P 2100 1100
F 0 "Q1" V 2442 1100 50  0000 C CNN
F 1 "CXDM4060P" V 2351 1100 50  0000 C CNN
F 2 "original:SOT-89" H 2300 1200 50  0001 C CNN
F 3 "~" H 2100 1100 50  0001 C CNN
	1    2100 1100
	0    1    -1   0   
$EndComp
Connection ~ 1650 1000
Wire Wire Line
	1650 1000 1900 1000
Wire Wire Line
	2100 1300 2100 1500
Wire Wire Line
	1650 1500 2100 1500
Connection ~ 2100 1500
Wire Wire Line
	2100 1500 2100 1700
Wire Wire Line
	4200 1000 4100 1000
$Comp
L Device:Ferrite_Bead FB1
U 1 1 61F9B14B
P 4350 1000
F 0 "FB1" V 4076 1000 50  0000 C CNN
F 1 "470" V 4150 1000 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 4280 1000 50  0001 C CNN
F 3 "~" H 4350 1000 50  0001 C CNN
	1    4350 1000
	0    1    1    0   
$EndComp
$Comp
L Regulator:Regulator_GOI U2
U 1 1 61F9B151
P 7000 1100
F 0 "U2" H 7000 1465 50  0000 C CNN
F 1 "AZ1117IH-3.3TRG1" H 7000 1374 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6150 1450 50  0001 C CNN
F 3 "" H 6150 1450 50  0001 C CNN
	1    7000 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2200 2000 2200
$Comp
L power:+BATT #PWR045
U 1 1 61F9B158
P 5150 6950
F 0 "#PWR045" H 5150 6800 50  0001 C CNN
F 1 "+BATT" H 5165 7123 50  0000 C CNN
F 2 "" H 5150 6950 50  0001 C CNN
F 3 "" H 5150 6950 50  0001 C CNN
	1    5150 6950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61F9B15E
P 5150 7450
F 0 "#FLG02" H 5150 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 7623 50  0000 C CNN
F 2 "" H 5150 7450 50  0001 C CNN
F 3 "~" H 5150 7450 50  0001 C CNN
	1    5150 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 7450 5150 6950
$Comp
L power:PWR_FLAG #FLG03
U 1 1 61F9B165
P 5650 7450
F 0 "#FLG03" H 5650 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5650 7623 50  0000 C CNN
F 2 "" H 5650 7450 50  0001 C CNN
F 3 "~" H 5650 7450 50  0001 C CNN
	1    5650 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 7450 5650 6950
$Comp
L power:PWR_FLAG #FLG04
U 1 1 61F9B16C
P 6150 7450
F 0 "#FLG04" H 6150 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6150 7623 50  0000 C CNN
F 2 "" H 6150 7450 50  0001 C CNN
F 3 "~" H 6150 7450 50  0001 C CNN
	1    6150 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 7450 6150 6950
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61F9B173
P 6650 6950
F 0 "#FLG01" H 6650 7025 50  0001 C CNN
F 1 "PWR_FLAG" H 6650 7123 50  0000 C CNN
F 2 "" H 6650 6950 50  0001 C CNN
F 3 "~" H 6650 6950 50  0001 C CNN
	1    6650 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 6950 6650 7450
Wire Wire Line
	4450 5350 4950 5350
Wire Wire Line
	4450 6100 4450 5350
$Comp
L power:+5V #PWR046
U 1 1 61F9B17C
P 5650 6950
F 0 "#PWR046" H 5650 6800 50  0001 C CNN
F 1 "+5V" H 5665 7123 50  0000 C CNN
F 2 "" H 5650 6950 50  0001 C CNN
F 3 "" H 5650 6950 50  0001 C CNN
	1    5650 6950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR047
U 1 1 61F9B182
P 6150 6950
F 0 "#PWR047" H 6150 6800 50  0001 C CNN
F 1 "+3.3V" H 6165 7123 50  0000 C CNN
F 2 "" H 6150 6950 50  0001 C CNN
F 3 "" H 6150 6950 50  0001 C CNN
	1    6150 6950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 61F9B188
P 6650 7450
F 0 "#PWR048" H 6650 7200 50  0001 C CNN
F 1 "GND" H 6655 7277 50  0000 C CNN
F 2 "" H 6650 7450 50  0001 C CNN
F 3 "" H 6650 7450 50  0001 C CNN
	1    6650 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1400 5200 1500
Wire Wire Line
	7000 1400 7000 1500
Wire Wire Line
	7500 1000 7400 1000
Wire Wire Line
	6600 1000 6400 1000
Connection ~ 6400 1000
Wire Wire Line
	5600 1000 5700 1000
Wire Wire Line
	4800 1000 4600 1000
Connection ~ 4600 1000
Wire Wire Line
	4600 1500 5200 1500
Wire Wire Line
	6400 1500 7000 1500
Wire Wire Line
	7500 1400 7500 1500
Connection ~ 5200 1500
Wire Wire Line
	5200 1500 5200 1600
Wire Wire Line
	5200 1500 5700 1500
Connection ~ 7000 1500
Wire Wire Line
	7000 1500 7000 1600
Wire Wire Line
	7000 1500 7500 1500
$Comp
L SKRPABE010:Switch SW3
U 1 1 61F9B19F
P 1250 3950
F 0 "SW3" V 1204 4098 50  0000 L CNN
F 1 "SKRPABE010" V 1295 4098 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 1250 3950 50  0001 C CNN
F 3 "" H 1250 3950 50  0001 C CNN
	1    1250 3950
	0    1    1    0   
$EndComp
$Comp
L SKRPABE010:Switch SW4
U 1 1 61F9B1A5
P 2000 3950
F 0 "SW4" V 1954 4098 50  0000 L CNN
F 1 "SKRPABE010" V 2045 4098 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 2000 3950 50  0001 C CNN
F 3 "" H 2000 3950 50  0001 C CNN
	1    2000 3950
	0    1    1    0   
$EndComp
$Comp
L SKRPABE010:Switch SW5
U 1 1 61F9B1AB
P 2750 3950
F 0 "SW5" V 2704 4098 50  0000 L CNN
F 1 "SKRPABE010" V 2795 4098 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 2750 3950 50  0001 C CNN
F 3 "" H 2750 3950 50  0001 C CNN
	1    2750 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1750 1450 2200
Wire Bus Line
	1600 2900 4100 2900
Wire Bus Line
	7750 2900 7750 5150
Wire Bus Line
	4200 3000 4200 5150
$EndSCHEMATC
