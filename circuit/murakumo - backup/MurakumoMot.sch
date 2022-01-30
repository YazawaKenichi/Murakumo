EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
P 4650 5800
AR Path="/61EEE661" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE661" Ref="R?"  Part="1" 
F 0 "R?" H 4720 5846 50  0000 L CNN
F 1 "Ripropi" H 4720 5755 50  0000 L CNN
F 2 "" V 4580 5800 50  0001 C CNN
F 3 "~" H 4650 5800 50  0001 C CNN
	1    4650 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE667
P 4650 6050
AR Path="/61EEE667" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE667" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4650 5800 50  0001 C CNN
F 1 "GND" H 4655 5877 50  0000 C CNN
F 2 "" H 4650 6050 50  0001 C CNN
F 3 "" H 4650 6050 50  0001 C CNN
	1    4650 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE673
P 5050 4700
AR Path="/61EEE673" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE673" Ref="R?"  Part="1" 
F 0 "R?" H 5120 4746 50  0000 L CNN
F 1 "10k" H 5120 4655 50  0000 L CNN
F 2 "" V 4980 4700 50  0001 C CNN
F 3 "~" H 5050 4700 50  0001 C CNN
	1    5050 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5750 5050 5750
Wire Wire Line
	5050 4850 5050 4950
Wire Wire Line
	5050 4450 5050 4550
Wire Wire Line
	6050 5750 6150 5750
Wire Wire Line
	6350 5550 6350 5650
Wire Wire Line
	6050 5550 6350 5550
Wire Wire Line
	6050 5650 6350 5650
Connection ~ 6350 5650
Wire Wire Line
	6050 5450 6550 5450
$Comp
L Device:C C?
U 1 1 61EEE691
P 6350 4650
AR Path="/61EEE691" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE691" Ref="C?"  Part="1" 
F 0 "C?" H 6465 4696 50  0000 L CNN
F 1 "0.1u" H 6465 4605 50  0000 L CNN
F 2 "" H 6388 4500 50  0001 C CNN
F 3 "~" H 6350 4650 50  0001 C CNN
	1    6350 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61EEE697
P 6750 4500
AR Path="/61EEE697" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE697" Ref="C?"  Part="1" 
F 0 "C?" H 6865 4546 50  0000 L CNN
F 1 "0.1u" H 6865 4455 50  0000 L CNN
F 2 "" H 6788 4350 50  0001 C CNN
F 3 "~" H 6750 4500 50  0001 C CNN
	1    6750 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE69D
P 6750 4750
AR Path="/61EEE69D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE69D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 4500 50  0001 C CNN
F 1 "GND" H 6755 4577 50  0000 C CNN
F 2 "" H 6750 4750 50  0001 C CNN
F 3 "" H 6750 4750 50  0001 C CNN
	1    6750 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61EEE6A3
P 7150 4500
AR Path="/61EEE6A3" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE6A3" Ref="C?"  Part="1" 
F 0 "C?" H 7268 4546 50  0000 L CNN
F 1 "100u" H 7268 4455 50  0000 L CNN
F 2 "" H 7188 4350 50  0001 C CNN
F 3 "~" H 7150 4500 50  0001 C CNN
	1    7150 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6A9
P 7150 4750
AR Path="/61EEE6A9" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 4500 50  0001 C CNN
F 1 "GND" H 7155 4577 50  0000 C CNN
F 2 "" H 7150 4750 50  0001 C CNN
F 3 "" H 7150 4750 50  0001 C CNN
	1    7150 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61EEE6AF
P 7150 4150
AR Path="/61EEE6AF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7150 4000 50  0001 C CNN
F 1 "+BATT" H 7165 4323 50  0000 C CNN
F 2 "" H 7150 4150 50  0001 C CNN
F 3 "" H 7150 4150 50  0001 C CNN
	1    7150 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 5750 6550 5450
Wire Wire Line
	6350 5650 6350 5750
Wire Wire Line
	7150 4250 7150 4350
Wire Wire Line
	6750 4250 6750 4350
