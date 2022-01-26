EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title "Murakumo Power Circuit"
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
P 4300 5850
AR Path="/61EEE661" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE661" Ref="R42"  Part="1" 
F 0 "R42" H 4370 5896 50  0000 L CNN
F 1 "1.2k" H 4370 5805 50  0000 L CNN
F 2 "" V 4230 5850 50  0001 C CNN
F 3 "~" H 4300 5850 50  0001 C CNN
	1    4300 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE667
P 4300 6100
AR Path="/61EEE667" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE667" Ref="#PWR0197"  Part="1" 
F 0 "#PWR0197" H 4300 5850 50  0001 C CNN
F 1 "GND" H 4305 5927 50  0000 C CNN
F 2 "" H 4300 6100 50  0001 C CNN
F 3 "" H 4300 6100 50  0001 C CNN
	1    4300 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE673
P 4700 4750
AR Path="/61EEE673" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE673" Ref="R36"  Part="1" 
F 0 "R36" H 4770 4796 50  0000 L CNN
F 1 "10k" H 4770 4705 50  0000 L CNN
F 2 "" V 4630 4750 50  0001 C CNN
F 3 "~" H 4700 4750 50  0001 C CNN
	1    4700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5800 4700 5800
Wire Wire Line
	4700 4900 4700 5000
Wire Wire Line
	4700 4500 4700 4600
Wire Wire Line
	5700 5800 5800 5800
Wire Wire Line
	6000 5600 6000 5700
Wire Wire Line
	5700 5600 6000 5600
Wire Wire Line
	5700 5700 6000 5700
Connection ~ 6000 5700
Wire Wire Line
	5700 5500 6200 5500
$Comp
L Device:C C?
U 1 1 61EEE691
P 6000 4700
AR Path="/61EEE691" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE691" Ref="C31"  Part="1" 
F 0 "C31" H 6115 4746 50  0000 L CNN
F 1 "0.1u" H 6115 4655 50  0000 L CNN
F 2 "" H 6038 4550 50  0001 C CNN
F 3 "~" H 6000 4700 50  0001 C CNN
	1    6000 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61EEE697
P 6400 4550
AR Path="/61EEE697" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE697" Ref="C27"  Part="1" 
F 0 "C27" H 6515 4596 50  0000 L CNN
F 1 "0.1u" H 6515 4505 50  0000 L CNN
F 2 "" H 6438 4400 50  0001 C CNN
F 3 "~" H 6400 4550 50  0001 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE69D
P 6400 4800
AR Path="/61EEE69D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE69D" Ref="#PWR0198"  Part="1" 
F 0 "#PWR0198" H 6400 4550 50  0001 C CNN
F 1 "GND" H 6405 4627 50  0000 C CNN
F 2 "" H 6400 4800 50  0001 C CNN
F 3 "" H 6400 4800 50  0001 C CNN
	1    6400 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61EEE6A3
P 6800 4550
AR Path="/61EEE6A3" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE6A3" Ref="C28"  Part="1" 
F 0 "C28" H 6918 4596 50  0000 L CNN
F 1 "100u" H 6918 4505 50  0000 L CNN
F 2 "" H 6838 4400 50  0001 C CNN
F 3 "~" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6A9
P 6800 4800
AR Path="/61EEE6A9" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6A9" Ref="#PWR0199"  Part="1" 
F 0 "#PWR0199" H 6800 4550 50  0001 C CNN
F 1 "GND" H 6805 4627 50  0000 C CNN
F 2 "" H 6800 4800 50  0001 C CNN
F 3 "" H 6800 4800 50  0001 C CNN
	1    6800 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61EEE6AF
P 6800 4200
AR Path="/61EEE6AF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6AF" Ref="#PWR0200"  Part="1" 
F 0 "#PWR0200" H 6800 4050 50  0001 C CNN
F 1 "+BATT" H 6815 4373 50  0000 C CNN
F 2 "" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0001 C CNN
	1    6800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5800 6200 5500
Wire Wire Line
	6000 5700 6000 5800
Wire Wire Line
	6800 4300 6800 4400
Wire Wire Line
	6400 4300 6400 4400
Wire Wire Line
	5800 5000 5700 5000
Wire Wire Line
	5800 4300 5800 5000
Wire Wire Line
	6400 4700 6400 4800
Wire Wire Line
	6800 4800 6800 4700
Wire Wire Line
	4700 5000 4800 5000
Wire Wire Line
	5800 4300 6000 4300
Wire Wire Line
	6000 4550 6000 4300
Connection ~ 6000 4300
Wire Wire Line
	6000 4300 6400 4300
Wire Wire Line
	6000 4850 6000 5100
Wire Wire Line
	6000 5100 5700 5100
Connection ~ 6400 4300
Wire Wire Line
	6400 4300 6800 4300
Wire Wire Line
	6800 4200 6800 4300
Connection ~ 6800 4300
Wire Wire Line
	4300 5700 4300 5600
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61EEE657
P 5250 5400
AR Path="/61EEE657" Ref="U?"  Part="1" 
AR Path="/61EDC519/61EEE657" Ref="U3"  Part="1" 
F 0 "U3" H 5250 6015 50  0000 C CNN
F 1 "DRV8874" H 5250 5924 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 5250 6300 50  0001 C CNN
F 3 "" H 4600 6200 50  0001 C CNN
	1    5250 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6000 5800 5800
$Comp
L power:GND #PWR?
U 1 1 61EEE6C8
P 6000 5800
AR Path="/61EEE6C8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6C8" Ref="#PWR0202"  Part="1" 
F 0 "#PWR0202" H 6000 5550 50  0001 C CNN
F 1 "GND" H 6005 5627 50  0000 C CNN
F 2 "" H 6000 5800 50  0001 C CNN
F 3 "" H 6000 5800 50  0001 C CNN
	1    6000 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6C2
