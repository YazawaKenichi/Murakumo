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
P 4450 5850
AR Path="/61EEE661" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE661" Ref="R51"  Part="1" 
F 0 "R51" H 4520 5896 50  0000 L CNN
F 1 "1.2k" H 4520 5805 50  0000 L CNN
F 2 "" V 4380 5850 50  0001 C CNN
F 3 "~" H 4450 5850 50  0001 C CNN
	1    4450 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE667
P 4450 6100
AR Path="/61EEE667" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE667" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 4450 5850 50  0001 C CNN
F 1 "GND" H 4455 5927 50  0000 C CNN
F 2 "" H 4450 6100 50  0001 C CNN
F 3 "" H 4450 6100 50  0001 C CNN
	1    4450 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE673
P 4700 4750
AR Path="/61EEE673" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE673" Ref="R45"  Part="1" 
F 0 "R45" H 4770 4796 50  0000 L CNN
F 1 "10k" H 4770 4705 50  0000 L CNN
F 2 "" V 4630 4750 50  0001 C CNN
F 3 "~" H 4700 4750 50  0001 C CNN
	1    4700 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5800 4700 5800
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
AR Path="/61EDC519/61EEE691" Ref="C42"  Part="1" 
F 0 "C42" H 6115 4746 50  0000 L CNN
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
AR Path="/61EDC519/61EEE697" Ref="C38"  Part="1" 
F 0 "C38" H 6515 4596 50  0000 L CNN
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
AR Path="/61EDC519/61EEE69D" Ref="#PWR0138"  Part="1" 
F 0 "#PWR0138" H 6400 4550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6A3" Ref="C39"  Part="1" 
F 0 "C39" H 6918 4596 50  0000 L CNN
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
AR Path="/61EDC519/61EEE6A9" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 6800 4550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6AF" Ref="#PWR0130"  Part="1" 
F 0 "#PWR0130" H 6800 4050 50  0001 C CNN
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
	4450 5700 4450 5600
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61EEE657
P 5250 5400
AR Path="/61EEE657" Ref="U?"  Part="1" 
AR Path="/61EDC519/61EEE657" Ref="U6"  Part="1" 
F 0 "U6" H 5250 6015 50  0000 C CNN
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
AR Path="/61EDC519/61EEE6C8" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 6000 5550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6C2" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 6200 5550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6B5" Ref="J15"  Part="1" 
F 0 "J15" V 5172 6380 50  0000 L CNN
F 1 "Motor" V 5263 6380 50  0000 L CNN
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
	4450 6000 4450 6100
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
AR Path="/61EDC519/61EEE685" Ref="C44"  Part="1" 
F 0 "C44" H 6565 5296 50  0000 L CNN
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
AR Path="/61EDC519/61FAAAB1" Ref="R52"  Part="1" 
F 0 "R52" H 7920 5896 50  0000 L CNN
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
AR Path="/61EDC519/61FAAAB7" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 7850 5850 50  0001 C CNN
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
AR Path="/61EDC519/61FAAABD" Ref="R46"  Part="1" 
F 0 "R46" H 8320 4796 50  0000 L CNN
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
AR Path="/61EDC519/61FAAACC" Ref="C43"  Part="1" 
F 0 "C43" H 9665 4746 50  0000 L CNN
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
AR Path="/61EDC519/61FAAAD2" Ref="C40"  Part="1" 
F 0 "C40" H 10065 4596 50  0000 L CNN
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
AR Path="/61EDC519/61FAAAD8" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 9950 4550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAADE" Ref="C41"  Part="1" 
F 0 "C41" H 10468 4596 50  0000 L CNN
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
AR Path="/61EDC519/61FAAAE4" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 10350 4550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAAEA" Ref="#PWR0131"  Part="1" 
F 0 "#PWR0131" H 10350 4050 50  0001 C CNN
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
AR Path="/61EDC519/61FAAAF9" Ref="R50"  Part="1" 
F 0 "R50" H 7370 5846 50  0000 L CNN
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
AR Path="/61EDC519/61FAAAFF" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 7300 5850 50  0001 C CNN
F 1 "GND" H 7305 5927 50  0000 C CNN
F 2 "" H 7300 6100 50  0001 C CNN
F 3 "" H 7300 6100 50  0001 C CNN
	1    7300 6100
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
	7700 5300 7600 5200
Entry Wire Line
	7700 5200 7600 5100
Text Label 7700 5200 0    50   ~ 0
DRV2_EN
Text Label 7700 5300 0    50   ~ 0
DRV2_PN
Wire Wire Line
	7300 5200 7300 5400
Wire Wire Line
	7850 5700 7850 5600
$Comp
L DRVxxxx:DRV8874 U?
U 1 1 61FAAB2E
P 8800 5400
AR Path="/61FAAB2E" Ref="U?"  Part="1" 
AR Path="/61EDC519/61FAAB2E" Ref="U7"  Part="1" 
F 0 "U7" H 8800 6015 50  0000 C CNN
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
AR Path="/61EDC519/61FAAB35" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 9550 5550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAB3B" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 9750 5550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAB46" Ref="J16"  Part="1" 
F 0 "J16" V 8722 6380 50  0000 L CNN
F 1 "Motor" V 8813 6380 50  0000 L CNN
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
AR Path="/61EDC519/61FAAB64" Ref="C45"  Part="1" 
F 0 "C45" H 10115 5296 50  0000 L CNN
F 1 "22n" H 10115 5205 50  0000 L CNN
F 2 "" H 10038 5100 50  0001 C CNN
F 3 "~" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61EF4312
P 6700 7200
F 0 "#FLG02" H 6700 7275 50  0001 C CNN
F 1 "PWR_FLAG" H 6700 7373 50  0000 C CNN
F 2 "" H 6700 7200 50  0001 C CNN
F 3 "~" H 6700 7200 50  0001 C CNN
	1    6700 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0160
