EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title "Murakumo Motor Circuit"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R?
U 1 1 61EEE661
P 2950 4600
AR Path="/61EEE661" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE661" Ref="R?"  Part="1" 
F 0 "R?" H 3020 4646 50  0000 L CNN
F 1 "Ripropi" H 3020 4555 50  0000 L CNN
F 2 "" V 2880 4600 50  0001 C CNN
F 3 "~" H 2950 4600 50  0001 C CNN
	1    2950 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE667
P 2950 4850
AR Path="/61EEE667" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE667" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2950 4600 50  0001 C CNN
F 1 "GND" H 2955 4677 50  0000 C CNN
F 2 "" H 2950 4850 50  0001 C CNN
F 3 "" H 2950 4850 50  0001 C CNN
	1    2950 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE673
P 3350 3500
AR Path="/61EEE673" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE673" Ref="R?"  Part="1" 
F 0 "R?" H 3420 3546 50  0000 L CNN
F 1 "10k" H 3420 3455 50  0000 L CNN
F 2 "" V 3280 3500 50  0001 C CNN
F 3 "~" H 3350 3500 50  0001 C CNN
	1    3350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4550 3350 4550
Wire Wire Line
	3350 3650 3350 3750
Wire Wire Line
	3350 3250 3350 3350
Wire Wire Line
	4350 4550 4450 4550
Wire Wire Line
	4650 4350 4650 4450
Wire Wire Line
	4350 4350 4650 4350
Wire Wire Line
	4350 4450 4650 4450
Connection ~ 4650 4450
Wire Wire Line
	4350 4250 4850 4250
$Comp
L Device:C C?
U 1 1 61EEE691
P 4650 3450
AR Path="/61EEE691" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE691" Ref="C?"  Part="1" 
F 0 "C?" H 4765 3496 50  0000 L CNN
F 1 "0.1u" H 4765 3405 50  0000 L CNN
F 2 "" H 4688 3300 50  0001 C CNN
F 3 "~" H 4650 3450 50  0001 C CNN
	1    4650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61EEE697
P 5050 3300
AR Path="/61EEE697" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE697" Ref="C?"  Part="1" 
F 0 "C?" H 5165 3346 50  0000 L CNN
F 1 "0.1u" H 5165 3255 50  0000 L CNN
F 2 "" H 5088 3150 50  0001 C CNN
F 3 "~" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE69D
P 5050 3550
AR Path="/61EEE69D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE69D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 3300 50  0001 C CNN
F 1 "GND" H 5055 3377 50  0000 C CNN
F 2 "" H 5050 3550 50  0001 C CNN
F 3 "" H 5050 3550 50  0001 C CNN
	1    5050 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61EEE6A3
P 5450 3300
AR Path="/61EEE6A3" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE6A3" Ref="C?"  Part="1" 
F 0 "C?" H 5568 3346 50  0000 L CNN
F 1 "100u" H 5568 3255 50  0000 L CNN
F 2 "" H 5488 3150 50  0001 C CNN
F 3 "~" H 5450 3300 50  0001 C CNN
	1    5450 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6A9
P 5450 3550
AR Path="/61EEE6A9" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 3300 50  0001 C CNN
F 1 "GND" H 5455 3377 50  0000 C CNN
F 2 "" H 5450 3550 50  0001 C CNN
F 3 "" H 5450 3550 50  0001 C CNN
	1    5450 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61EEE6AF
P 5450 2950
AR Path="/61EEE6AF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5450 2800 50  0001 C CNN
F 1 "+BATT" H 5465 3123 50  0000 C CNN
F 2 "" H 5450 2950 50  0001 C CNN
F 3 "" H 5450 2950 50  0001 C CNN
	1    5450 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4550 4850 4250
Wire Wire Line
	4650 4450 4650 4550
Wire Wire Line
	5450 3050 5450 3150
Wire Wire Line
	5050 3050 5050 3150
Wire Wire Line
	4450 3750 4350 3750
Wire Wire Line
	4450 3050 4450 3750