P 6200 5800
AR Path="/61EEE6C2" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6C2" Ref="#PWR0203"  Part="1" 
F 0 "#PWR0203" H 6200 5550 50  0001 C CNN
F 1 "GND" H 6205 5627 50  0000 C CNN
F 2 "" H 6200 5800 50  0001 C CNN
F 3 "" H 6200 5800 50  0001 C CNN
	1    6200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6000 5200 6100
Wire Wire Line
	4700 6000 5200 6000
Wire Wire Line
	4700 5800 4700 6000
Wire Wire Line
	5300 6000 5800 6000
Wire Wire Line
	5300 6100 5300 6000
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61EEE6B5
P 5300 6300
AR Path="/61EEE6B5" Ref="J?"  Part="1" 
AR Path="/61EDC519/61EEE6B5" Ref="J12"  Part="1" 
F 0 "J12" V 5172 6380 50  0000 L CNN
F 1 "Conn_01x02" V 5263 6380 50  0000 L CNN
F 2 "" H 5300 6300 50  0001 C CNN
F 3 "~" H 5300 6300 50  0001 C CNN
	1    5300 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	5700 5400 6200 5400
Wire Wire Line
	6200 5400 6200 5500
Connection ~ 6200 5500
Wire Wire Line
	4300 6000 4300 6100
Wire Wire Line
	4300 5600 4800 5600
Connection ~ 4700 5000
Wire Wire Line
	6300 5400 6300 5300
Wire Wire Line
	6450 5400 6300 5400
Wire Wire Line
	6300 5100 6450 5100
Wire Wire Line
	6300 5200 6300 5100
Wire Wire Line
	5700 5200 6300 5200
Wire Wire Line
	6300 5300 5700 5300
$Comp
L Device:C C?
U 1 1 61EEE685
P 6450 5250
AR Path="/61EEE685" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE685" Ref="C33"  Part="1" 
F 0 "C33" H 6565 5296 50  0000 L CNN
F 1 "22n" H 6565 5205 50  0000 L CNN
F 2 "" H 6488 5100 50  0001 C CNN
F 3 "~" H 6450 5250 50  0001 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAAB1
P 7850 5850
AR Path="/61FAAAB1" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAB1" Ref="R43"  Part="1" 
F 0 "R43" H 7920 5896 50  0000 L CNN
F 1 "1.2k" H 7920 5805 50  0000 L CNN
F 2 "" V 7780 5850 50  0001 C CNN
F 3 "~" H 7850 5850 50  0001 C CNN
	1    7850 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAB7
P 7850 6100
AR Path="/61FAAAB7" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAB7" Ref="#PWR0204"  Part="1" 
F 0 "#PWR0204" H 7850 5850 50  0001 C CNN
F 1 "GND" H 7855 5927 50  0000 C CNN
F 2 "" H 7850 6100 50  0001 C CNN
F 3 "" H 7850 6100 50  0001 C CNN
	1    7850 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAABD
P 8250 4750
AR Path="/61FAAABD" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAABD" Ref="R37"  Part="1" 
F 0 "R37" H 8320 4796 50  0000 L CNN
F 1 "10k" H 8320 4705 50  0000 L CNN
F 2 "" V 8180 4750 50  0001 C CNN
F 3 "~" H 8250 4750 50  0001 C CNN
	1    8250 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 5800 8250 5800
Wire Wire Line
	8250 4900 8250 5000
Wire Wire Line
	8250 4500 8250 4600
Wire Wire Line
	9250 5800 9350 5800
Wire Wire Line
	9550 5600 9550 5700
Wire Wire Line
	9250 5600 9550 5600
Wire Wire Line
	9250 5700 9550 5700
Connection ~ 9550 5700
Wire Wire Line
	9250 5500 9750 5500
$Comp
L Device:C C?
U 1 1 61FAAACC
P 9550 4700
AR Path="/61FAAACC" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAACC" Ref="C32"  Part="1" 
F 0 "C32" H 9665 4746 50  0000 L CNN
F 1 "0.1u" H 9665 4655 50  0000 L CNN
F 2 "" H 9588 4550 50  0001 C CNN
F 3 "~" H 9550 4700 50  0001 C CNN
	1    9550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61FAAAD2
P 9950 4550
AR Path="/61FAAAD2" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAAD2" Ref="C29"  Part="1" 
F 0 "C29" H 10065 4596 50  0000 L CNN
F 1 "0.1u" H 10065 4505 50  0000 L CNN
F 2 "" H 9988 4400 50  0001 C CNN
F 3 "~" H 9950 4550 50  0001 C CNN
	1    9950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAD8
P 9950 4800
AR Path="/61FAAAD8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAD8" Ref="#PWR0205"  Part="1" 
F 0 "#PWR0205" H 9950 4550 50  0001 C CNN
F 1 "GND" H 9955 4627 50  0000 C CNN
F 2 "" H 9950 4800 50  0001 C CNN
F 3 "" H 9950 4800 50  0001 C CNN
	1    9950 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 61FAAADE
P 10350 4550
AR Path="/61FAAADE" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAADE" Ref="C30"  Part="1" 
F 0 "C30" H 10468 4596 50  0000 L CNN
F 1 "100u" H 10468 4505 50  0000 L CNN
F 2 "" H 10388 4400 50  0001 C CNN
F 3 "~" H 10350 4550 50  0001 C CNN
	1    10350 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAE4
P 10350 4800
AR Path="/61FAAAE4" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAE4" Ref="#PWR0206"  Part="1" 
F 0 "#PWR0206" H 10350 4550 50  0001 C CNN
F 1 "GND" H 10355 4627 50  0000 C CNN
F 2 "" H 10350 4800 50  0001 C CNN
F 3 "" H 10350 4800 50  0001 C CNN
	1    10350 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 61FAAAEA
P 10350 4200
AR Path="/61FAAAEA" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAEA" Ref="#PWR0207"  Part="1" 
F 0 "#PWR0207" H 10350 4050 50  0001 C CNN
F 1 "+BATT" H 10365 4373 50  0000 C CNN
F 2 "" H 10350 4200 50  0001 C CNN
F 3 "" H 10350 4200 50  0001 C CNN
	1    10350 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5800 9750 5500