U 1 1 61EF5D3D
P 6700 7450
F 0 "#PWR0160" H 6700 7200 50  0001 C CNN
F 1 "GND" H 6705 7277 50  0000 C CNN
F 2 "" H 6700 7450 50  0001 C CNN
F 3 "" H 6700 7450 50  0001 C CNN
	1    6700 7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 7450 6700 7200
$Comp
L power:PWR_FLAG #FLG04
U 1 1 61F50837
P 5700 7450
F 0 "#FLG04" H 5700 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5700 7623 50  0000 C CNN
F 2 "" H 5700 7450 50  0001 C CNN
F 3 "~" H 5700 7450 50  0001 C CNN
	1    5700 7450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG05
U 1 1 61F5083D
P 6200 7450
F 0 "#FLG05" H 6200 7525 50  0001 C CNN
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
L power:+5V #PWR0158
U 1 1 61F55377
P 5700 7200
F 0 "#PWR0158" H 5700 7050 50  0001 C CNN
F 1 "+5V" H 5715 7373 50  0000 C CNN
F 2 "" H 5700 7200 50  0001 C CNN
F 3 "" H 5700 7200 50  0001 C CNN
	1    5700 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0159
U 1 1 61F558D3
P 6200 7200
F 0 "#PWR0159" H 6200 7050 50  0001 C CNN
F 1 "+3.3V" H 6215 7373 50  0000 C CNN
F 2 "" H 6200 7200 50  0001 C CNN
F 3 "" H 6200 7200 50  0001 C CNN
	1    6200 7200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 62B03D69
P 10100 3400
AR Path="/62B03D69" Ref="SW?"  Part="1" 
AR Path="/61EDC519/62B03D69" Ref="SW3"  Part="1" 
F 0 "SW3" H 10300 2950 50  0000 R CNN
F 1 "220AMB16R" H 10300 3050 50  0000 R CNN
F 2 "" H 9800 2950 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 10100 3400 50  0001 C CNN
	1    10100 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03D73
P 9600 4000
AR Path="/62B03D73" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03D73" Ref="#PWR0129"  Part="1" 
F 0 "#PWR0129" H 9600 3750 50  0001 C CNN
F 1 "GND" H 9605 3827 50  0000 C CNN
F 2 "" H 9600 4000 50  0001 C CNN
F 3 "" H 9600 4000 50  0001 C CNN
	1    9600 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 3600 9700 3600
$Comp
L Device:C C?
U 1 1 62B03D7B
P 8050 3750
AR Path="/62B03D7B" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03D7B" Ref="C31"  Part="1" 
F 0 "C31" H 8165 3796 50  0000 L CNN
F 1 "0.1u" H 8165 3705 50  0000 L CNN
F 2 "" H 8088 3600 50  0001 C CNN
F 3 "~" H 8050 3750 50  0001 C CNN
	1    8050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 3600 9250 3500
Connection ~ 9250 3500
$Comp
L power:GND #PWR?
U 1 1 62B03DA8
P 8050 4000
AR Path="/62B03DA8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DA8" Ref="#PWR0125"  Part="1" 
F 0 "#PWR0125" H 8050 3750 50  0001 C CNN
F 1 "GND" H 8055 3827 50  0000 C CNN
F 2 "" H 8050 4000 50  0001 C CNN
F 3 "" H 8050 4000 50  0001 C CNN
	1    8050 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03DAE
P 8450 4000
AR Path="/62B03DAE" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DAE" Ref="#PWR0126"  Part="1" 
F 0 "#PWR0126" H 8450 3750 50  0001 C CNN
F 1 "GND" H 8455 3827 50  0000 C CNN
F 2 "" H 8450 4000 50  0001 C CNN
F 3 "" H 8450 4000 50  0001 C CNN
	1    8450 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03DB4
P 8850 4000
AR Path="/62B03DB4" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DB4" Ref="#PWR0127"  Part="1" 
F 0 "#PWR0127" H 8850 3750 50  0001 C CNN
F 1 "GND" H 8855 3827 50  0000 C CNN
F 2 "" H 8850 4000 50  0001 C CNN
F 3 "" H 8850 4000 50  0001 C CNN
	1    8850 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03DBA
P 9250 4000
AR Path="/62B03DBA" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03DBA" Ref="#PWR0128"  Part="1" 
F 0 "#PWR0128" H 9250 3750 50  0001 C CNN
F 1 "GND" H 9255 3827 50  0000 C CNN
F 2 "" H 9250 4000 50  0001 C CNN
F 3 "" H 9250 4000 50  0001 C CNN
	1    9250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4000 9250 3900
Wire Wire Line
	8850 3900 8850 4000
Wire Wire Line
	8450 4000 8450 3900
Wire Wire Line
	8050 3900 8050 4000
$Comp
L Device:C C?
U 1 1 62B03DC4
P 8450 3750
AR Path="/62B03DC4" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DC4" Ref="C32"  Part="1" 
F 0 "C32" H 8565 3796 50  0000 L CNN
F 1 "0.1u" H 8565 3705 50  0000 L CNN
F 2 "" H 8488 3600 50  0001 C CNN
F 3 "~" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62B03DCA
P 9250 3750
AR Path="/62B03DCA" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DCA" Ref="C34"  Part="1" 
F 0 "C34" H 9365 3796 50  0000 L CNN
F 1 "0.1u" H 9365 3705 50  0000 L CNN
F 2 "" H 9288 3600 50  0001 C CNN
F 3 "~" H 9250 3750 50  0001 C CNN
	1    9250 3750
	1    0    0    -1  
$EndComp
Connection ~ 8450 3300
Connection ~ 8850 3400
$Comp
L Device:C C?
U 1 1 62B03DE5
P 8850 3750
AR Path="/62B03DE5" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DE5" Ref="C33"  Part="1" 
F 0 "C33" H 8965 3796 50  0000 L CNN
F 1 "0.1u" H 8965 3705 50  0000 L CNN
F 2 "" H 8888 3600 50  0001 C CNN
F 3 "~" H 8850 3750 50  0001 C CNN
	1    8850 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 3400 8850 3600