Wire Wire Line
	5050 3450 5050 3550
Wire Wire Line
	5450 3550 5450 3450
Wire Wire Line
	3350 3750 3450 3750
$Comp
L Device:R R?
U 1 1 61EEE6DA
P 2400 4550
AR Path="/61EEE6DA" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6DA" Ref="R?"  Part="1" 
F 0 "R?" H 2470 4596 50  0000 L CNN
F 1 "Rref2" H 2470 4505 50  0000 L CNN
F 2 "" V 2330 4550 50  0001 C CNN
F 3 "~" H 2400 4550 50  0001 C CNN
	1    2400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6E0
P 2400 4850
AR Path="/61EEE6E0" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2400 4600 50  0001 C CNN
F 1 "GND" H 2405 4677 50  0000 C CNN
F 2 "" H 2400 4850 50  0001 C CNN
F 3 "" H 2400 4850 50  0001 C CNN
	1    2400 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE6E8
P 2400 3800
AR Path="/61EEE6E8" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6E8" Ref="R?"  Part="1" 
F 0 "R?" H 2470 3846 50  0000 L CNN
F 1 "Rref1" H 2470 3755 50  0000 L CNN
F 2 "" V 2330 3800 50  0001 C CNN
F 3 "~" H 2400 3800 50  0001 C CNN
	1    2400 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 3550 2400 3650
Wire Wire Line
	4450 3050 4650 3050
Wire Wire Line
	4650 3300 4650 3050
Connection ~ 4650 3050
Wire Wire Line
	4650 3050 5050 3050
Wire Wire Line
	4650 3600 4650 3850
Wire Wire Line
	4650 3850 4350 3850
Connection ~ 5050 3050
Wire Wire Line
	5050 3050 5450 3050
Wire Wire Line
	5450 2950 5450 3050
Connection ~ 5450 3050
$Comp
L power:VCC #PWR?
U 1 1 61EEE701
P 2400 3550
AR Path="/61EEE701" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE701" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2400 3400 50  0001 C CNN
F 1 "VCC" H 2415 3723 50  0000 C CNN
F 2 "" H 2400 3550 50  0001 C CNN
F 3 "" H 2400 3550 50  0001 C CNN
	1    2400 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61EEE707
P 3350 3250
AR Path="/61EEE707" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE707" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 3100 50  0001 C CNN
F 1 "VCC" H 3365 3423 50  0000 C CNN
F 2 "" H 3350 3250 50  0001 C CNN
F 3 "" H 3350 3250 50  0001 C CNN
	1    3350 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J?
U 1 1 61F1B58E
P 1900 2800
F 0 "J?" H 1818 2075 50  0000 C CNN
F 1 "Conn_01x10" H 1818 2166 50  0000 C CNN
F 2 "" H 1900 2800 50  0001 C CNN
F 3 "~" H 1900 2800 50  0001 C CNN
	1    1900 2800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2400 4150 3450 4150
Entry Wire Line
	2850 4050 2750 3950
Entry Wire Line
	2850 3950 2750 3850
Entry Wire Line
	2850 3850 2750 3750
Entry Wire Line
	2850 3750 2750 3650
Entry Wire Line
	2750 3750 2850 3850
Entry Wire Line
	2650 2800 2750 2900
Entry Wire Line
	2650 2900 2750 3000
Entry Wire Line
	2650 3000 2750 3100
Entry Wire Line
	2650 3100 2750 3200
Text Label 2850 3750 0    50   ~ 0
D1_FAULT
Text Label 2850 3850 0    50   ~ 0
D1_SLEEP
Text Label 2850 3950 0    50   ~ 0
D1_IN1
Text Label 2850 4050 0    50   ~ 0
D1_IN2
Wire Wire Line
	2400 3950 2400 4150