Wire Wire Line
	9550 5700 9550 5800
Wire Wire Line
	10350 4300 10350 4400
Wire Wire Line
	9950 4300 9950 4400
Wire Wire Line
	9350 5000 9250 5000
Wire Wire Line
	9350 4300 9350 5000
Wire Wire Line
	9950 4700 9950 4800
Wire Wire Line
	10350 4800 10350 4700
Wire Wire Line
	8250 5000 8350 5000
$Comp
L Device:R R?
U 1 1 61FAAAF9
P 7300 5800
AR Path="/61FAAAF9" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAF9" Ref="R41"  Part="1" 
F 0 "R41" H 7370 5846 50  0000 L CNN
F 1 "50k" H 7370 5755 50  0000 L CNN
F 2 "" V 7230 5800 50  0001 C CNN
F 3 "~" H 7300 5800 50  0001 C CNN
	1    7300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAFF
P 7300 6100
AR Path="/61FAAAFF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAFF" Ref="#PWR0208"  Part="1" 
F 0 "#PWR0208" H 7300 5850 50  0001 C CNN
F 1 "GND" H 7305 5927 50  0000 C CNN
F 2 "" H 7300 6100 50  0001 C CNN
F 3 "" H 7300 6100 50  0001 C CNN
	1    7300 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAB05
P 7300 5050
AR Path="/61FAAB05" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAB05" Ref="16k1"  Part="1" 
F 0 "16k1" H 7370 5096 50  0000 L CNN
F 1 "Rref1" H 7370 5005 50  0000 L CNN
F 2 "" V 7230 5050 50  0001 C CNN
F 3 "~" H 7300 5050 50  0001 C CNN
	1    7300 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 4800 7300 4900
Wire Wire Line
	9350 4300 9550 4300
Wire Wire Line
	9550 4550 9550 4300
Connection ~ 9550 4300
Wire Wire Line
	9550 4300 9950 4300
Wire Wire Line
	9550 4850 9550 5100
Wire Wire Line
	9550 5100 9250 5100
Connection ~ 9950 4300
Wire Wire Line
	9950 4300 10350 4300
Wire Wire Line
	10350 4200 10350 4300
Connection ~ 10350 4300
Wire Wire Line
	7300 5400 8350 5400
Entry Wire Line
	7750 5300 7650 5200
Entry Wire Line
	7750 5200 7650 5100
Text Label 7750 5200 0    50   ~ 0
D2_IN1
Text Label 7750 5300 0    50   ~ 0
D2_IN2
Wire Wire Line
	7300 5200 7300 5400
Wire Wire Line
	7850 5700 7850 5600
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61FAAB2E
P 8800 5400
AR Path="/61FAAB2E" Ref="U?"  Part="1" 
AR Path="/61EDC519/61FAAB2E" Ref="U4"  Part="1" 
F 0 "U4" H 8800 6015 50  0000 C CNN
F 1 "DRV8874" H 8800 5924 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 8800 6300 50  0001 C CNN
F 3 "" H 8150 6200 50  0001 C CNN
	1    8800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 6000 9350 5800
$Comp
L power:GND #PWR?
U 1 1 61FAAB35
P 9550 5800
AR Path="/61FAAB35" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB35" Ref="#PWR0211"  Part="1" 
F 0 "#PWR0211" H 9550 5550 50  0001 C CNN
F 1 "GND" H 9555 5627 50  0000 C CNN
F 2 "" H 9550 5800 50  0001 C CNN
F 3 "" H 9550 5800 50  0001 C CNN
	1    9550 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAB3B
P 9750 5800
AR Path="/61FAAB3B" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAB3B" Ref="#PWR0212"  Part="1" 
F 0 "#PWR0212" H 9750 5550 50  0001 C CNN
F 1 "GND" H 9755 5627 50  0000 C CNN
F 2 "" H 9750 5800 50  0001 C CNN
F 3 "" H 9750 5800 50  0001 C CNN
	1    9750 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 6000 8750 6100
Wire Wire Line
	8250 6000 8750 6000
Wire Wire Line
	8250 5800 8250 6000
Wire Wire Line
	8850 6000 9350 6000
Wire Wire Line
	8850 6100 8850 6000
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61FAAB46
P 8850 6300
AR Path="/61FAAB46" Ref="J?"  Part="1" 
AR Path="/61EDC519/61FAAB46" Ref="J13"  Part="1" 
F 0 "J13" V 8722 6380 50  0000 L CNN
F 1 "Conn_01x02" V 8813 6380 50  0000 L CNN
F 2 "" H 8850 6300 50  0001 C CNN
F 3 "~" H 8850 6300 50  0001 C CNN
	1    8850 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	9250 5400 9750 5400
Wire Wire Line
	9750 5400 9750 5500
Connection ~ 9750 5500
Wire Wire Line
	7850 6000 7850 6100
Wire Wire Line
	7300 5400 7300 5650
Connection ~ 7300 5400
Wire Wire Line
	7300 5950 7300 6100
Wire Wire Line
	7850 5600 8350 5600
Connection ~ 8250 5000
Wire Wire Line
	7750 5200 8350 5200
Wire Wire Line
	7750 5300 8350 5300
Wire Wire Line
	9850 5400 9850 5300
Wire Wire Line
	10000 5400 9850 5400
Wire Wire Line
	9850 5100 10000 5100
Wire Wire Line
	9850 5200 9850 5100
Wire Wire Line
	9250 5200 9850 5200
Wire Wire Line
	9850 5300 9250 5300
$Comp
L Device:C C?
U 1 1 61FAAB64
P 10000 5250
AR Path="/61FAAB64" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAB64" Ref="C34"  Part="1" 
F 0 "C34" H 10115 5296 50  0000 L CNN
F 1 "22n" H 10115 5205 50  0000 L CNN
F 2 "" H 10038 5100 50  0001 C CNN
F 3 "~" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
Entry Wire Line
	4250 5000 4150 5100