Wire Wire Line
	6150 4950 6050 4950
Wire Wire Line
	6150 4250 6150 4950
Wire Wire Line
	6750 4650 6750 4750
Wire Wire Line
	7150 4750 7150 4650
Wire Wire Line
	5050 4950 5150 4950
$Comp
L Device:R R?
U 1 1 61EEE6DA
P 4100 5750
AR Path="/61EEE6DA" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6DA" Ref="R?"  Part="1" 
F 0 "R?" H 4170 5796 50  0000 L CNN
F 1 "Rref2" H 4170 5705 50  0000 L CNN
F 2 "" V 4030 5750 50  0001 C CNN
F 3 "~" H 4100 5750 50  0001 C CNN
	1    4100 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6E0
P 4100 6050
AR Path="/61EEE6E0" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6E0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 5800 50  0001 C CNN
F 1 "GND" H 4105 5877 50  0000 C CNN
F 2 "" H 4100 6050 50  0001 C CNN
F 3 "" H 4100 6050 50  0001 C CNN
	1    4100 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE6E8
P 4100 5000
AR Path="/61EEE6E8" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6E8" Ref="R?"  Part="1" 
F 0 "R?" H 4170 5046 50  0000 L CNN
F 1 "Rref1" H 4170 4955 50  0000 L CNN
F 2 "" V 4030 5000 50  0001 C CNN
F 3 "~" H 4100 5000 50  0001 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4750 4100 4850
Wire Wire Line
	6150 4250 6350 4250
Wire Wire Line
	6350 4500 6350 4250
Connection ~ 6350 4250
Wire Wire Line
	6350 4250 6750 4250
Wire Wire Line
	6350 4800 6350 5050
Wire Wire Line
	6350 5050 6050 5050
Connection ~ 6750 4250
Wire Wire Line
	6750 4250 7150 4250
Wire Wire Line
	7150 4150 7150 4250
Connection ~ 7150 4250
$Comp
L power:VCC #PWR?
U 1 1 61EEE701
P 4100 4750
AR Path="/61EEE701" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE701" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4100 4600 50  0001 C CNN
F 1 "VCC" H 4115 4923 50  0000 C CNN
F 2 "" H 4100 4750 50  0001 C CNN
F 3 "" H 4100 4750 50  0001 C CNN
	1    4100 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61EEE707
P 5050 4450
AR Path="/61EEE707" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE707" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5050 4300 50  0001 C CNN
F 1 "VCC" H 5065 4623 50  0000 C CNN
F 2 "" H 5050 4450 50  0001 C CNN
F 3 "" H 5050 4450 50  0001 C CNN
	1    5050 4450
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J?
U 1 1 61F1B58E
P 3600 4000
F 0 "J?" H 3518 3275 50  0000 C CNN
F 1 "Conn_01x10" H 3518 3366 50  0000 C CNN
F 2 "" H 3600 4000 50  0001 C CNN
F 3 "~" H 3600 4000 50  0001 C CNN
	1    3600 4000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 5350 5150 5350
Entry Wire Line
	4550 5250 4450 5150
Entry Wire Line
	4550 5150 4450 5050
Entry Wire Line
	4550 5050 4450 4950
Entry Wire Line
	4550 4950 4450 4850
Entry Wire Line
	4450 4950 4550 5050
Entry Wire Line
	4350 4000 4450 4100
Entry Wire Line
	4350 4100 4450 4200
Entry Wire Line
	4350 4200 4450 4300
Entry Wire Line
	4350 4300 4450 4400
Text Label 4550 4950 0    50   ~ 0
D1_FAULT
Text Label 4550 5050 0    50   ~ 0
D1_SLEEP
Text Label 4550 5150 0    50   ~ 0
D1_IN1
Text Label 4550 5250 0    50   ~ 0
D1_IN2
Wire Wire Line
	4100 5150 4100 5350