Wire Wire Line
	8450 3300 8450 3600
Connection ~ 8050 3200
Wire Wire Line
	8050 3200 8050 3600
$Comp
L Device:LED_ABGR D?
U 1 1 62B03DF7
P 1700 6050
AR Path="/62B03DF7" Ref="D?"  Part="1" 
AR Path="/61EDC519/62B03DF7" Ref="D21"  Part="1" 
F 0 "D21" H 1700 6547 50  0000 C CNN
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
AR Path="/61EDC519/62B03E00" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 1700 5600 50  0001 C CNN
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
AR Path="/61EDC519/62B03E07" Ref="R55"  Part="1" 
F 0 "R55" V 1193 6600 50  0000 C CNN
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
AR Path="/61EDC519/62B03E0D" Ref="R56"  Part="1" 
F 0 "R56" V 1493 6600 50  0000 C CNN
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
AR Path="/61EDC519/62B03E13" Ref="R57"  Part="1" 
F 0 "R57" V 1793 6600 50  0000 C CNN
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
	7700 3300 7600 3200
Entry Wire Line
	7700 3400 7600 3300
Entry Wire Line
	7700 3500 7600 3400
Wire Wire Line
	7700 3200 8050 3200
Wire Wire Line
	7700 3300 8450 3300
Wire Wire Line
	7700 3400 8850 3400
Wire Wire Line
	7700 3500 9250 3500
Text Label 7700 3500 0    50   ~ 0
Rotary1
Text Label 7700 3400 0    50   ~ 0
Rotary2
Text Label 7700 3300 0    50   ~ 0
Rotary4
Text Label 7700 3200 0    50   ~ 0
Rotary8
Entry Wire Line
	7600 3100 7700 3200
Wire Wire Line
	9600 3600 9600 4000
Wire Wire Line
	9250 3500 9700 3500
Wire Wire Line
	8850 3400 9700 3400
Wire Wire Line
	8450 3300 9700 3300
Wire Wire Line
	8050 3200 9700 3200
Wire Wire Line
	3500 6950 3500 7100
Wire Wire Line
	3500 5800 3500 5900
$Comp
L Device:R R?
U 1 1 61EEE6E8
P 3500 6050
AR Path="/61EEE6E8" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6E8" Ref="R47"  Part="1" 
F 0 "R47" H 3570 6096 50  0000 L CNN
F 1 "16k" H 3570 6005 50  0000 L CNN
F 2 "" V 3430 6050 50  0001 C CNN
F 3 "~" H 3500 6050 50  0001 C CNN
	1    3500 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6E0
P 3500 7100
AR Path="/61EEE6E0" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6E0" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 3500 6850 50  0001 C CNN
F 1 "GND" H 3505 6927 50  0000 C CNN
F 2 "" H 3500 7100 50  0001 C CNN
F 3 "" H 3500 7100 50  0001 C CNN
	1    3500 7100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE6DA
P 3500 6800
AR Path="/61EEE6DA" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6DA" Ref="R49"  Part="1" 
F 0 "R49" H 3570 6846 50  0000 L CNN
F 1 "50k" H 3570 6755 50  0000 L CNN
F 2 "" V 3430 6800 50  0001 C CNN
F 3 "~" H 3500 6800 50  0001 C CNN
	1    3500 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 638B625D
P 2600 6450
AR Path="/638B625D" Ref="D?"  Part="1" 
AR Path="/61EDC519/638B625D" Ref="D23"  Part="1" 
F 0 "D23" V 2639 6332 50  0000 R CNN
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
AR Path="/61EDC519/638B6263" Ref="R54"  Part="1" 
F 0 "R54" H 2670 6046 50  0000 L CNN
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
AR Path="/61EDC519/638B626D" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 2600 5600 50  0001 C CNN
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
AR Path="/61EDC519/638B6274" Ref="D22"  Part="1" 
F 0 "D22" V 2289 6332 50  0000 R CNN
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
AR Path="/61EDC519/638B627A" Ref="R53"  Part="1" 
F 0 "R53" H 2320 6046 50  0000 L CNN
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
AR Path="/61EDC519/638B6284" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 2250 5600 50  0001 C CNN
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
P 2600 3200
AR Path="/638F9D59" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638F9D59" Ref="#PWR0124"  Part="1" 
F 0 "#PWR0124" H 2600 3050 50  0001 C CNN
F 1 "+3.3V" H 2615 3373 50  0000 C CNN
F 2 "" H 2600 3200 50  0001 C CNN
F 3 "" H 2600 3200 50  0001 C CNN
	1    2600 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 638F9D5F
P 2600 3450
AR Path="/638F9D5F" Ref="R?"  Part="1" 
AR Path="/61EDC519/638F9D5F" Ref="R44"  Part="1" 
F 0 "R44" H 2670 3496 50  0000 L CNN
F 1 "10k" H 2670 3405 50  0000 L CNN
F 2 "" V 2530 3450 50  0001 C CNN
F 3 "~" H 2600 3450 50  0001 C CNN
	1    2600 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 638F9D65
P 2600 4000
AR Path="/638F9D65" Ref="SW?"  Part="1" 
AR Path="/61EDC519/638F9D65" Ref="SW6"  Part="1" 
F 0 "SW6" V 2554 4148 50  0000 L CNN
F 1 "SW1" V 2645 4148 50  0000 L CNN
F 2 "" H 2600 4200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 2600 4200 50  0001 C CNN
	1    2600 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 638F9D6B
P 2250 4000
AR Path="/638F9D6B" Ref="C?"  Part="1" 
AR Path="/61EDC519/638F9D6B" Ref="C37"  Part="1" 
F 0 "C37" H 2365 4046 50  0000 L CNN
F 1 "0.1u" H 2365 3955 50  0000 L CNN
F 2 "" H 2288 3850 50  0001 C CNN
F 3 "~" H 2250 4000 50  0001 C CNN
	1    2250 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3300 2600 3200