Entry Wire Line
	4250 4900 4150 5000
Text Label 4150 5100 2    50   ~ 0
D2_IN1
Text Label 4150 5000 2    50   ~ 0
D2_IN2
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 61EF4312
P 6700 7200
F 0 "#FLG0101" H 6700 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 7373 50  0000 C CNN
F 2 "" H 6700 7200 50  0001 C CNN
F 3 "~" H 6700 7200 50  0001 C CNN
	1    6700 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0215
U 1 1 61EF5D3D
P 6700 7450
F 0 "#PWR0215" H 6700 7200 50  0001 C CNN
F 1 "GND" H 6705 7277 50  0000 C CNN
F 2 "" H 6700 7450 50  0001 C CNN
F 3 "" H 6700 7450 50  0001 C CNN
	1    6700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 7450 6700 7200
Wire Wire Line
	4700 5000 4700 5100
Wire Wire Line
	4700 5100 4800 5100
Wire Wire Line
	8250 5100 8250 5000
Wire Wire Line
	8250 5100 8350 5100
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 61F50837
P 5700 7450
F 0 "#FLG0104" H 5700 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 7623 50  0000 C CNN
F 2 "" H 5700 7450 50  0001 C CNN
F 3 "~" H 5700 7450 50  0001 C CNN
	1    5700 7450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0105
U 1 1 61F5083D
P 6200 7450
F 0 "#FLG0105" H 6200 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6200 7623 50  0000 C CNN
F 2 "" H 6200 7450 50  0001 C CNN
F 3 "~" H 6200 7450 50  0001 C CNN
	1    6200 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 7200 6200 7450
Wire Wire Line
	5700 7450 5700 7200
$Comp
L power:+5V #PWR0216
U 1 1 61F55377
P 5700 7200
F 0 "#PWR0216" H 5700 7050 50  0001 C CNN
F 1 "+5V" H 5715 7373 50  0000 C CNN
F 2 "" H 5700 7200 50  0001 C CNN
F 3 "" H 5700 7200 50  0001 C CNN
	1    5700 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0217
U 1 1 61F558D3
P 6200 7200
F 0 "#PWR0217" H 6200 7050 50  0001 C CNN
F 1 "+3.3V" H 6215 7373 50  0000 C CNN
F 2 "" H 6200 7200 50  0001 C CNN
F 3 "" H 6200 7200 50  0001 C CNN
	1    6200 7200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 62B03D69
P 10150 3400
AR Path="/62B03D69" Ref="SW?"  Part="1" 
AR Path="/61EDC519/62B03D69" Ref="SW2"  Part="1" 
F 0 "SW2" H 9820 3354 50  0000 R CNN
F 1 "220AMB16R" H 9820 3445 50  0000 R CNN
F 2 "" H 9850 2950 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 10150 3400 50  0001 C CNN
	1    10150 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03D73
P 9650 4000
AR Path="/62B03D73" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03D73" Ref="#PWR0218"  Part="1" 
F 0 "#PWR0218" H 9650 3750 50  0001 C CNN
F 1 "GND" H 9655 3827 50  0000 C CNN
F 2 "" H 9650 4000 50  0001 C CNN
F 3 "" H 9650 4000 50  0001 C CNN
	1    9650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3600 9750 3600
$Comp
L Device:C C?
U 1 1 62B03D7B
P 8100 3750
AR Path="/62B03D7B" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03D7B" Ref="C22"  Part="1" 
F 0 "C22" H 8215 3796 50  0000 L CNN
F 1 "0.1u" H 8215 3705 50  0000 L CNN
F 2 "" H 8138 3600 50  0001 C CNN
F 3 "~" H 8100 3750 50  0001 C CNN
	1    8100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3600 9300 3500
Connection ~ 9300 3500
$Comp
L power:GND #PWR?
U 1 1 62B03DA8
P 8100 4000
AR Path="/62B03DA8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DA8" Ref="#PWR0219"  Part="1" 
F 0 "#PWR0219" H 8100 3750 50  0001 C CNN
F 1 "GND" H 8105 3827 50  0000 C CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03DAE
P 8500 4000
AR Path="/62B03DAE" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DAE" Ref="#PWR0220"  Part="1" 
F 0 "#PWR0220" H 8500 3750 50  0001 C CNN
F 1 "GND" H 8505 3827 50  0000 C CNN
F 2 "" H 8500 4000 50  0001 C CNN
F 3 "" H 8500 4000 50  0001 C CNN
	1    8500 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03DB4
P 8900 4000
AR Path="/62B03DB4" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DB4" Ref="#PWR0221"  Part="1" 
F 0 "#PWR0221" H 8900 3750 50  0001 C CNN
F 1 "GND" H 8905 3827 50  0000 C CNN
F 2 "" H 8900 4000 50  0001 C CNN
F 3 "" H 8900 4000 50  0001 C CNN
	1    8900 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03DBA
P 9300 4000
AR Path="/62B03DBA" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DBA" Ref="#PWR0222"  Part="1" 
F 0 "#PWR0222" H 9300 3750 50  0001 C CNN
F 1 "GND" H 9305 3827 50  0000 C CNN
F 2 "" H 9300 4000 50  0001 C CNN
F 3 "" H 9300 4000 50  0001 C CNN
	1    9300 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4000 9300 3900
Wire Wire Line
	8900 3900 8900 4000
Wire Wire Line
	8500 4000 8500 3900
Wire Wire Line
	8100 3900 8100 4000
$Comp
L Device:C C?
U 1 1 62B03DC4
P 8500 3750
AR Path="/62B03DC4" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DC4" Ref="C23"  Part="1" 
F 0 "C23" H 8615 3796 50  0000 L CNN
F 1 "0.1u" H 8615 3705 50  0000 L CNN
F 2 "" H 8538 3600 50  0001 C CNN
F 3 "~" H 8500 3750 50  0001 C CNN
	1    8500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62B03DCA