Wire Wire Line
	4650 5650 4650 5550
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61EEE657
P 5600 5350
AR Path="/61EEE657" Ref="U?"  Part="1" 
AR Path="/61EDC519/61EEE657" Ref="U?"  Part="1" 
F 0 "U?" H 5600 5965 50  0000 C CNN
F 1 "DRV8874" H 5600 5874 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 5600 6250 50  0001 C CNN
F 3 "" H 4950 6150 50  0001 C CNN
	1    5600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5950 6150 5750
$Comp
L power:GND #PWR?
U 1 1 61EEE6C8
P 6350 5750
AR Path="/61EEE6C8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6350 5500 50  0001 C CNN
F 1 "GND" H 6355 5577 50  0000 C CNN
F 2 "" H 6350 5750 50  0001 C CNN
F 3 "" H 6350 5750 50  0001 C CNN
	1    6350 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6C2
P 6550 5750
AR Path="/61EEE6C2" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 5500 50  0001 C CNN
F 1 "GND" H 6555 5577 50  0000 C CNN
F 2 "" H 6550 5750 50  0001 C CNN
F 3 "" H 6550 5750 50  0001 C CNN
	1    6550 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 5950 5550 6050
Wire Wire Line
	5050 5950 5550 5950
Wire Wire Line
	5050 5750 5050 5950
Wire Wire Line
	5650 5950 6150 5950
Wire Wire Line
	5650 6050 5650 5950
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61EEE6B5
P 5650 6250
AR Path="/61EEE6B5" Ref="J?"  Part="1" 
AR Path="/61EDC519/61EEE6B5" Ref="J?"  Part="1" 
F 0 "J?" V 5522 6330 50  0000 L CNN
F 1 "Conn_01x02" V 5613 6330 50  0000 L CNN
F 2 "" H 5650 6250 50  0001 C CNN
F 3 "~" H 5650 6250 50  0001 C CNN
	1    5650 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 5350 6550 5350
Wire Wire Line
	6550 5350 6550 5450
Connection ~ 6550 5450
Wire Wire Line
	4650 5950 4650 6050
Wire Wire Line
	4100 5350 4100 5600
Connection ~ 4100 5350
Wire Wire Line
	4100 5900 4100 6050
Wire Wire Line
	4650 5550 5150 5550
Entry Wire Line
	4350 4400 4450 4500
Wire Wire Line
	4550 4950 5050 4950
Connection ~ 5050 4950
Wire Wire Line
	4550 5050 5150 5050
Wire Wire Line
	4550 5150 5150 5150
Wire Wire Line
	4550 5250 5150 5250
Entry Wire Line
	4450 5450 4550 5550
Wire Wire Line
	4550 5550 4650 5550
Connection ~ 4650 5550
Text Label 4550 5550 0    50   ~ 0
D1_IPROPI
Text Label 3950 4000 0    50   ~ 0
D1_FAULT
Text Label 3950 4100 0    50   ~ 0
D1_SLEEP
Text Label 3950 4200 0    50   ~ 0
D1_IN1
Text Label 3950 4300 0    50   ~ 0
D1_IN2
Wire Wire Line
	3800 4000 4350 4000
Wire Wire Line
	3800 4100 4350 4100
Wire Wire Line
	3800 4200 4350 4200
Wire Wire Line
	3800 4300 4350 4300
Wire Wire Line
	3800 4400 4350 4400
Text Label 3950 4400 0    50   ~ 0
D1_IPROPI
Wire Wire Line
	6650 5350 6650 5250
Wire Wire Line
	6800 5350 6650 5350
Wire Wire Line
	6650 5050 6800 5050
Wire Wire Line
	6650 5150 6650 5050
Wire Wire Line
	6050 5150 6650 5150
Wire Wire Line
	6650 5250 6050 5250
$Comp
L Device:C C?
U 1 1 61EEE685
P 6800 5200
AR Path="/61EEE685" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE685" Ref="C?"  Part="1" 
F 0 "C?" H 6915 5246 50  0000 L CNN
F 1 "22n" H 6915 5155 50  0000 L CNN
F 2 "" H 6838 5050 50  0001 C CNN
F 3 "~" H 6800 5200 50  0001 C CNN
	1    6800 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAAB1