Wire Wire Line
	2950 4450 2950 4350
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61EEE657
P 3900 4150
AR Path="/61EEE657" Ref="U?"  Part="1" 
AR Path="/61EDC519/61EEE657" Ref="U?"  Part="1" 
F 0 "U?" H 3900 4765 50  0000 C CNN
F 1 "DRV8874" H 3900 4674 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 3900 5050 50  0001 C CNN
F 3 "" H 3250 4950 50  0001 C CNN
	1    3900 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4750 4450 4550
$Comp
L power:GND #PWR?
U 1 1 61EEE6C8
P 4650 4550
AR Path="/61EEE6C8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 4300 50  0001 C CNN
F 1 "GND" H 4655 4377 50  0000 C CNN
F 2 "" H 4650 4550 50  0001 C CNN
F 3 "" H 4650 4550 50  0001 C CNN
	1    4650 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6C2
P 4850 4550
AR Path="/61EEE6C2" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4850 4300 50  0001 C CNN
F 1 "GND" H 4855 4377 50  0000 C CNN
F 2 "" H 4850 4550 50  0001 C CNN
F 3 "" H 4850 4550 50  0001 C CNN
	1    4850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 4750 3850 4850
Wire Wire Line
	3350 4750 3850 4750
Wire Wire Line
	3350 4550 3350 4750
Wire Wire Line
	3950 4750 4450 4750
Wire Wire Line
	3950 4850 3950 4750
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61EEE6B5
P 3950 5050
AR Path="/61EEE6B5" Ref="J?"  Part="1" 
AR Path="/61EDC519/61EEE6B5" Ref="J?"  Part="1" 
F 0 "J?" V 3822 5130 50  0000 L CNN
F 1 "Conn_01x02" V 3913 5130 50  0000 L CNN
F 2 "" H 3950 5050 50  0001 C CNN
F 3 "~" H 3950 5050 50  0001 C CNN
	1    3950 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 4150 4850 4150
Wire Wire Line
	4850 4150 4850 4250
Connection ~ 4850 4250
Wire Wire Line
	2950 4750 2950 4850
Wire Wire Line
	2400 4150 2400 4400
Connection ~ 2400 4150
Wire Wire Line
	2400 4700 2400 4850
Wire Wire Line
	2950 4350 3450 4350
Entry Wire Line
	2650 3200 2750 3300
Wire Wire Line
	2850 3750 3350 3750
Connection ~ 3350 3750
Wire Wire Line
	2850 3850 3450 3850
Wire Wire Line
	2850 3950 3450 3950
Wire Wire Line
	2850 4050 3450 4050
Entry Wire Line
	2750 4250 2850 4350
Wire Wire Line
	2850 4350 2950 4350
Connection ~ 2950 4350
Text Label 2850 4350 0    50   ~ 0
D1_IPROPI
Text Label 2250 2800 0    50   ~ 0
D1_FAULT
Text Label 2250 2900 0    50   ~ 0
D1_SLEEP
Text Label 2250 3000 0    50   ~ 0
D1_IN1
Text Label 2250 3100 0    50   ~ 0
D1_IN2
Wire Wire Line
	2100 2800 2650 2800
Wire Wire Line
	2100 2900 2650 2900
Wire Wire Line
	2100 3000 2650 3000
Wire Wire Line
	2100 3100 2650 3100
Wire Wire Line
	2100 3200 2650 3200
Text Label 2250 3200 0    50   ~ 0
D1_IPROPI
Wire Wire Line
	4950 4150 4950 4050
Wire Wire Line
	5100 4150 4950 4150
Wire Wire Line
	4950 3850 5100 3850
Wire Wire Line
	4950 3950 4950 3850
Wire Wire Line
	4350 3950 4950 3950
Wire Wire Line
	4950 4050 4350 4050
$Comp
L Device:C C?
U 1 1 61EEE685
P 5100 4000
AR Path="/61EEE685" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE685" Ref="C?"  Part="1" 
F 0 "C?" H 5215 4046 50  0000 L CNN
F 1 "22n" H 5215 3955 50  0000 L CNN
F 2 "" H 5138 3850 50  0001 C CNN
F 3 "~" H 5100 4000 50  0001 C CNN
	1    5100 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAAB1