P 9300 3750
AR Path="/62B03DCA" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DCA" Ref="C25"  Part="1" 
F 0 "C25" H 9415 3796 50  0000 L CNN
F 1 "0.1u" H 9415 3705 50  0000 L CNN
F 2 "" H 9338 3600 50  0001 C CNN
F 3 "~" H 9300 3750 50  0001 C CNN
	1    9300 3750
	1    0    0    -1  
$EndComp
Connection ~ 8500 3300
Connection ~ 8900 3400
$Comp
L Device:C C?
U 1 1 62B03DE5
P 8900 3750
AR Path="/62B03DE5" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DE5" Ref="C24"  Part="1" 
F 0 "C24" H 9015 3796 50  0000 L CNN
F 1 "0.1u" H 9015 3705 50  0000 L CNN
F 2 "" H 8938 3600 50  0001 C CNN
F 3 "~" H 8900 3750 50  0001 C CNN
	1    8900 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3400 8900 3600
Wire Wire Line
	8500 3300 8500 3600
Connection ~ 8100 3200
Wire Wire Line
	8100 3200 8100 3600
$Comp
L Device:LED_ABGR D?
U 1 1 62B03DF7
P 1700 6050
AR Path="/62B03DF7" Ref="D?"  Part="1" 
AR Path="/61EDC519/62B03DF7" Ref="D17"  Part="1" 
F 0 "D17" H 1700 6547 50  0000 C CNN
F 1 "LED_ABGR" H 1700 6456 50  0000 C CNN
F 2 "" H 1700 6000 50  0001 C CNN
F 3 "~" H 1700 6000 50  0001 C CNN
	1    1700 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 62B03E00
P 1700 5750
AR Path="/62B03E00" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03E00" Ref="#PWR0223"  Part="1" 
F 0 "#PWR0223" H 1700 5600 50  0001 C CNN
F 1 "+3.3V" H 1715 5923 50  0000 C CNN
F 2 "" H 1700 5750 50  0001 C CNN
F 3 "" H 1700 5750 50  0001 C CNN
	1    1700 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 5750 1700 5850
$Comp
L Device:R R?
U 1 1 62B03E07
P 1400 6600
AR Path="/62B03E07" Ref="R?"  Part="1" 
AR Path="/61EDC519/62B03E07" Ref="R46"  Part="1" 
F 0 "R46" V 1193 6600 50  0000 C CNN
F 1 "680" V 1284 6600 50  0000 C CNN
F 2 "" V 1330 6600 50  0001 C CNN
F 3 "~" H 1400 6600 50  0001 C CNN
	1    1400 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62B03E0D
P 1700 6600
AR Path="/62B03E0D" Ref="R?"  Part="1" 
AR Path="/61EDC519/62B03E0D" Ref="R47"  Part="1" 
F 0 "R47" V 1493 6600 50  0000 C CNN
F 1 "330" V 1584 6600 50  0000 C CNN
F 2 "" V 1630 6600 50  0001 C CNN
F 3 "~" H 1700 6600 50  0001 C CNN
	1    1700 6600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62B03E13
P 2000 6600
AR Path="/62B03E13" Ref="R?"  Part="1" 
AR Path="/61EDC519/62B03E13" Ref="R48"  Part="1" 
F 0 "R48" V 1793 6600 50  0000 C CNN
F 1 "330" V 1884 6600 50  0000 C CNN
F 2 "" V 1930 6600 50  0001 C CNN
F 3 "~" H 2000 6600 50  0001 C CNN
	1    2000 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6350 1500 6250
Wire Wire Line
	1900 6350 1900 6250
Wire Wire Line
	2000 6450 2000 6350
Wire Wire Line
	2000 6350 1900 6350
Wire Wire Line
	1700 6250 1700 6450
Wire Wire Line
	1400 6450 1400 6350
Wire Wire Line
	1400 6350 1500 6350
Entry Wire Line
	7750 3300 7650 3200
Entry Wire Line
	7750 3400 7650 3300
Entry Wire Line
	7750 3500 7650 3400
Wire Wire Line
	7750 3200 8100 3200
Wire Wire Line
	7750 3300 8500 3300
Wire Wire Line
	7750 3400 8900 3400
Wire Wire Line
	7750 3500 9300 3500
Text Label 7750 3500 0    50   ~ 0
Rotary1
Text Label 7750 3400 0    50   ~ 0
Rotary2
Text Label 7750 3300 0    50   ~ 0
Rotary4
Text Label 7750 3200 0    50   ~ 0
Rotary8
Entry Wire Line
	4150 4600 4250 4500
Entry Wire Line
	4150 4700 4250 4600
Entry Wire Line
	4150 4800 4250 4700
Entry Wire Line
	4150 4900 4250 4800
Text Label 4150 4900 2    50   ~ 0
Rotary1
Text Label 4150 4800 2    50   ~ 0
Rotary2
Text Label 4150 4700 2    50   ~ 0
Rotary4
Text Label 4150 4600 2    50   ~ 0
Rotary8
Entry Wire Line
	7650 3100 7750 3200
Wire Wire Line
	9650 3600 9650 4000
Wire Wire Line
	9300 3500 9750 3500
Wire Wire Line
	8900 3400 9750 3400
Wire Wire Line
	8500 3300 9750 3300
Wire Wire Line
	8100 3200 9750 3200
Wire Wire Line
	3200 5950 3200 6100
Connection ~ 3200 5400
Wire Wire Line
	3200 5400 3200 5650
Wire Wire Line
	3200 5200 3200 5400
Wire Wire Line
	3200 4800 3200 4900
$Comp
L Device:R R?
U 1 1 61EEE6E8
P 3200 5050
AR Path="/61EEE6E8" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6E8" Ref="R38"  Part="1" 
F 0 "R38" H 3270 5096 50  0000 L CNN
F 1 "16k" H 3270 5005 50  0000 L CNN
F 2 "" V 3130 5050 50  0001 C CNN
F 3 "~" H 3200 5050 50  0001 C CNN
	1    3200 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6E0