P 8200 5800
AR Path="/61FAAAB1" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAB1" Ref="R?"  Part="1" 
F 0 "R?" H 8270 5846 50  0000 L CNN
F 1 "Ripropi" H 8270 5755 50  0000 L CNN
F 2 "" V 8130 5800 50  0001 C CNN
F 3 "~" H 8200 5800 50  0001 C CNN
	1    8200 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAB7
P 8200 6050
AR Path="/61FAAAB7" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAB7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8200 5800 50  0001 C CNN
F 1 "GND" H 8205 5877 50  0000 C CNN
F 2 "" H 8200 6050 50  0001 C CNN
F 3 "" H 8200 6050 50  0001 C CNN
	1    8200 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAABD
P 8600 4700
AR Path="/61FAAABD" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAABD" Ref="R?"  Part="1" 
F 0 "R?" H 8670 4746 50  0000 L CNN
F 1 "10k" H 8670 4655 50  0000 L CNN
F 2 "" V 8530 4700 50  0001 C CNN
F 3 "~" H 8600 4700 50  0001 C CNN
	1    8600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5750 8600 5750
Wire Wire Line
	8600 4850 8600 4950
Wire Wire Line
	8600 4450 8600 4550
Wire Wire Line
	9600 5750 9700 5750
Wire Wire Line
	9900 5550 9900 5650
Wire Wire Line
	9600 5550 9900 5550
Wire Wire Line
	9600 5650 9900 5650
Connection ~ 9900 5650
Wire Wire Line
	9600 5450 10100 5450
$Comp
L Device:C C?
U 1 1 61FAAACC
P 9900 4650
AR Path="/61FAAACC" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAACC" Ref="C?"  Part="1" 
F 0 "C?" H 10015 4696 50  0000 L CNN
F 1 "0.1u" H 10015 4605 50  0000 L CNN
F 2 "" H 9938 4500 50  0001 C CNN
F 3 "~" H 9900 4650 50  0001 C CNN
	1    9900 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61FAAAD2
P 10300 4500
AR Path="/61FAAAD2" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAAD2" Ref="C?"  Part="1" 
F 0 "C?" H 10415 4546 50  0000 L CNN
F 1 "0.1u" H 10415 4455 50  0000 L CNN
F 2 "" H 10338 4350 50  0001 C CNN
F 3 "~" H 10300 4500 50  0001 C CNN
	1    10300 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAD8
P 10300 4750
AR Path="/61FAAAD8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAD8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10300 4500 50  0001 C CNN
F 1 "GND" H 10305 4577 50  0000 C CNN
F 2 "" H 10300 4750 50  0001 C CNN
F 3 "" H 10300 4750 50  0001 C CNN
	1    10300 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61FAAADE
P 10700 4500
AR Path="/61FAAADE" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAADE" Ref="C?"  Part="1" 
F 0 "C?" H 10818 4546 50  0000 L CNN
F 1 "100u" H 10818 4455 50  0000 L CNN
F 2 "" H 10738 4350 50  0001 C CNN
F 3 "~" H 10700 4500 50  0001 C CNN
	1    10700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAE4
P 10700 4750
AR Path="/61FAAAE4" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAE4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10700 4500 50  0001 C CNN
F 1 "GND" H 10705 4577 50  0000 C CNN
F 2 "" H 10700 4750 50  0001 C CNN
F 3 "" H 10700 4750 50  0001 C CNN
	1    10700 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61FAAAEA
P 10700 4150
AR Path="/61FAAAEA" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAEA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10700 4000 50  0001 C CNN
F 1 "+BATT" H 10715 4323 50  0000 C CNN
F 2 "" H 10700 4150 50  0001 C CNN
F 3 "" H 10700 4150 50  0001 C CNN
	1    10700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5750 10100 5450
Wire Wire Line
	9900 5650 9900 5750
Wire Wire Line
	10700 4250 10700 4350
Wire Wire Line
	10300 4250 10300 4350
Wire Wire Line
	9700 4950 9600 4950