P 6500 4600
AR Path="/61FAAAB1" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAB1" Ref="R?"  Part="1" 
F 0 "R?" H 6570 4646 50  0000 L CNN
F 1 "Ripropi" H 6570 4555 50  0000 L CNN
F 2 "" V 6430 4600 50  0001 C CNN
F 3 "~" H 6500 4600 50  0001 C CNN
	1    6500 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAB7
P 6500 4850
AR Path="/61FAAAB7" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAB7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6500 4600 50  0001 C CNN
F 1 "GND" H 6505 4677 50  0000 C CNN
F 2 "" H 6500 4850 50  0001 C CNN
F 3 "" H 6500 4850 50  0001 C CNN
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAABD
P 6900 3500
AR Path="/61FAAABD" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAABD" Ref="R?"  Part="1" 
F 0 "R?" H 6970 3546 50  0000 L CNN
F 1 "10k" H 6970 3455 50  0000 L CNN
F 2 "" V 6830 3500 50  0001 C CNN
F 3 "~" H 6900 3500 50  0001 C CNN
	1    6900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4550 6900 4550
Wire Wire Line
	6900 3650 6900 3750
Wire Wire Line
	6900 3250 6900 3350
Wire Wire Line
	7900 4550 8000 4550
Wire Wire Line
	8200 4350 8200 4450
Wire Wire Line
	7900 4350 8200 4350
Wire Wire Line
	7900 4450 8200 4450
Connection ~ 8200 4450
Wire Wire Line
	7900 4250 8400 4250
$Comp
L Device:C C?
U 1 1 61FAAACC
P 8200 3450
AR Path="/61FAAACC" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAACC" Ref="C?"  Part="1" 
F 0 "C?" H 8315 3496 50  0000 L CNN
F 1 "0.1u" H 8315 3405 50  0000 L CNN
F 2 "" H 8238 3300 50  0001 C CNN
F 3 "~" H 8200 3450 50  0001 C CNN
	1    8200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61FAAAD2
P 8600 3300
AR Path="/61FAAAD2" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAAD2" Ref="C?"  Part="1" 
F 0 "C?" H 8715 3346 50  0000 L CNN
F 1 "0.1u" H 8715 3255 50  0000 L CNN
F 2 "" H 8638 3150 50  0001 C CNN
F 3 "~" H 8600 3300 50  0001 C CNN
	1    8600 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAD8
P 8600 3550
AR Path="/61FAAAD8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAD8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8600 3300 50  0001 C CNN
F 1 "GND" H 8605 3377 50  0000 C CNN
F 2 "" H 8600 3550 50  0001 C CNN
F 3 "" H 8600 3550 50  0001 C CNN
	1    8600 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61FAAADE
P 9000 3300
AR Path="/61FAAADE" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAADE" Ref="C?"  Part="1" 
F 0 "C?" H 9118 3346 50  0000 L CNN
F 1 "100u" H 9118 3255 50  0000 L CNN
F 2 "" H 9038 3150 50  0001 C CNN
F 3 "~" H 9000 3300 50  0001 C CNN
	1    9000 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAE4
P 9000 3550
AR Path="/61FAAAE4" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9000 3300 50  0001 C CNN
F 1 "GND" H 9005 3377 50  0000 C CNN
F 2 "" H 9000 3550 50  0001 C CNN
F 3 "" H 9000 3550 50  0001 C CNN
	1    9000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61FAAAEA
P 9000 2950
AR Path="/61FAAAEA" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAEA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9000 2800 50  0001 C CNN
F 1 "+BATT" H 9015 3123 50  0000 C CNN
F 2 "" H 9000 2950 50  0001 C CNN
F 3 "" H 9000 2950 50  0001 C CNN
	1    9000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 4550 8400 4250
Wire Wire Line
	8200 4450 8200 4550
Wire Wire Line
	9000 3050 9000 3150
Wire Wire Line
	8600 3050 8600 3150