P 3200 6100
AR Path="/61EEE6E0" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6E0" Ref="#PWR0228"  Part="1" 
F 0 "#PWR0228" H 3200 5850 50  0001 C CNN
F 1 "GND" H 3205 5927 50  0000 C CNN
F 2 "" H 3200 6100 50  0001 C CNN
F 3 "" H 3200 6100 50  0001 C CNN
	1    3200 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE6DA
P 3200 5800
AR Path="/61EEE6DA" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6DA" Ref="R40"  Part="1" 
F 0 "R40" H 3270 5846 50  0000 L CNN
F 1 "50k" H 3270 5755 50  0000 L CNN
F 2 "" V 3130 5800 50  0001 C CNN
F 3 "~" H 3200 5800 50  0001 C CNN
	1    3200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 5400 4800 5400
$Comp
L Device:LED D?
U 1 1 638B625D
P 2600 6450
AR Path="/638B625D" Ref="D?"  Part="1" 
AR Path="/61EDC519/638B625D" Ref="D19"  Part="1" 
F 0 "D19" V 2639 6332 50  0000 R CNN
F 1 "Red" V 2548 6332 50  0000 R CNN
F 2 "" H 2600 6450 50  0001 C CNN
F 3 "~" H 2600 6450 50  0001 C CNN
	1    2600 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 638B6263
P 2600 6000
AR Path="/638B6263" Ref="R?"  Part="1" 
AR Path="/61EDC519/638B6263" Ref="R45"  Part="1" 
F 0 "R45" H 2670 6046 50  0000 L CNN
F 1 "680" H 2670 5955 50  0000 L CNN
F 2 "" V 2530 6000 50  0001 C CNN
F 3 "~" H 2600 6000 50  0001 C CNN
	1    2600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6150 2600 6300
$Comp
L power:+3.3V #PWR?
U 1 1 638B626D
P 2600 5750
AR Path="/638B626D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638B626D" Ref="#PWR0229"  Part="1" 
F 0 "#PWR0229" H 2600 5600 50  0001 C CNN
F 1 "+3.3V" H 2615 5923 50  0000 C CNN
F 2 "" H 2600 5750 50  0001 C CNN
F 3 "" H 2600 5750 50  0001 C CNN
	1    2600 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5750 2600 5850
$Comp
L Device:LED D?
U 1 1 638B6274
P 2250 6450
AR Path="/638B6274" Ref="D?"  Part="1" 
AR Path="/61EDC519/638B6274" Ref="D18"  Part="1" 
F 0 "D18" V 2289 6332 50  0000 R CNN
F 1 "White" V 2198 6332 50  0000 R CNN
F 2 "" H 2250 6450 50  0001 C CNN
F 3 "~" H 2250 6450 50  0001 C CNN
	1    2250 6450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 638B627A
P 2250 6000
AR Path="/638B627A" Ref="R?"  Part="1" 
AR Path="/61EDC519/638B627A" Ref="R44"  Part="1" 
F 0 "R44" H 2320 6046 50  0000 L CNN
F 1 "82" H 2320 5955 50  0000 L CNN
F 2 "" V 2180 6000 50  0001 C CNN
F 3 "~" H 2250 6000 50  0001 C CNN
	1    2250 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 6150 2250 6300
$Comp
L power:+3.3V #PWR?
U 1 1 638B6284
P 2250 5750
AR Path="/638B6284" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638B6284" Ref="#PWR0230"  Part="1" 
F 0 "#PWR0230" H 2250 5600 50  0001 C CNN
F 1 "+3.3V" H 2265 5923 50  0000 C CNN
F 2 "" H 2250 5750 50  0001 C CNN
F 3 "" H 2250 5750 50  0001 C CNN
	1    2250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 5750 2250 5850
$Comp
L power:+3.3V #PWR?
U 1 1 638F9D59
P 3700 2650
AR Path="/638F9D59" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638F9D59" Ref="#PWR0231"  Part="1" 
F 0 "#PWR0231" H 3700 2500 50  0001 C CNN
F 1 "+3.3V" H 3715 2823 50  0000 C CNN
F 2 "" H 3700 2650 50  0001 C CNN
F 3 "" H 3700 2650 50  0001 C CNN
	1    3700 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 638F9D5F
P 3700 2900
AR Path="/638F9D5F" Ref="R?"  Part="1" 
AR Path="/61EDC519/638F9D5F" Ref="R30"  Part="1" 
F 0 "R30" H 3770 2946 50  0000 L CNN
F 1 "10k" H 3770 2855 50  0000 L CNN
F 2 "" V 3630 2900 50  0001 C CNN
F 3 "~" H 3700 2900 50  0001 C CNN
	1    3700 2900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 638F9D65
P 3700 3450
AR Path="/638F9D65" Ref="SW?"  Part="1" 
AR Path="/61EDC519/638F9D65" Ref="SW3"  Part="1" 
F 0 "SW3" V 3654 3598 50  0000 L CNN
F 1 "SW1" V 3745 3598 50  0000 L CNN
F 2 "" H 3700 3650 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 3700 3650 50  0001 C CNN
	1    3700 3450
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 638F9D6B
P 3350 3450
AR Path="/638F9D6B" Ref="C?"  Part="1" 
AR Path="/61EDC519/638F9D6B" Ref="C21"  Part="1" 
F 0 "C21" H 3465 3496 50  0000 L CNN
F 1 "0.1u" H 3465 3405 50  0000 L CNN
F 2 "" H 3388 3300 50  0001 C CNN
F 3 "~" H 3350 3450 50  0001 C CNN
	1    3350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2750 3700 2650
Wire Wire Line
	3700 3150 3350 3150
Wire Wire Line
	3350 3150 3350 3300
Wire Wire Line
	3700 3250 3700 3150
Connection ~ 3700 3150
Wire Wire Line
	3700 3150 3700 3050