Wire Wire Line
	2600 3700 2250 3700
Wire Wire Line
	2250 3700 2250 3850
Wire Wire Line
	2600 3800 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2600 3700 2600 3600
Wire Wire Line
	2600 4300 2250 4300
Wire Wire Line
	2250 4300 2250 4150
Wire Wire Line
	2600 4200 2600 4300
$Comp
L power:GND #PWR?
U 1 1 638F9D7A
P 2600 4400
AR Path="/638F9D7A" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638F9D7A" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 2600 4150 50  0001 C CNN
F 1 "GND" H 2605 4227 50  0000 C CNN
F 2 "" H 2600 4400 50  0001 C CNN
F 3 "" H 2600 4400 50  0001 C CNN
	1    2600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4400 2600 4300
Connection ~ 2600 4300
$Comp
L power:+3.3V #PWR?
U 1 1 63905AFC
P 1100 3200
AR Path="/63905AFC" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/63905AFC" Ref="#PWR0122"  Part="1" 
F 0 "#PWR0122" H 1100 3050 50  0001 C CNN
F 1 "+3.3V" H 1115 3373 50  0000 C CNN
F 2 "" H 1100 3200 50  0001 C CNN
F 3 "" H 1100 3200 50  0001 C CNN
	1    1100 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 63905B02
P 1100 3450
AR Path="/63905B02" Ref="R?"  Part="1" 
AR Path="/61EDC519/63905B02" Ref="R42"  Part="1" 
F 0 "R42" H 1170 3496 50  0000 L CNN
F 1 "10k" H 1170 3405 50  0000 L CNN
F 2 "" V 1030 3450 50  0001 C CNN
F 3 "~" H 1100 3450 50  0001 C CNN
	1    1100 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 63905B08
P 1100 4000
AR Path="/63905B08" Ref="SW?"  Part="1" 
AR Path="/61EDC519/63905B08" Ref="SW4"  Part="1" 
F 0 "SW4" V 1054 4148 50  0000 L CNN
F 1 "SW3" V 1145 4148 50  0000 L CNN
F 2 "" H 1100 4200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1100 4200 50  0001 C CNN
	1    1100 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 63905B0E
P 750 4000
AR Path="/63905B0E" Ref="C?"  Part="1" 
AR Path="/61EDC519/63905B0E" Ref="C35"  Part="1" 
F 0 "C35" H 865 4046 50  0000 L CNN
F 1 "C" H 865 3955 50  0000 L CNN
F 2 "" H 788 3850 50  0001 C CNN
F 3 "~" H 750 4000 50  0001 C CNN
	1    750  4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3300 1100 3200
Wire Wire Line
	1100 3700 750  3700
Wire Wire Line
	750  3700 750  3850
Wire Wire Line
	1100 3800 1100 3700
Connection ~ 1100 3700
Wire Wire Line
	1100 3700 1100 3600
Wire Wire Line
	1100 4300 750  4300
Wire Wire Line
	750  4300 750  4150
Wire Wire Line
	1100 4200 1100 4300
$Comp
L power:GND #PWR?
U 1 1 63905B1D
P 1100 4400
AR Path="/63905B1D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/63905B1D" Ref="#PWR0134"  Part="1" 
F 0 "#PWR0134" H 1100 4150 50  0001 C CNN
F 1 "GND" H 1105 4227 50  0000 C CNN
F 2 "" H 1100 4400 50  0001 C CNN
F 3 "" H 1100 4400 50  0001 C CNN
	1    1100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4400 1100 4300
Connection ~ 1100 4300
$Comp
L Connector_Generic:Conn_01x05 J18
U 1 1 63A439D5
P 1100 7050
F 0 "J18" V 1300 7050 50  0000 C CNN
F 1 "CPU_GPIO" V 1200 7050 50  0000 C CNN
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
$Comp
L Connector_Generic:Conn_01x03 J17
U 1 1 640540A9
P 4550 7050
F 0 "J17" H 4630 7092 50  0000 L CNN
F 1 "Power" H 4630 7001 50  0000 L CNN
F 2 "" H 4550 7050 50  0001 C CNN
F 3 "~" H 4550 7050 50  0001 C CNN
	1    4550 7050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0155
U 1 1 6405495B
P 4250 6850
F 0 "#PWR0155" H 4250 6700 50  0001 C CNN
F 1 "+5V" H 4265 7023 50  0000 C CNN
F 2 "" H 4250 6850 50  0001 C CNN
F 3 "" H 4250 6850 50  0001 C CNN
	1    4250 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 6850 4250 6950
Wire Wire Line
	4250 6950 4350 6950
$Comp
L power:+3.3V #PWR0154
U 1 1 640626AB
P 4050 6850
F 0 "#PWR0154" H 4050 6700 50  0001 C CNN
F 1 "+3.3V" H 4065 7023 50  0000 C CNN
F 2 "" H 4050 6850 50  0001 C CNN
F 3 "" H 4050 6850 50  0001 C CNN
	1    4050 6850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0156
U 1 1 640707D1
P 4250 7250
F 0 "#PWR0156" H 4250 7000 50  0001 C CNN
F 1 "GND" H 4255 7077 50  0000 C CNN
F 2 "" H 4250 7250 50  0001 C CNN
F 3 "" H 4250 7250 50  0001 C CNN
	1    4250 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 7250 4250 7150
Wire Wire Line
	4250 7150 4350 7150
Wire Wire Line
	4050 6850 4050 7050
Wire Wire Line
	4050 7050 4350 7050
$Comp
L Device:R_Pack04 RN3
U 1 1 642AE7D4
P 8700 2600
F 0 "RN3" H 8888 2646 50  0000 L CNN
F 1 "10k" H 8888 2555 50  0000 L CNN
F 2 "" V 8975 2600 50  0001 C CNN
F 3 "~" H 8700 2600 50  0001 C CNN
	1    8700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2800 8800 2900