Wire Wire Line
	9700 4250 9700 4950
Wire Wire Line
	10300 4650 10300 4750
Wire Wire Line
	10700 4750 10700 4650
Wire Wire Line
	8600 4950 8700 4950
$Comp
L Device:R R?
U 1 1 61FAAAF9
P 7650 5750
AR Path="/61FAAAF9" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAF9" Ref="R?"  Part="1" 
F 0 "R?" H 7720 5796 50  0000 L CNN
F 1 "Rref2" H 7720 5705 50  0000 L CNN
F 2 "" V 7580 5750 50  0001 C CNN
F 3 "~" H 7650 5750 50  0001 C CNN
	1    7650 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAFF
P 7650 6050
AR Path="/61FAAAFF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAFF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 5800 50  0001 C CNN
F 1 "GND" H 7655 5877 50  0000 C CNN
F 2 "" H 7650 6050 50  0001 C CNN
F 3 "" H 7650 6050 50  0001 C CNN
	1    7650 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAB05
P 7650 5000
AR Path="/61FAAB05" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAB05" Ref="R?"  Part="1" 
F 0 "R?" H 7720 5046 50  0000 L CNN
F 1 "Rref1" H 7720 4955 50  0000 L CNN
F 2 "" V 7580 5000 50  0001 C CNN
F 3 "~" H 7650 5000 50  0001 C CNN
	1    7650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4750 7650 4850
Wire Wire Line
	9700 4250 9900 4250
Wire Wire Line
	9900 4500 9900 4250
Connection ~ 9900 4250
Wire Wire Line
	9900 4250 10300 4250
Wire Wire Line
	9900 4800 9900 5050
Wire Wire Line
	9900 5050 9600 5050
Connection ~ 10300 4250
Wire Wire Line
	10300 4250 10700 4250
Wire Wire Line
	10700 4150 10700 4250
Connection ~ 10700 4250
$Comp
L power:VCC #PWR?
U 1 1 61FAAB16
P 7650 4750
AR Path="/61FAAB16" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB16" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 4600 50  0001 C CNN
F 1 "VCC" H 7665 4923 50  0000 C CNN
F 2 "" H 7650 4750 50  0001 C CNN
F 3 "" H 7650 4750 50  0001 C CNN
	1    7650 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 61FAAB1C
P 8600 4450
AR Path="/61FAAB1C" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB1C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8600 4300 50  0001 C CNN
F 1 "VCC" H 8615 4623 50  0000 C CNN
F 2 "" H 8600 4450 50  0001 C CNN
F 3 "" H 8600 4450 50  0001 C CNN
	1    8600 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 5350 8700 5350
Entry Wire Line
	8100 5250 8000 5150
Entry Wire Line
	8100 5150 8000 5050
Entry Wire Line
	8100 5050 8000 4950
Entry Wire Line
	8100 4950 8000 4850
Entry Wire Line
	8000 4950 8100 5050
Text Label 8100 4950 0    50   ~ 0
D2_FAULT
Text Label 8100 5050 0    50   ~ 0
D2_SLEEP
Text Label 8100 5150 0    50   ~ 0
D2_IN1
Text Label 8100 5250 0    50   ~ 0
D2_IN2
Wire Wire Line
	7650 5150 7650 5350
Wire Wire Line
	8200 5650 8200 5550
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61FAAB2E
P 9150 5350
AR Path="/61FAAB2E" Ref="U?"  Part="1" 
AR Path="/61EDC519/61FAAB2E" Ref="U?"  Part="1" 
F 0 "U?" H 9150 5965 50  0000 C CNN
F 1 "DRV8874" H 9150 5874 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 9150 6250 50  0001 C CNN
F 3 "" H 8500 6150 50  0001 C CNN
	1    9150 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 5950 9700 5750
$Comp
L power:GND #PWR?
U 1 1 61FAAB35
P 9900 5750
AR Path="/61FAAB35" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB35" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9900 5500 50  0001 C CNN
F 1 "GND" H 9905 5577 50  0000 C CNN
F 2 "" H 9900 5750 50  0001 C CNN
F 3 "" H 9900 5750 50  0001 C CNN
	1    9900 5750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAB3B