Wire Wire Line
	3700 3750 3350 3750
Wire Wire Line
	3350 3750 3350 3600
Wire Wire Line
	3700 3650 3700 3750
$Comp
L power:GND #PWR?
U 1 1 638F9D7A
P 3700 3850
AR Path="/638F9D7A" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638F9D7A" Ref="#PWR0232"  Part="1" 
F 0 "#PWR0232" H 3700 3600 50  0001 C CNN
F 1 "GND" H 3705 3677 50  0000 C CNN
F 2 "" H 3700 3850 50  0001 C CNN
F 3 "" H 3700 3850 50  0001 C CNN
	1    3700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3850 3700 3750
Connection ~ 3700 3750
$Comp
L power:+3.3V #PWR?
U 1 1 63905AFC
P 2900 3600
AR Path="/63905AFC" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/63905AFC" Ref="#PWR0233"  Part="1" 
F 0 "#PWR0233" H 2900 3450 50  0001 C CNN
F 1 "+3.3V" H 2915 3773 50  0000 C CNN
F 2 "" H 2900 3600 50  0001 C CNN
F 3 "" H 2900 3600 50  0001 C CNN
	1    2900 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63905B02
P 2900 3850
AR Path="/63905B02" Ref="R?"  Part="1" 
AR Path="/61EDC519/63905B02" Ref="R33"  Part="1" 
F 0 "R33" H 2970 3896 50  0000 L CNN
F 1 "10k" H 2970 3805 50  0000 L CNN
F 2 "" V 2830 3850 50  0001 C CNN
F 3 "~" H 2900 3850 50  0001 C CNN
	1    2900 3850
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 63905B08
P 2900 4400
AR Path="/63905B08" Ref="SW?"  Part="1" 
AR Path="/61EDC519/63905B08" Ref="SW4"  Part="1" 
F 0 "SW4" V 2854 4548 50  0000 L CNN
F 1 "SW2" V 2945 4548 50  0000 L CNN
F 2 "" H 2900 4600 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2900 4600 50  0001 C CNN
	1    2900 4400
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 63905B0E
P 2550 4400
AR Path="/63905B0E" Ref="C?"  Part="1" 
AR Path="/61EDC519/63905B0E" Ref="C26"  Part="1" 
F 0 "C26" H 2665 4446 50  0000 L CNN
F 1 "C" H 2665 4355 50  0000 L CNN
F 2 "" H 2588 4250 50  0001 C CNN
F 3 "~" H 2550 4400 50  0001 C CNN
	1    2550 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3700 2900 3600
Wire Wire Line
	2900 4100 2550 4100
Wire Wire Line
	2550 4100 2550 4250
Wire Wire Line
	2900 4200 2900 4100
Connection ~ 2900 4100
Wire Wire Line
	2900 4100 2900 4000
Wire Wire Line
	2900 4700 2550 4700
Wire Wire Line
	2550 4700 2550 4550
Wire Wire Line
	2900 4600 2900 4700
$Comp
L power:GND #PWR?
U 1 1 63905B1D
P 2900 4800
AR Path="/63905B1D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/63905B1D" Ref="#PWR0234"  Part="1" 
F 0 "#PWR0234" H 2900 4550 50  0001 C CNN
F 1 "GND" H 2905 4627 50  0000 C CNN
F 2 "" H 2900 4800 50  0001 C CNN
F 3 "" H 2900 4800 50  0001 C CNN
	1    2900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 4800 2900 4700
Connection ~ 2900 4700
$Comp
L Connector_Generic:Conn_01x10 J11
U 1 1 61F6ED9A
P 3650 4900
F 0 "J11" V 3850 4750 50  0000 C CNN
F 1 "Conn_01x10" V 3750 4750 50  0000 C CNN
F 2 "" H 3650 4900 50  0001 C CNN
F 3 "~" H 3650 4900 50  0001 C CNN
	1    3650 4900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J15
U 1 1 63A439D5
P 1100 7050
F 0 "J15" V 1300 7050 50  0000 C CNN
F 1 "Conn_01x05" V 1200 7050 50  0000 C CNN
F 2 "" H 1100 7050 50  0001 C CNN
F 3 "~" H 1100 7050 50  0001 C CNN
	1    1100 7050
	-1   0    0    1   
$EndComp
Wire Wire Line
	1300 6850 1400 6850
Wire Wire Line
	1400 6850 1400 6750
Wire Wire Line
	1700 6750 1700 6950
Wire Wire Line
	1700 6950 1300 6950
Wire Wire Line
	1300 7050 2000 7050
Wire Wire Line
	2000 7050 2000 6750
Wire Wire Line
	2250 6600 2250 7150
Wire Wire Line
	2250 7150 1300 7150
Wire Wire Line
	1300 7250 2600 7250
Wire Wire Line
	2600 7250 2600 6600
Wire Wire Line
	2900 4100 3950 4100
Wire Wire Line
	3850 4600 4150 4600
Wire Wire Line
	3850 4700 4150 4700
Wire Wire Line
	3850 4800 4150 4800
Wire Wire Line
	3850 4900 4150 4900
Wire Wire Line
	3850 5000 4150 5000
Wire Wire Line
	3850 5100 4150 5100
Wire Wire Line
	3850 5200 4800 5200
Wire Wire Line
	3850 5300 4800 5300
Wire Bus Line
	4250 2650 7650 2650
Wire Wire Line
	4050 3150 3700 3150
$Comp
L Connector_Generic:Conn_01x03 J14
U 1 1 640540A9
P 3950 7000
F 0 "J14" H 4030 7042 50  0000 L CNN
F 1 "Conn_01x03" H 4030 6951 50  0000 L CNN
F 2 "" H 3950 7000 50  0001 C CNN
F 3 "~" H 3950 7000 50  0001 C CNN
	1    3950 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0235