Wire Wire Line
	8800 2900 9250 2900
Wire Wire Line
	8700 2800 8700 3000
Wire Wire Line
	8700 3000 8850 3000
Wire Wire Line
	8850 3000 8850 3400
Wire Wire Line
	9250 2900 9250 3500
Wire Wire Line
	8600 2800 8600 3000
Wire Wire Line
	8600 3000 8450 3000
Wire Wire Line
	8450 3000 8450 3300
Wire Wire Line
	8500 2800 8500 2900
Wire Wire Line
	8500 2900 8050 2900
Wire Wire Line
	8050 2900 8050 3200
Wire Wire Line
	8500 2400 8500 2300
Wire Wire Line
	8500 2300 8600 2300
Wire Wire Line
	8800 2300 8800 2400
Wire Wire Line
	8600 2300 8600 2400
Connection ~ 8600 2300
Wire Wire Line
	8700 2300 8700 2400
Connection ~ 8700 2300
Wire Wire Line
	8700 2300 8800 2300
Wire Wire Line
	8600 2300 8700 2300
$Comp
L power:+3.3V #PWR0120
U 1 1 6433C2E0
P 8500 2200
F 0 "#PWR0120" H 8500 2050 50  0001 C CNN
F 1 "+3.3V" H 8515 2373 50  0000 C CNN
F 2 "" H 8500 2200 50  0001 C CNN
F 3 "" H 8500 2200 50  0001 C CNN
	1    8500 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2200 8500 2300
Connection ~ 8500 2300
$Comp
L power:+3.3V #PWR0137
U 1 1 621100C6
P 3500 5800
F 0 "#PWR0137" H 3500 5650 50  0001 C CNN
F 1 "+3.3V" H 3515 5973 50  0000 C CNN
F 2 "" H 3500 5800 50  0001 C CNN
F 3 "" H 3500 5800 50  0001 C CNN
	1    3500 5800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0140
U 1 1 62111549
P 7300 4800
F 0 "#PWR0140" H 7300 4650 50  0001 C CNN
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
L power:+3.3V #PWR0132
U 1 1 62115193
P 4700 4500
F 0 "#PWR0132" H 4700 4350 50  0001 C CNN
F 1 "+3.3V" H 4715 4673 50  0000 C CNN
F 2 "" H 4700 4500 50  0001 C CNN
F 3 "" H 4700 4500 50  0001 C CNN
	1    4700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0133
U 1 1 621151F9
P 8250 4500
F 0 "#PWR0133" H 8250 4350 50  0001 C CNN
F 1 "+3.3V" H 8265 4673 50  0000 C CNN
F 2 "" H 8250 4500 50  0001 C CNN
F 3 "" H 8250 4500 50  0001 C CNN
	1    8250 4500
	1    0    0    -1  
$EndComp
Text Notes 3400 6150 1    50   ~ 0
50uA
Text Notes 7250 4900 1    50   ~ 0
50uA
Text Notes 2500 3550 1    50   ~ 0
330uA\n
Text Notes 8550 2200 0    50   ~ 0
1.32mA\n
Text Notes 1450 2900 0    200  ~ 0
Switch
Text Notes 1550 5350 0    200  ~ 0
LED
$Comp
L power:+3.3V #PWR?
U 1 1 62216308
P 1850 3200
AR Path="/62216308" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62216308" Ref="#PWR0123"  Part="1" 
F 0 "#PWR0123" H 1850 3050 50  0001 C CNN
F 1 "+3.3V" H 1865 3373 50  0000 C CNN
F 2 "" H 1850 3200 50  0001 C CNN
F 3 "" H 1850 3200 50  0001 C CNN
	1    1850 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6221630E
P 1850 3450
AR Path="/6221630E" Ref="R?"  Part="1" 
AR Path="/61EDC519/6221630E" Ref="R43"  Part="1" 
F 0 "R43" H 1920 3496 50  0000 L CNN
F 1 "10k" H 1920 3405 50  0000 L CNN
F 2 "" V 1780 3450 50  0001 C CNN
F 3 "~" H 1850 3450 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 62216314
P 1850 4000
AR Path="/62216314" Ref="SW?"  Part="1" 
AR Path="/61EDC519/62216314" Ref="SW5"  Part="1" 
F 0 "SW5" V 1804 4148 50  0000 L CNN
F 1 "SW2" V 1895 4148 50  0000 L CNN
F 2 "" H 1850 4200 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 1850 4200 50  0001 C CNN
	1    1850 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6221631A
P 1500 4000
AR Path="/6221631A" Ref="C?"  Part="1" 
AR Path="/61EDC519/6221631A" Ref="C36"  Part="1" 
F 0 "C36" H 1615 4046 50  0000 L CNN
F 1 "0.1u" H 1615 3955 50  0000 L CNN
F 2 "" H 1538 3850 50  0001 C CNN
F 3 "~" H 1500 4000 50  0001 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3300 1850 3200
Wire Wire Line
	1850 3700 1500 3700
Wire Wire Line
	1500 3700 1500 3850
Wire Wire Line
	1850 3800 1850 3700
Connection ~ 1850 3700
Wire Wire Line
	1850 3700 1850 3600
Wire Wire Line
	1850 4300 1500 4300
Wire Wire Line
	1500 4300 1500 4150
Wire Wire Line
	1850 4200 1850 4300
$Comp
L power:GND #PWR?
U 1 1 62216329
P 1850 4400
AR Path="/62216329" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62216329" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 1850 4150 50  0001 C CNN
F 1 "GND" H 1855 4227 50  0000 C CNN
F 2 "" H 1850 4400 50  0001 C CNN
F 3 "" H 1850 4400 50  0001 C CNN
	1    1850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 4400 1850 4300
Connection ~ 1850 4300
Text Notes 1750 3550 1    50   ~ 0
330uA\n
Text Notes 1000 3550 1    50   ~ 0
330uA\n
Wire Wire Line
	1100 3700 1350 3700