Wire Wire Line
	8000 3750 7900 3750
Wire Wire Line
	8000 3050 8000 3750
Wire Wire Line
	8600 3450 8600 3550
Wire Wire Line
	9000 3550 9000 3450
Wire Wire Line
	6900 3750 7000 3750
$Comp
L Device:R R?
U 1 1 61FAAAF9
P 5950 4550
AR Path="/61FAAAF9" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAF9" Ref="R?"  Part="1" 
F 0 "R?" H 6020 4596 50  0000 L CNN
F 1 "Rref2" H 6020 4505 50  0000 L CNN
F 2 "" V 5880 4550 50  0001 C CNN
F 3 "~" H 5950 4550 50  0001 C CNN
	1    5950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAFF
P 5950 4850
AR Path="/61FAAAFF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 4600 50  0001 C CNN
F 1 "GND" H 5955 4677 50  0000 C CNN
F 2 "" H 5950 4850 50  0001 C CNN
F 3 "" H 5950 4850 50  0001 C CNN
	1    5950 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAB05
P 5950 3800
AR Path="/61FAAB05" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAB05" Ref="R?"  Part="1" 
F 0 "R?" H 6020 3846 50  0000 L CNN
F 1 "Rref1" H 6020 3755 50  0000 L CNN
F 2 "" V 5880 3800 50  0001 C CNN
F 3 "~" H 5950 3800 50  0001 C CNN
	1    5950 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3550 5950 3650
Wire Wire Line
	8000 3050 8200 3050
Wire Wire Line
	8200 3300 8200 3050
Connection ~ 8200 3050
Wire Wire Line
	8200 3050 8600 3050
Wire Wire Line
	8200 3600 8200 3850
Wire Wire Line
	8200 3850 7900 3850
Connection ~ 8600 3050
Wire Wire Line
	8600 3050 9000 3050
Wire Wire Line
	9000 2950 9000 3050
Connection ~ 9000 3050
$Comp
L power:VCC #PWR?
U 1 1 61FAAB16
P 5950 3550
AR Path="/61FAAB16" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB16" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5950 3400 50  0001 C CNN
F 1 "VCC" H 5965 3723 50  0000 C CNN
F 2 "" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0001 C CNN
	1    5950 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61FAAB1C
P 6900 3250
AR Path="/61FAAB1C" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB1C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6900 3100 50  0001 C CNN
F 1 "VCC" H 6915 3423 50  0000 C CNN
F 2 "" H 6900 3250 50  0001 C CNN
F 3 "" H 6900 3250 50  0001 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4150 7000 4150
Entry Wire Line
	6400 4050 6300 3950
Entry Wire Line
	6400 3950 6300 3850
Entry Wire Line
	6400 3850 6300 3750
Entry Wire Line
	6400 3750 6300 3650
Entry Wire Line
	6300 3750 6400 3850
Text Label 6400 3750 0    50   ~ 0
D2_FAULT
Text Label 6400 3850 0    50   ~ 0
D2_SLEEP
Text Label 6400 3950 0    50   ~ 0
D2_IN1
Text Label 6400 4050 0    50   ~ 0
D2_IN2
Wire Wire Line
	5950 3950 5950 4150
Wire Wire Line
	6500 4450 6500 4350
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61FAAB2E
P 7450 4150
AR Path="/61FAAB2E" Ref="U?"  Part="1" 
AR Path="/61EDC519/61FAAB2E" Ref="U?"  Part="1" 
F 0 "U?" H 7450 4765 50  0000 C CNN
F 1 "DRV8874" H 7450 4674 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 7450 5050 50  0001 C CNN
F 3 "" H 6800 4950 50  0001 C CNN
	1    7450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 4750 8000 4550
$Comp
L power:GND #PWR?
U 1 1 61FAAB35
P 8200 4550
AR Path="/61FAAB35" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8200 4300 50  0001 C CNN
F 1 "GND" H 8205 4377 50  0000 C CNN
F 2 "" H 8200 4550 50  0001 C CNN
F 3 "" H 8200 4550 50  0001 C CNN
	1    8200 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAB3B