U 1 1 6405495B
P 3650 6800
F 0 "#PWR0235" H 3650 6650 50  0001 C CNN
F 1 "+5V" H 3665 6973 50  0000 C CNN
F 2 "" H 3650 6800 50  0001 C CNN
F 3 "" H 3650 6800 50  0001 C CNN
	1    3650 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6800 3650 6900
Wire Wire Line
	3650 6900 3750 6900
$Comp
L power:+3.3V #PWR0236
U 1 1 640626AB
P 3450 6800
F 0 "#PWR0236" H 3450 6650 50  0001 C CNN
F 1 "+3.3V" H 3465 6973 50  0000 C CNN
F 2 "" H 3450 6800 50  0001 C CNN
F 3 "" H 3450 6800 50  0001 C CNN
	1    3450 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0237
U 1 1 640707D1
P 3650 7200
F 0 "#PWR0237" H 3650 6950 50  0001 C CNN
F 1 "GND" H 3655 7027 50  0000 C CNN
F 2 "" H 3650 7200 50  0001 C CNN
F 3 "" H 3650 7200 50  0001 C CNN
	1    3650 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 7200 3650 7100
Wire Wire Line
	3650 7100 3750 7100
Wire Wire Line
	3450 6800 3450 7000
Wire Wire Line
	3450 7000 3750 7000
$Comp
L Device:R_Pack04 RN3
U 1 1 642AE7D4
P 8750 2600
F 0 "RN3" H 8938 2646 50  0000 L CNN
F 1 "10k" H 8938 2555 50  0000 L CNN
F 2 "" V 9025 2600 50  0001 C CNN
F 3 "~" H 8750 2600 50  0001 C CNN
	1    8750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2800 8850 2900
Wire Wire Line
	8850 2900 9300 2900
Wire Wire Line
	8750 2800 8750 3000
Wire Wire Line
	8750 3000 8900 3000
Wire Wire Line
	8900 3000 8900 3400
Wire Wire Line
	9300 2900 9300 3500
Wire Wire Line
	8650 2800 8650 3000
Wire Wire Line
	8650 3000 8500 3000
Wire Wire Line
	8500 3000 8500 3300
Wire Wire Line
	8550 2800 8550 2900
Wire Wire Line
	8550 2900 8100 2900
Wire Wire Line
	8100 2900 8100 3200
Wire Wire Line
	8550 2400 8550 2300
Wire Wire Line
	8550 2300 8650 2300
Wire Wire Line
	8850 2300 8850 2400
Wire Wire Line
	8650 2300 8650 2400
Connection ~ 8650 2300
Wire Wire Line
	8750 2300 8750 2400
Connection ~ 8750 2300
Wire Wire Line
	8750 2300 8850 2300
Wire Wire Line
	8650 2300 8750 2300
$Comp
L power:+3.3V #PWR0238
U 1 1 6433C2E0
P 8550 2200
F 0 "#PWR0238" H 8550 2050 50  0001 C CNN
F 1 "+3.3V" H 8565 2373 50  0000 C CNN
F 2 "" H 8550 2200 50  0001 C CNN
F 3 "" H 8550 2200 50  0001 C CNN
	1    8550 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2200 8550 2300
Connection ~ 8550 2300
$Comp
L Connector_Generic:Conn_01x02 J20
U 1 1 620E0557
P 1550 1450
F 0 "J20" H 1468 1125 50  0000 C CNN
F 1 "Conn_01x02" H 1468 1216 50  0000 C CNN
F 2 "" H 1550 1450 50  0001 C CNN
F 3 "~" H 1550 1450 50  0001 C CNN
	1    1550 1450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR015
U 1 1 621100C6
P 3200 4800
F 0 "#PWR015" H 3200 4650 50  0001 C CNN
F 1 "+3.3V" H 3215 4973 50  0000 C CNN
F 2 "" H 3200 4800 50  0001 C CNN
F 3 "" H 3200 4800 50  0001 C CNN
	1    3200 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR016
U 1 1 62111549
P 7300 4800
F 0 "#PWR016" H 7300 4650 50  0001 C CNN
F 1 "+3.3V" H 7315 4973 50  0000 C CNN
F 2 "" H 7300 4800 50  0001 C CNN
F 3 "" H 7300 4800 50  0001 C CNN
	1    7300 4800
	1    0    0    -1  
$EndComp
Text Notes 4750 4550 0    50   ~ 0
330uA
Text Notes 8300 4550 0    50   ~ 0
330uA
$Comp
L power:+3.3V #PWR013
U 1 1 62115193
P 4700 4500
F 0 "#PWR013" H 4700 4350 50  0001 C CNN
F 1 "+3.3V" H 4715 4673 50  0000 C CNN
F 2 "" H 4700 4500 50  0001 C CNN
F 3 "" H 4700 4500 50  0001 C CNN
	1    4700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR014
U 1 1 621151F9
P 8250 4500
F 0 "#PWR014" H 8250 4350 50  0001 C CNN
F 1 "+3.3V" H 8265 4673 50  0000 C CNN
F 2 "" H 8250 4500 50  0001 C CNN
F 3 "" H 8250 4500 50  0001 C CNN
	1    8250 4500
	1    0    0    -1  
$EndComp
Text Notes 3250 4850 0    50   ~ 0
50uA
Text Notes 7350 4850 0    50   ~ 0
50uA
Text Notes 3750 2700 0    50   ~ 0
330uA\n
Text Notes 2950 3650 0    50   ~ 0
330uA\n
Text Notes 8600 2200 0    50   ~ 0
1.32mA\n
Wire Wire Line
	3950 4400 3850 4400
Wire Wire Line
	3950 4100 3950 4400
Wire Wire Line
	3850 4500 4050 4500
Wire Wire Line
	4050 3150 4050 4500
Wire Bus Line
	7650 2650 7650 5200
Wire Bus Line
	4250 2650 4250 5000
Text Notes 2350 3050 0    200  ~ 0
Switch
Text Notes 1550 5350 0    200  ~ 0
LED
Text Notes 600  7050 0    50   ~ 0
13mA
$EndSCHEMATC