Wire Wire Line
	1350 3700 1350 3050
Wire Wire Line
	2100 3050 2100 3700
Wire Wire Line
	2100 3700 1850 3700
Wire Wire Line
	2600 3700 2850 3700
Entry Wire Line
	2100 3050 2200 2950
Entry Wire Line
	1350 3050 1450 2950
Text Notes 5550 4150 0    200  ~ 0
Driver
Text Notes 9150 2450 0    200  ~ 0
RotarySwitch
$Comp
L power:+BATT #PWR0157
U 1 1 62590B20
P 5200 7200
F 0 "#PWR0157" H 5200 7050 50  0001 C CNN
F 1 "+BATT" H 5215 7373 50  0000 C CNN
F 2 "" H 5200 7200 50  0001 C CNN
F 3 "" H 5200 7200 50  0001 C CNN
	1    5200 7200
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6259148C
P 5200 7450
F 0 "#FLG03" H 5200 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 5200 7623 50  0000 C CNN
F 2 "" H 5200 7450 50  0001 C CNN
F 3 "~" H 5200 7450 50  0001 C CNN
	1    5200 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5200 7450 5200 7200
Text Label 2850 3050 3    50   ~ 0
SW1
Text Label 2100 3050 3    50   ~ 0
SW2
Text Label 1350 3050 3    50   ~ 0
SW3
Wire Wire Line
	2050 1550 2050 1750
Connection ~ 2050 1550
Wire Wire Line
	1600 1550 2050 1550
Wire Wire Line
	2050 1350 2050 1550
Wire Wire Line
	1600 1050 1850 1050
Connection ~ 1600 1050
$Comp
L Device:Q_PMOS_GDS Q18
U 1 1 6264385E
P 2050 1150
F 0 "Q18" V 2392 1150 50  0000 C CNN
F 1 "CXDM4060P" V 2301 1150 50  0000 C CNN
F 2 "" H 2250 1250 50  0001 C CNN
F 3 "~" H 2050 1150 50  0001 C CNN
	1    2050 1150
	0    1    -1   0   
$EndComp
Connection ~ 2650 1550
Wire Wire Line
	2650 1550 2650 2250
Connection ~ 2650 1050
Wire Wire Line
	3050 1550 3750 1550
Connection ~ 3050 1550
Wire Wire Line
	2650 1550 3050 1550
Wire Wire Line
	3050 1050 3250 1050
Connection ~ 3050 1050
Wire Wire Line
	2650 1050 3050 1050
Wire Wire Line
	3050 1450 3050 1550
Wire Wire Line
	2650 1450 2650 1550
Wire Wire Line
	3050 1050 3050 1150
Wire Wire Line
	2650 1050 2650 1150
$Comp
L Device:C C25
U 1 1 625295EC
P 3050 1300
F 0 "C25" H 3165 1346 50  0000 L CNN
F 1 "0.1u" H 3165 1255 50  0000 L CNN
F 2 "" H 3088 1150 50  0001 C CNN
F 3 "~" H 3050 1300 50  0001 C CNN
	1    3050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C24
U 1 1 625295E6
P 2650 1300
F 0 "C24" H 2768 1346 50  0000 L CNN
F 1 "10u" H 2768 1255 50  0000 L CNN
F 2 "" H 2688 1150 50  0001 C CNN
F 3 "~" H 2650 1300 50  0001 C CNN
	1    2650 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 1050 2450 1050
Wire Wire Line
	2450 1050 2650 1050
Connection ~ 2450 1050
Connection ~ 2150 2250
Wire Wire Line
	2150 2150 2150 2250
Wire Wire Line
	1400 1050 1600 1050
Wire Wire Line
	1400 1250 1400 1050
Wire Wire Line
	1400 1350 1400 2250
Wire Wire Line
	1600 1450 1600 1550
Wire Wire Line
	1600 1150 1600 1050
$Comp
L Device:R R41
U 1 1 62431972
P 1600 1300
F 0 "R41" H 1670 1346 50  0000 L CNN
F 1 "10k" H 1670 1255 50  0000 L CNN
F 2 "" V 1530 1300 50  0001 C CNN
F 3 "~" H 1600 1300 50  0001 C CNN
	1    1600 1300
	1    0    0    -1  
$EndComp
Connection ~ 3750 1550
Connection ~ 3750 1050
Wire Wire Line
	3550 1050 3750 1050
Wire Wire Line
	1400 1350 1150 1350
Wire Wire Line
	1150 1250 1400 1250
Wire Wire Line
	3750 1550 4150 1550
Wire Wire Line
	3750 1050 4150 1050
Wire Wire Line
	4150 1550 4800 1550
Connection ~ 4150 1550
Wire Wire Line
	4150 1050 4400 1050
Connection ~ 4150 1050
Connection ~ 7250 1050
Wire Wire Line
	6650 1550 7250 1550
Wire Wire Line
	7050 1050 7250 1050
Wire Wire Line
	5850 1550 6650 1550
$Comp
L Regulator:LT1963EST-3.3#PBF U5
U 1 1 6227BB5B
P 6650 1150
F 0 "U5" H 6650 1515 50  0000 C CNN
F 1 "LT1963EST-3.3#PBF" H 6650 1424 50  0000 C CNN
F 2 "" H 6650 1150 50  0001 C CNN
F 3 "" H 6650 1150 50  0001 C CNN
	1    6650 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 1450 6650 1550
Connection ~ 6650 1550
$Comp
L Device:D_Schottky D20
U 1 1 6215FD36
P 3400 1050
F 0 "D20" H 3400 833 50  0000 C CNN
F 1 "D_Schottky" H 3400 924 50  0000 C CNN
F 2 "" H 3400 1050 50  0001 C CNN
F 3 "~" H 3400 1050 50  0001 C CNN
	1    3400 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	5450 1550 5850 1550