P 10100 5750
AR Path="/61FAAB3B" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB3B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 10100 5500 50  0001 C CNN
F 1 "GND" H 10105 5577 50  0000 C CNN
F 2 "" H 10100 5750 50  0001 C CNN
F 3 "" H 10100 5750 50  0001 C CNN
	1    10100 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 5950 9100 6050
Wire Wire Line
	8600 5950 9100 5950
Wire Wire Line
	8600 5750 8600 5950
Wire Wire Line
	9200 5950 9700 5950
Wire Wire Line
	9200 6050 9200 5950
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61FAAB46
P 9200 6250
AR Path="/61FAAB46" Ref="J?"  Part="1" 
AR Path="/61EDC519/61FAAB46" Ref="J?"  Part="1" 
F 0 "J?" V 9072 6330 50  0000 L CNN
F 1 "Conn_01x02" V 9163 6330 50  0000 L CNN
F 2 "" H 9200 6250 50  0001 C CNN
F 3 "~" H 9200 6250 50  0001 C CNN
	1    9200 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	9600 5350 10100 5350
Wire Wire Line
	10100 5350 10100 5450
Connection ~ 10100 5450
Wire Wire Line
	8200 5950 8200 6050
Wire Wire Line
	7650 5350 7650 5600
Connection ~ 7650 5350
Wire Wire Line
	7650 5900 7650 6050
Wire Wire Line
	8200 5550 8700 5550
Wire Wire Line
	8100 4950 8600 4950
Connection ~ 8600 4950
Wire Wire Line
	8100 5050 8700 5050
Wire Wire Line
	8100 5150 8700 5150
Wire Wire Line
	8100 5250 8700 5250
Entry Wire Line
	8000 5450 8100 5550
Wire Wire Line
	8100 5550 8200 5550
Connection ~ 8200 5550
Text Label 8100 5550 0    50   ~ 0
D2_IPROPI
Wire Wire Line
	10200 5350 10200 5250
Wire Wire Line
	10350 5350 10200 5350
Wire Wire Line
	10200 5050 10350 5050
Wire Wire Line
	10200 5150 10200 5050
Wire Wire Line
	9600 5150 10200 5150
Wire Wire Line
	10200 5250 9600 5250
$Comp
L Device:C C?
U 1 1 61FAAB64
P 10350 5200
AR Path="/61FAAB64" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAB64" Ref="C?"  Part="1" 
F 0 "C?" H 10465 5246 50  0000 L CNN
F 1 "22n" H 10465 5155 50  0000 L CNN
F 2 "" H 10388 5050 50  0001 C CNN
F 3 "~" H 10350 5200 50  0001 C CNN
	1    10350 5200
	1    0    0    -1  
$EndComp
Entry Wire Line
	4450 3800 4350 3900
Entry Wire Line
	4450 3700 4350 3800
Entry Wire Line
	4450 3600 4350 3700
Entry Wire Line
	4450 3500 4350 3600
Entry Wire Line
	4450 3400 4350 3500
Text Label 3950 3500 0    50   ~ 0
D2_FAULT
Text Label 3950 3600 0    50   ~ 0
D2_SLEEP
Text Label 3950 3700 0    50   ~ 0
D2_IN1
Text Label 3950 3800 0    50   ~ 0
D2_IN2
Wire Wire Line
	3800 3500 4350 3500
Wire Wire Line
	3800 3600 4350 3600
Wire Wire Line
	3800 3700 4350 3700
Wire Wire Line
	3800 3800 4350 3800
Wire Wire Line
	3800 3900 4350 3900
Text Label 3950 3900 0    50   ~ 0
D2_IPROPI
Wire Bus Line
	4450 2900 8000 2900
Wire Bus Line
	8000 2900 8000 5450
Wire Bus Line
	4450 2900 4450 3800
Wire Bus Line
	4450 4100 4450 5150
$EndSCHEMATC