P 8400 4550
AR Path="/61FAAB3B" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8400 4300 50  0001 C CNN
F 1 "GND" H 8405 4377 50  0000 C CNN
F 2 "" H 8400 4550 50  0001 C CNN
F 3 "" H 8400 4550 50  0001 C CNN
	1    8400 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4750 7400 4850
Wire Wire Line
	6900 4750 7400 4750
Wire Wire Line
	6900 4550 6900 4750
Wire Wire Line
	7500 4750 8000 4750
Wire Wire Line
	7500 4850 7500 4750
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61FAAB46
P 7500 5050
AR Path="/61FAAB46" Ref="J?"  Part="1" 
AR Path="/61EDC519/61FAAB46" Ref="J?"  Part="1" 
F 0 "J?" V 7372 5130 50  0000 L CNN
F 1 "Conn_01x02" V 7463 5130 50  0000 L CNN
F 2 "" H 7500 5050 50  0001 C CNN
F 3 "~" H 7500 5050 50  0001 C CNN
	1    7500 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 4150 8400 4150
Wire Wire Line
	8400 4150 8400 4250
Connection ~ 8400 4250
Wire Wire Line
	6500 4750 6500 4850
Wire Wire Line
	5950 4150 5950 4400
Connection ~ 5950 4150
Wire Wire Line
	5950 4700 5950 4850
Wire Wire Line
	6500 4350 7000 4350
Wire Wire Line
	6400 3750 6900 3750
Connection ~ 6900 3750
Wire Wire Line
	6400 3850 7000 3850
Wire Wire Line
	6400 3950 7000 3950
Wire Wire Line
	6400 4050 7000 4050
Entry Wire Line
	6300 4250 6400 4350
Wire Wire Line
	6400 4350 6500 4350
Connection ~ 6500 4350
Text Label 6400 4350 0    50   ~ 0
D2_IPROPI
Wire Wire Line
	8500 4150 8500 4050
Wire Wire Line
	8650 4150 8500 4150
Wire Wire Line
	8500 3850 8650 3850
Wire Wire Line
	8500 3950 8500 3850
Wire Wire Line
	7900 3950 8500 3950
Wire Wire Line
	8500 4050 7900 4050
$Comp
L Device:C C?
U 1 1 61FAAB64
P 8650 4000
AR Path="/61FAAB64" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAB64" Ref="C?"  Part="1" 
F 0 "C?" H 8765 4046 50  0000 L CNN
F 1 "22n" H 8765 3955 50  0000 L CNN
F 2 "" H 8688 3850 50  0001 C CNN
F 3 "~" H 8650 4000 50  0001 C CNN
	1    8650 4000
	1    0    0    -1  
$EndComp
Entry Wire Line
	2750 2600 2650 2700
Entry Wire Line
	2750 2500 2650 2600
Entry Wire Line
	2750 2400 2650 2500
Entry Wire Line
	2750 2300 2650 2400
Entry Wire Line
	2750 2200 2650 2300
Text Label 2250 2300 0    50   ~ 0
D2_FAULT
Text Label 2250 2400 0    50   ~ 0
D2_SLEEP
Text Label 2250 2500 0    50   ~ 0
D2_IN1
Text Label 2250 2600 0    50   ~ 0
D2_IN2
Wire Wire Line
	2100 2300 2650 2300
Wire Wire Line
	2100 2400 2650 2400
Wire Wire Line
	2100 2500 2650 2500
Wire Wire Line
	2100 2600 2650 2600
Wire Wire Line
	2100 2700 2650 2700
Text Label 2250 2700 0    50   ~ 0
D2_IPROPI
Wire Bus Line
	2750 1700 6300 1700
Wire Bus Line
	2750 1700 2750 2600
Wire Bus Line
	6300 1700 6300 4250
Wire Bus Line
	2750 2900 2750 3950
$EndSCHEMATC