Wire Wire Line
	5450 1050 5850 1050
Wire Wire Line
	5850 1050 6250 1050
Connection ~ 5850 1550
Wire Wire Line
	7250 950  7250 1050
$Comp
L power:+3.3V #PWR0119
U 1 1 623F6EA9
P 7250 950
F 0 "#PWR0119" H 7250 800 50  0001 C CNN
F 1 "+3.3V" H 7265 1123 50  0000 C CNN
F 2 "" H 7250 950 50  0001 C CNN
F 3 "" H 7250 950 50  0001 C CNN
	1    7250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 950  5850 1050
Connection ~ 5850 1050
$Comp
L power:+5V #PWR0118
U 1 1 623E2BEC
P 5850 950
F 0 "#PWR0118" H 5850 800 50  0001 C CNN
F 1 "+5V" H 5865 1123 50  0000 C CNN
F 2 "" H 5850 950 50  0001 C CNN
F 3 "" H 5850 950 50  0001 C CNN
	1    5850 950 
	1    0    0    -1  
$EndComp
Text Notes 800  900  0    200  ~ 0
Power
Wire Wire Line
	2450 950  2450 1050
$Comp
L power:+BATT #PWR0117
U 1 1 620884F0
P 2450 950
F 0 "#PWR0117" H 2450 800 50  0001 C CNN
F 1 "+BATT" H 2465 1123 50  0000 C CNN
F 2 "" H 2450 950 50  0001 C CNN
F 3 "" H 2450 950 50  0001 C CNN
	1    2450 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1550 7250 1450
Wire Wire Line
	7250 1050 7250 1150
$Comp
L Device:CP C30
U 1 1 6205428A
P 7250 1300
F 0 "C30" H 7368 1346 50  0000 L CNN
F 1 "10u" H 7368 1255 50  0000 L CNN
F 2 "" H 7288 1150 50  0001 C CNN
F 3 "~" H 7250 1300 50  0001 C CNN
	1    7250 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1450 4150 1550
Wire Wire Line
	2150 2250 2150 2350
$Comp
L power:GND #PWR0121
U 1 1 62032D01
P 2150 2350
F 0 "#PWR0121" H 2150 2100 50  0001 C CNN
F 1 "GND" H 2155 2177 50  0000 C CNN
F 2 "" H 2150 2350 50  0001 C CNN
F 3 "" H 2150 2350 50  0001 C CNN
	1    2150 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1550 5450 1550
Connection ~ 4800 1550
Wire Wire Line
	4800 1450 4800 1550
Connection ~ 5450 1550
Wire Wire Line
	5450 1450 5450 1550
Wire Wire Line
	5850 1550 5850 1450
Wire Wire Line
	3750 1450 3750 1550
Wire Wire Line
	4150 1050 4150 1150
Wire Wire Line
	3750 1050 3750 1150
Connection ~ 5450 1050
Wire Wire Line
	5450 1150 5450 1050
Wire Wire Line
	5850 1050 5850 1150
Wire Wire Line
	5200 1050 5450 1050
$Comp
L Device:C C27
U 1 1 61FB3220
P 4150 1300
F 0 "C27" H 4265 1346 50  0000 L CNN
F 1 "0.1u" H 4265 1255 50  0000 L CNN
F 2 "" H 4188 1150 50  0001 C CNN
F 3 "~" H 4150 1300 50  0001 C CNN
	1    4150 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 61FB31A3
P 5450 1300
F 0 "C28" H 5565 1346 50  0000 L CNN
F 1 "0.1u" H 5565 1255 50  0000 L CNN
F 2 "" H 5488 1150 50  0001 C CNN
F 3 "~" H 5450 1300 50  0001 C CNN
	1    5450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C29
U 1 1 61FB281B
P 5850 1300
F 0 "C29" H 5968 1346 50  0000 L CNN
F 1 "10u" H 5968 1255 50  0000 L CNN
F 2 "" H 5888 1150 50  0001 C CNN
F 3 "~" H 5850 1300 50  0001 C CNN
	1    5850 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C26
U 1 1 61FB2792
P 3750 1300
F 0 "C26" H 3868 1346 50  0000 L CNN
F 1 "10u" H 3868 1255 50  0000 L CNN
F 2 "" H 3788 1150 50  0001 C CNN
F 3 "~" H 3750 1300 50  0001 C CNN
	1    3750 1300
	1    0    0    -1  
$EndComp
$Comp
L Regulator:Regulator_IGO U4
U 1 1 61FA3A11
P 4800 1150
F 0 "U4" H 4800 1515 50  0000 C CNN
F 1 "NCV7805BD2TG" H 4800 1424 50  0000 C CNN
F 2 "" H 4800 1150 50  0001 C CNN
F 3 "" H 4800 1150 50  0001 C CNN
	1    4800 1150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J13
U 1 1 620E0557
P 950 1350
F 0 "J13" H 868 1025 50  0000 C CNN
F 1 "Conn_01x02" H 868 1116 50  0000 C CNN
F 2 "" H 950 1350 50  0001 C CNN
F 3 "~" H 950 1350 50  0001 C CNN
	1    950  1350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R48
U 1 1 61F74749
P 7300 5050
F 0 "R48" H 7370 5096 50  0000 L CNN
F 1 "16k" H 7370 5005 50  0000 L CNN
F 2 "" V 7230 5050 50  0001 C CNN
F 3 "~" H 7300 5050 50  0001 C CNN
	1    7300 5050
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW2
U 1 1 621E6B6C
P 2050 1950
F 0 "SW2" V 2004 2098 50  0000 L CNN
F 1 "SW_DPDT_x2" V 2095 2098 50  0000 L CNN
F 2 "" H 2050 1950 50  0001 C CNN
F 3 "~" H 2050 1950 50  0001 C CNN
	1    2050 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2250 2150 2250
Wire Wire Line
	2150 2250 1400 2250
NoConn ~ 1950 2150
Text Notes 2700 6350 0    50   ~ 0
2mA
Text Notes 2350 6350 0    50   ~ 0
5mA
Wire Wire Line
	4450 5600 4800 5600
Entry Wire Line
	2850 3050 2950 2950
Wire Wire Line
	2850 3050 2850 3700
Wire Wire Line
	4700 4900 4700 5000
Wire Wire Line
	4700 5000 4800 5000
Wire Wire Line
	3500 6200 3500 6400
Wire Wire Line
	3500 6400 3800 6400
Wire Wire Line
	3800 6400 3800 5400
Connection ~ 3500 6400
Wire Wire Line
	3500 6400 3500 6650
Wire Wire Line
	3800 5400 4800 5400
Wire Wire Line
	3450 4700 3950 4700
Wire Wire Line
	3450 4600 3950 4600
Wire Wire Line
	3450 4500 3950 4500
Wire Wire Line
	3450 4400 3950 4400
Wire Wire Line
	3450 4300 3950 4300
Wire Wire Line
	3450 4200 3950 4200
Wire Wire Line
	3450 4100 3950 4100
Wire Wire Line
	3450 4000 3950 4000
Wire Wire Line
	3450 3850 3950 3850
Wire Wire Line
	3450 3750 3950 3750
Wire Wire Line
	3450 3650 3950 3650
Wire Wire Line
	3450 3550 3950 3550
Wire Wire Line
	3450 3450 3950 3450
Wire Wire Line
	3450 3350 3950 3350
Wire Wire Line
	3450 3250 3950 3250
Text Label 3950 4700 2    50   ~ 0
DRV1_nFAULT
Text Label 3950 4600 2    50   ~ 0
DRV1_nSLEEP
Text Label 3950 4500 2    50   ~ 0
DRV1_EN
Text Label 3950 4400 2    50   ~ 0
DRV1_PN
Text Label 3950 4300 2    50   ~ 0
DRV2_nFAULT
Text Label 3950 4200 2    50   ~ 0
DRV2_uSLEEP
Entry Wire Line
	4050 5200 4150 5300
Entry Wire Line
	4050 5100 4150 5200
Entry Wire Line
	4050 5000 4150 5100
Entry Wire Line
	4050 4900 4150 5000
Entry Wire Line
	3950 4700 4050 4800
Entry Wire Line
	3950 4600 4050 4700
Entry Wire Line
	3950 4500 4050 4600
Entry Wire Line
	3950 4400 4050 4500
Entry Wire Line
	3950 4300 4050 4200
Entry Wire Line
	3950 4200 4050 4100
Text Label 3950 3250 2    50   ~ 0
SW3
Text Label 3950 3350 2    50   ~ 0
SW2
Text Label 3950 3450 2    50   ~ 0
SW1
Entry Wire Line
	3950 3350 4050 3250
Entry Wire Line
	3950 3250 4050 3150
Entry Wire Line
	3950 3450 4050 3350
$Comp
L Connector_Generic:Conn_01x07 J14
U 1 1 61F6ED9A
P 3250 3550
F 0 "J14" H 3250 2750 50  0000 C CNN
F 1 "CPU_GPIO" V 3350 3400 50  0000 C CNN
F 2 "" H 3250 3550 50  0001 C CNN
F 3 "~" H 3250 3550 50  0001 C CNN
	1    3250 3550
	-1   0    0    1   
$EndComp
Text Label 3950 3550 2    50   ~ 0
Rotary8
Text Label 3950 3650 2    50   ~ 0
Rotary4
Text Label 3950 3750 2    50   ~ 0
Rotary2
Text Label 3950 3850 2    50   ~ 0
Rotary1
Entry Wire Line
	3950 3850 4050 3750
Entry Wire Line
	3950 3750 4050 3650
Entry Wire Line
	3950 3650 4050 3550
Entry Wire Line
	3950 3550 4050 3450
Text Label 3950 4000 2    50   ~ 0
DRV2_PN
Text Label 3950 4100 2    50   ~ 0
DRV2_EN
Entry Wire Line
	4050 3900 3950 4000
Entry Wire Line
	4050 4000 3950 4100
Text Label 4150 5000 0    50   ~ 0
DRV1_nFAULT
Text Label 4150 5100 0    50   ~ 0
DRV1_nSLEEP
Text Label 4150 5200 0    50   ~ 0
DRV1_EN
Text Label 4150 5300 0    50   ~ 0
DRV1_PN
Wire Wire Line
	4150 5000 4700 5000
Connection ~ 4700 5000
Wire Wire Line
	4150 5100 4800 5100
Wire Wire Line
	4150 5200 4800 5200
Wire Wire Line
	4150 5300 4800 5300
Entry Bus Bus
	3950 2950 4050 3050
Entry Bus Bus
	4050 3050 4150 2950
Wire Bus Line
	4150 2950 7600 2950
Entry Wire Line
	7600 4900 7700 5000
Entry Wire Line
	7600 5000 7700 5100
Text Label 7700 5000 0    50   ~ 0
DRV2_nFAULT
Text Label 7700 5100 0    50   ~ 0
DRV2_nSLEEP
Wire Wire Line
	7700 5000 8250 5000
Connection ~ 8250 5000
Wire Wire Line
	7700 5100 8350 5100
Wire Wire Line
	7700 5200 8350 5200
Wire Wire Line
	7700 5300 8350 5300
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 65E212DB
P 3250 4400
F 0 "J?" H 3250 3600 50  0000 C CNN
F 1 "CPU_TIMER" V 3350 4250 50  0000 C CNN
F 2 "" H 3250 4400 50  0001 C CNN
F 3 "~" H 3250 4400 50  0001 C CNN
	1    3250 4400
	-1   0    0    1   
$EndComp
Wire Bus Line
	1450 2950 3950 2950
Wire Bus Line
	7600 2950 7600 5200
Wire Bus Line
	4050 3050 4050 5200
$EndSCHEMATC
