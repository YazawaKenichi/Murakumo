EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 5
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
AR Path="/61EDC519/61EEE661" Ref="R23"  Part="1" 
F 0 "R23" H 4520 5896 50  0000 L CNN
F 1 "1.2k" H 4520 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4380 5850 50  0001 C CNN
F 3 "~" H 4450 5850 50  0001 C CNN
	1    4450 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE667
P 4450 6100
AR Path="/61EEE667" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE667" Ref="#PWR061"  Part="1" 
F 0 "#PWR061" H 4450 5850 50  0001 C CNN
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
AR Path="/61EDC519/61EEE673" Ref="R16"  Part="1" 
F 0 "R16" H 4770 4796 50  0000 L CNN
F 1 "10k" H 4770 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4630 4750 50  0001 C CNN
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
AR Path="/61EDC519/61EEE691" Ref="C19"  Part="1" 
F 0 "C19" H 6115 4746 50  0000 L CNN
F 1 "0.1u" H 6115 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6038 4550 50  0001 C CNN
F 3 "~" H 6000 4700 50  0001 C CNN
	1    6000 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61EEE697
P 6400 4550
AR Path="/61EEE697" Ref="C?"  Part="1" 
AR Path="/61EDC519/61EEE697" Ref="C15"  Part="1" 
F 0 "C15" H 6515 4596 50  0000 L CNN
F 1 "0.1u" H 6515 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6438 4400 50  0001 C CNN
F 3 "~" H 6400 4550 50  0001 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE69D
P 6400 4800
AR Path="/61EEE69D" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE69D" Ref="#PWR048"  Part="1" 
F 0 "#PWR048" H 6400 4550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6A3" Ref="C16"  Part="1" 
F 0 "C16" H 6918 4596 50  0000 L CNN
F 1 "100u" H 6918 4505 50  0000 L CNN
F 2 "Capacitor:ECASD91B107M012K00" H 6838 4400 50  0001 C CNN
F 3 "~" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6A9
P 6800 4800
AR Path="/61EEE6A9" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6A9" Ref="#PWR049"  Part="1" 
F 0 "#PWR049" H 6800 4550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6AF" Ref="#PWR041"  Part="1" 
F 0 "#PWR041" H 6800 4050 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6C8" Ref="#PWR057"  Part="1" 
F 0 "#PWR057" H 6000 5550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6C2" Ref="#PWR058"  Part="1" 
F 0 "#PWR058" H 6200 5550 50  0001 C CNN
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
AR Path="/61EDC519/61EEE6B5" Ref="J6"  Part="1" 
F 0 "J6" V 5172 6380 50  0000 L CNN
F 1 "PA2" V 5263 6380 50  0000 L CNN
F 2 "PA:PA_01x02" H 5300 6300 50  0001 C CNN
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
AR Path="/61EDC519/61EEE685" Ref="C21"  Part="1" 
F 0 "C21" H 6565 5296 50  0000 L CNN
F 1 "22n" H 6565 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6488 5100 50  0001 C CNN
F 3 "~" H 6450 5250 50  0001 C CNN
	1    6450 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61FAAAB1
P 7850 5850
AR Path="/61FAAAB1" Ref="R?"  Part="1" 
AR Path="/61EDC519/61FAAAB1" Ref="R24"  Part="1" 
F 0 "R24" H 7920 5896 50  0000 L CNN
F 1 "1.2k" H 7920 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7780 5850 50  0001 C CNN
F 3 "~" H 7850 5850 50  0001 C CNN
	1    7850 5850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAB7
P 7850 6100
AR Path="/61FAAAB7" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAB7" Ref="#PWR063"  Part="1" 
F 0 "#PWR063" H 7850 5850 50  0001 C CNN
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
AR Path="/61EDC519/61FAAABD" Ref="R17"  Part="1" 
F 0 "R17" H 8320 4796 50  0000 L CNN
F 1 "10k" H 8320 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8180 4750 50  0001 C CNN
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
AR Path="/61EDC519/61FAAACC" Ref="C20"  Part="1" 
F 0 "C20" H 9665 4746 50  0000 L CNN
F 1 "0.1u" H 9665 4655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9588 4550 50  0001 C CNN
F 3 "~" H 9550 4700 50  0001 C CNN
	1    9550 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61FAAAD2
P 9950 4550
AR Path="/61FAAAD2" Ref="C?"  Part="1" 
AR Path="/61EDC519/61FAAAD2" Ref="C17"  Part="1" 
F 0 "C17" H 10065 4596 50  0000 L CNN
F 1 "0.1u" H 10065 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9988 4400 50  0001 C CNN
F 3 "~" H 9950 4550 50  0001 C CNN
	1    9950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAD8
P 9950 4800
AR Path="/61FAAAD8" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAD8" Ref="#PWR051"  Part="1" 
F 0 "#PWR051" H 9950 4550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAADE" Ref="C18"  Part="1" 
F 0 "C18" H 10468 4596 50  0000 L CNN
F 1 "100u" H 10468 4505 50  0000 L CNN
F 2 "Capacitor:ECASD91B107M012K00" H 10388 4400 50  0001 C CNN
F 3 "~" H 10350 4550 50  0001 C CNN
	1    10350 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAE4
P 10350 4800
AR Path="/61FAAAE4" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAE4" Ref="#PWR052"  Part="1" 
F 0 "#PWR052" H 10350 4550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAAEA" Ref="#PWR042"  Part="1" 
F 0 "#PWR042" H 10350 4050 50  0001 C CNN
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
AR Path="/61EDC519/61FAAAF9" Ref="R22"  Part="1" 
F 0 "R22" H 7370 5846 50  0000 L CNN
F 1 "50k" H 7370 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7230 5800 50  0001 C CNN
F 3 "~" H 7300 5800 50  0001 C CNN
	1    7300 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61FAAAFF
P 7300 6100
AR Path="/61FAAAFF" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61FAAAFF" Ref="#PWR062"  Part="1" 
F 0 "#PWR062" H 7300 5850 50  0001 C CNN
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
AR Path="/61EDC519/61FAAB35" Ref="#PWR059"  Part="1" 
F 0 "#PWR059" H 9550 5550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAB3B" Ref="#PWR060"  Part="1" 
F 0 "#PWR060" H 9750 5550 50  0001 C CNN
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
AR Path="/61EDC519/61FAAB46" Ref="J7"  Part="1" 
F 0 "J7" V 8722 6380 50  0000 L CNN
F 1 "PA2" V 8813 6380 50  0000 L CNN
F 2 "PA:PA_01x02" H 8850 6300 50  0001 C CNN
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
AR Path="/61EDC519/61FAAB64" Ref="C22"  Part="1" 
F 0 "C22" H 10115 5296 50  0000 L CNN
F 1 "22n" H 10115 5205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10038 5100 50  0001 C CNN
F 3 "~" H 10000 5250 50  0001 C CNN
	1    10000 5250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 62B03D69
P 10100 3400
AR Path="/62B03D69" Ref="SW?"  Part="1" 
AR Path="/61EDC519/62B03D69" Ref="SW2"  Part="1" 
F 0 "SW2" H 10300 2950 50  0000 R CNN
F 1 "220AMB16R" H 10300 3050 50  0000 R CNN
F 2 "Switch:220AMB16R" H 9800 2950 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 10100 3400 50  0001 C CNN
	1    10100 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62B03D73
P 9600 4000
AR Path="/62B03D73" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62B03D73" Ref="#PWR040"  Part="1" 
F 0 "#PWR040" H 9600 3750 50  0001 C CNN
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
AR Path="/61EDC519/62B03D7B" Ref="C8"  Part="1" 
F 0 "C8" H 8165 3796 50  0000 L CNN
F 1 "0.1u" H 8165 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8088 3600 50  0001 C CNN
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
AR Path="/61EDC519/62B03DA8" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 8050 3750 50  0001 C CNN
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
AR Path="/61EDC519/62B03DAE" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 8450 3750 50  0001 C CNN
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
AR Path="/61EDC519/62B03DB4" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 8850 3750 50  0001 C CNN
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
AR Path="/61EDC519/62B03DBA" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 9250 3750 50  0001 C CNN
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
AR Path="/61EDC519/62B03DC4" Ref="C9"  Part="1" 
F 0 "C9" H 8565 3796 50  0000 L CNN
F 1 "0.1u" H 8565 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8488 3600 50  0001 C CNN
F 3 "~" H 8450 3750 50  0001 C CNN
	1    8450 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62B03DCA
P 9250 3750
AR Path="/62B03DCA" Ref="C?"  Part="1" 
AR Path="/61EDC519/62B03DCA" Ref="C11"  Part="1" 
F 0 "C11" H 9365 3796 50  0000 L CNN
F 1 "0.1u" H 9365 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9288 3600 50  0001 C CNN
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
AR Path="/61EDC519/62B03DE5" Ref="C10"  Part="1" 
F 0 "C10" H 8965 3796 50  0000 L CNN
F 1 "0.1u" H 8965 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8888 3600 50  0001 C CNN
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
P 1900 5750
AR Path="/62B03DF7" Ref="D?"  Part="1" 
AR Path="/61EDC519/62B03DF7" Ref="D9"  Part="1" 
F 0 "D9" H 1900 6247 50  0000 C CNN
F 1 "APTF1616LSEEZGKQBKC" H 1900 6156 50  0000 C CNN
F 2 "original:APTF1616LSEEZGKQBKC" H 1900 5700 50  0001 C CNN
F 3 "~" H 1900 5700 50  0001 C CNN
	1    1900 5750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1900 5450 1900 5550
$Comp
L Device:R R?
U 1 1 62B03E07
P 1600 6300
AR Path="/62B03E07" Ref="R?"  Part="1" 
AR Path="/61EDC519/62B03E07" Ref="R25"  Part="1" 
F 0 "R25" V 1500 6300 50  0000 C CNN
F 1 "1.5k" V 1700 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1530 6300 50  0001 C CNN
F 3 "~" H 1600 6300 50  0001 C CNN
	1    1600 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62B03E0D
P 1900 6300
AR Path="/62B03E0D" Ref="R?"  Part="1" 
AR Path="/61EDC519/62B03E0D" Ref="R26"  Part="1" 
F 0 "R26" V 1800 6300 50  0000 C CNN
F 1 "1.2k" V 2000 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1830 6300 50  0001 C CNN
F 3 "~" H 1900 6300 50  0001 C CNN
	1    1900 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 62B03E13
P 2200 6300
AR Path="/62B03E13" Ref="R?"  Part="1" 
AR Path="/61EDC519/62B03E13" Ref="R27"  Part="1" 
F 0 "R27" V 2100 6300 50  0000 C CNN
F 1 "1.2k" V 2300 6300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2130 6300 50  0001 C CNN
F 3 "~" H 2200 6300 50  0001 C CNN
	1    2200 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 6050 1700 5950
Wire Wire Line
	2100 6050 2100 5950
Wire Wire Line
	2200 6150 2200 6050
Wire Wire Line
	2200 6050 2100 6050
Wire Wire Line
	1900 5950 1900 6150
Wire Wire Line
	1600 6150 1600 6050
Wire Wire Line
	1600 6050 1700 6050
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
	4000 6700 4000 6850
Wire Wire Line
	4000 5550 4000 5650
$Comp
L Device:R R?
U 1 1 61EEE6E8
P 4000 5800
AR Path="/61EEE6E8" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6E8" Ref="R21"  Part="1" 
F 0 "R21" H 4070 5846 50  0000 L CNN
F 1 "16k" H 4070 5755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 5800 50  0001 C CNN
F 3 "~" H 4000 5800 50  0001 C CNN
	1    4000 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEE6E0
P 4000 6850
AR Path="/61EEE6E0" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/61EEE6E0" Ref="#PWR064"  Part="1" 
F 0 "#PWR064" H 4000 6600 50  0001 C CNN
F 1 "GND" H 4005 6677 50  0000 C CNN
F 2 "" H 4000 6850 50  0001 C CNN
F 3 "" H 4000 6850 50  0001 C CNN
	1    4000 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61EEE6DA
P 4000 6550
AR Path="/61EEE6DA" Ref="R?"  Part="1" 
AR Path="/61EDC519/61EEE6DA" Ref="R28"  Part="1" 
F 0 "R28" H 4070 6596 50  0000 L CNN
F 1 "50k" H 4070 6505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3930 6550 50  0001 C CNN
F 3 "~" H 4000 6550 50  0001 C CNN
	1    4000 6550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 638F9D59
P 2600 3200
AR Path="/638F9D59" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/638F9D59" Ref="#PWR035"  Part="1" 
F 0 "#PWR035" H 2600 3050 50  0001 C CNN
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
AR Path="/61EDC519/638F9D5F" Ref="R15"  Part="1" 
F 0 "R15" H 2670 3496 50  0000 L CNN
F 1 "10k" H 2670 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2530 3450 50  0001 C CNN
F 3 "~" H 2600 3450 50  0001 C CNN
	1    2600 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 638F9D6B
P 2250 4000
AR Path="/638F9D6B" Ref="C?"  Part="1" 
AR Path="/61EDC519/638F9D6B" Ref="C14"  Part="1" 
F 0 "C14" H 2365 4046 50  0000 L CNN
F 1 "0.1u" H 2365 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2288 3850 50  0001 C CNN
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
AR Path="/61EDC519/638F9D7A" Ref="#PWR045"  Part="1" 
F 0 "#PWR045" H 2600 4150 50  0001 C CNN
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
AR Path="/61EDC519/63905AFC" Ref="#PWR033"  Part="1" 
F 0 "#PWR033" H 1100 3050 50  0001 C CNN
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
AR Path="/61EDC519/63905B02" Ref="R13"  Part="1" 
F 0 "R13" H 1170 3496 50  0000 L CNN
F 1 "10k" H 1170 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1030 3450 50  0001 C CNN
F 3 "~" H 1100 3450 50  0001 C CNN
	1    1100 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 63905B0E
P 750 4000
AR Path="/63905B0E" Ref="C?"  Part="1" 
AR Path="/61EDC519/63905B0E" Ref="C12"  Part="1" 
F 0 "C12" H 865 4046 50  0000 L CNN
F 1 "0.1u" H 865 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 788 3850 50  0001 C CNN
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
AR Path="/61EDC519/63905B1D" Ref="#PWR043"  Part="1" 
F 0 "#PWR043" H 1100 4150 50  0001 C CNN
F 1 "GND" H 1105 4227 50  0000 C CNN
F 2 "" H 1100 4400 50  0001 C CNN
F 3 "" H 1100 4400 50  0001 C CNN
	1    1100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 4400 1100 4300
Connection ~ 1100 4300
Wire Wire Line
	1500 6550 1600 6550
Wire Wire Line
	1600 6550 1600 6450
Wire Wire Line
	1900 6450 1900 6650
Wire Wire Line
	1900 6650 1500 6650
Wire Wire Line
	1500 6750 2200 6750
Wire Wire Line
	2200 6750 2200 6450
Wire Wire Line
	1500 6950 2800 6950
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 640540A9
P 8800 1400
F 0 "J3" H 8880 1442 50  0000 L CNN
F 1 "PA3" H 8880 1351 50  0000 L CNN
F 2 "PA:PA_01x03" H 8800 1400 50  0001 C CNN
F 3 "~" H 8800 1400 50  0001 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 6405495B
P 8500 1200
F 0 "#PWR025" H 8500 1050 50  0001 C CNN
F 1 "+5V" H 8515 1373 50  0000 C CNN
F 2 "" H 8500 1200 50  0001 C CNN
F 3 "" H 8500 1200 50  0001 C CNN
	1    8500 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1200 8500 1300
Wire Wire Line
	8500 1300 8600 1300
$Comp
L power:+3.3V #PWR024
U 1 1 640626AB
P 8300 1200
F 0 "#PWR024" H 8300 1050 50  0001 C CNN
F 1 "+3.3V" H 8315 1373 50  0000 C CNN
F 2 "" H 8300 1200 50  0001 C CNN
F 3 "" H 8300 1200 50  0001 C CNN
	1    8300 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 640707D1
P 8500 1600
F 0 "#PWR026" H 8500 1350 50  0001 C CNN
F 1 "GND" H 8505 1427 50  0000 C CNN
F 2 "" H 8500 1600 50  0001 C CNN
F 3 "" H 8500 1600 50  0001 C CNN
	1    8500 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 1600 8500 1500
Wire Wire Line
	8500 1500 8600 1500
Wire Wire Line
	8300 1200 8300 1400
Wire Wire Line
	8300 1400 8600 1400
$Comp
L Device:R_Pack04 RN1
U 1 1 642AE7D4
P 8250 2600
F 0 "RN1" H 8438 2646 50  0000 L CNN
F 1 "10k" H 8438 2555 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" V 8525 2600 50  0001 C CNN
F 3 "~" H 8250 2600 50  0001 C CNN
	1    8250 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2800 8350 2900
Wire Wire Line
	8250 2800 8250 3000
Wire Wire Line
	8850 3000 8850 3400
Wire Wire Line
	9250 2900 9250 3500
Wire Wire Line
	8050 2400 8050 2300
Wire Wire Line
	8050 2300 8150 2300
Wire Wire Line
	8350 2300 8350 2400
Wire Wire Line
	8150 2300 8150 2400
Connection ~ 8150 2300
Wire Wire Line
	8250 2300 8250 2400
Connection ~ 8250 2300
Wire Wire Line
	8250 2300 8350 2300
Wire Wire Line
	8150 2300 8250 2300
$Comp
L power:+3.3V #PWR031
U 1 1 6433C2E0
P 8050 2200
F 0 "#PWR031" H 8050 2050 50  0001 C CNN
F 1 "+3.3V" H 8065 2373 50  0000 C CNN
F 2 "" H 8050 2200 50  0001 C CNN
F 3 "" H 8050 2200 50  0001 C CNN
	1    8050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2200 8050 2300
Connection ~ 8050 2300
$Comp
L power:+3.3V #PWR056
U 1 1 621100C6
P 4000 5550
F 0 "#PWR056" H 4000 5400 50  0001 C CNN
F 1 "+3.3V" H 4015 5723 50  0000 C CNN
F 2 "" H 4000 5550 50  0001 C CNN
F 3 "" H 4000 5550 50  0001 C CNN
	1    4000 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR050
U 1 1 62111549
P 7300 4800
F 0 "#PWR050" H 7300 4650 50  0001 C CNN
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
L power:+3.3V #PWR046
U 1 1 62115193
P 4700 4500
F 0 "#PWR046" H 4700 4350 50  0001 C CNN
F 1 "+3.3V" H 4715 4673 50  0000 C CNN
F 2 "" H 4700 4500 50  0001 C CNN
F 3 "" H 4700 4500 50  0001 C CNN
	1    4700 4500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR047
U 1 1 621151F9
P 8250 4500
F 0 "#PWR047" H 8250 4350 50  0001 C CNN
F 1 "+3.3V" H 8265 4673 50  0000 C CNN
F 2 "" H 8250 4500 50  0001 C CNN
F 3 "" H 8250 4500 50  0001 C CNN
	1    8250 4500
	1    0    0    -1  
$EndComp
Text Notes 3900 5900 1    50   ~ 0
50uA
Text Notes 7250 4900 1    50   ~ 0
50uA
Text Notes 2500 3550 1    50   ~ 0
330uA\n
Text Notes 8100 2200 0    50   ~ 0
1.32mA\n
Text Notes 1450 2900 0    200  ~ 0
Switch
Text Notes 2200 5150 0    200  ~ 0
LED
$Comp
L power:+3.3V #PWR?
U 1 1 62216308
P 1850 3200
AR Path="/62216308" Ref="#PWR?"  Part="1" 
AR Path="/61EDC519/62216308" Ref="#PWR034"  Part="1" 
F 0 "#PWR034" H 1850 3050 50  0001 C CNN
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
AR Path="/61EDC519/6221630E" Ref="R14"  Part="1" 
F 0 "R14" H 1920 3496 50  0000 L CNN
F 1 "10k" H 1920 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1780 3450 50  0001 C CNN
F 3 "~" H 1850 3450 50  0001 C CNN
	1    1850 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6221631A
P 1500 4000
AR Path="/6221631A" Ref="C?"  Part="1" 
AR Path="/61EDC519/6221631A" Ref="C13"  Part="1" 
F 0 "C13" H 1615 4046 50  0000 L CNN
F 1 "0.1u" H 1615 3955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1538 3850 50  0001 C CNN
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
AR Path="/61EDC519/62216329" Ref="#PWR044"  Part="1" 
F 0 "#PWR044" H 1850 4150 50  0001 C CNN
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
Text Notes 8600 2800 0    200  ~ 0
RotarySwitch
Text Label 2850 3050 3    50   ~ 0
SW1
Text Label 2100 3050 3    50   ~ 0
SW2
Text Label 1350 3050 3    50   ~ 0
SW3
Wire Wire Line
	5550 950  5550 1050
$Comp
L power:+5V #PWR022
U 1 1 623E2BEC
P 5550 950
F 0 "#PWR022" H 5550 800 50  0001 C CNN
F 1 "+5V" H 5565 1123 50  0000 C CNN
F 2 "" H 5550 950 50  0001 C CNN
F 3 "" H 5550 950 50  0001 C CNN
	1    5550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 1550 6250 1450
Wire Wire Line
	4450 1450 4450 1550
Wire Wire Line
	4450 1050 4450 1150
Wire Wire Line
	6250 1050 6250 1150
$Comp
L Device:CP C4
U 1 1 61FB281B
P 6250 1300
F 0 "C4" H 6368 1346 50  0000 L CNN
F 1 "10u" H 6368 1255 50  0000 L CNN
F 2 "Capacitor:AVE106M16A12T-F" H 6288 1150 50  0001 C CNN
F 3 "~" H 6250 1300 50  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 61FB2792
P 4450 1300
F 0 "C2" H 4568 1346 50  0000 L CNN
F 1 "10u" H 4568 1255 50  0000 L CNN
F 2 "Capacitor:AVE106M16A12T-F" H 4488 1150 50  0001 C CNN
F 3 "~" H 4450 1300 50  0001 C CNN
	1    4450 1300
	1    0    0    -1  
$EndComp
$Comp
L Regulator:Regulator_GOI U1
U 1 1 61FA3A11
P 5050 1150
F 0 "U1" H 5050 1515 50  0000 C CNN
F 1 "AZ1117R-5.0TRE1" H 5050 1424 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3" H 5050 1150 50  0001 C CNN
F 3 "" H 5050 1150 50  0001 C CNN
	1    5050 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R18
U 1 1 61F74749
P 7300 5050
F 0 "R18" H 7370 5096 50  0000 L CNN
F 1 "16k" H 7370 5005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7230 5050 50  0001 C CNN
F 3 "~" H 7300 5050 50  0001 C CNN
	1    7300 5050
	1    0    0    -1  
$EndComp
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
	4000 5950 4000 6150
Wire Wire Line
	4000 6150 4300 6150
Connection ~ 4000 6150
Wire Wire Line
	4000 6150 4000 6400
Wire Wire Line
	3450 4500 3950 4500
Wire Wire Line
	3450 4400 3950 4400
Wire Wire Line
	3450 4300 3950 4300
Wire Wire Line
	3450 4200 3950 4200
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
Text Label 3950 4500 2    50   ~ 0
DRV1_EN
Text Label 3950 4400 2    50   ~ 0
DRV1_PN
Entry Wire Line
	4050 5200 4150 5300
Entry Wire Line
	4050 5100 4150 5200
Entry Wire Line
	3950 4400 4050 4500
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
L Connector_Generic:Conn_01x07 J4
U 1 1 61F6ED9A
P 3250 3550
F 0 "J4" H 3250 3150 50  0000 C CNN
F 1 "FFC7" V 3350 3400 50  0000 C CNN
F 2 "FFC:Molex_0545480771_01x07_P0.5mm" H 3250 3550 50  0001 C CNN
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
Text Label 3950 4200 2    50   ~ 0
DRV2_PN
Text Label 3950 4300 2    50   ~ 0
DRV2_EN
Entry Wire Line
	4050 4100 3950 4200
Entry Wire Line
	4050 4200 3950 4300
Text Label 4150 5200 0    50   ~ 0
DRV1_EN
Text Label 4150 5300 0    50   ~ 0
DRV1_PN
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
Connection ~ 8250 5000
Wire Wire Line
	7700 5200 8350 5200
Wire Wire Line
	7700 5300 8350 5300
$Comp
L Connector_Generic:Conn_01x04 J5
U 1 1 65E212DB
P 3250 4400
F 0 "J5" H 3250 4100 50  0000 C CNN
F 1 "FFC4" V 3350 4300 50  0000 C CNN
F 2 "Connector_FFC-FPC:Molex_200528-0040_1x04-1MP_P1.00mm_Horizontal" H 3250 4400 50  0001 C CNN
F 3 "~" H 3250 4400 50  0001 C CNN
	1    3250 4400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 5000 4700 5100
Wire Wire Line
	4700 5100 4800 5100
Connection ~ 4700 5000
Wire Wire Line
	8250 5000 8250 5100
Wire Wire Line
	8250 5100 8350 5100
Entry Wire Line
	3950 4500 4050 4600
$Comp
L Device:LED D?
U 1 1 660622EE
P 2450 6150
AR Path="/660622EE" Ref="D?"  Part="1" 
AR Path="/61EDC519/660622EE" Ref="D10"  Part="1" 
F 0 "D10" H 2700 6200 50  0000 R CNN
F 1 "SMLEN3WBC8W1" H 2750 6000 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2450 6150 50  0001 C CNN
F 3 "~" H 2450 6150 50  0001 C CNN
	1    2450 6150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 660622F4
P 2450 5700
AR Path="/660622F4" Ref="R?"  Part="1" 
AR Path="/61EDC519/660622F4" Ref="R19"  Part="1" 
F 0 "R19" H 2520 5746 50  0000 L CNN
F 1 "470" H 2520 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2380 5700 50  0001 C CNN
F 3 "~" H 2450 5700 50  0001 C CNN
	1    2450 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 5850 2450 6000
Wire Wire Line
	2450 5450 2450 5550
Wire Wire Line
	2450 6300 2450 6850
Text Notes 2450 6650 1    50   ~ 0
5mA
Wire Wire Line
	2450 6850 1500 6850
Wire Wire Line
	2800 6300 2800 6950
Text Notes 2800 6650 1    50   ~ 0
5mA
Wire Wire Line
	2800 5450 2800 5550
Wire Wire Line
	2800 5850 2800 6000
$Comp
L Device:R R?
U 1 1 638B627A
P 2800 5700
AR Path="/638B627A" Ref="R?"  Part="1" 
AR Path="/61EDC519/638B627A" Ref="R20"  Part="1" 
F 0 "R20" H 2870 5746 50  0000 L CNN
F 1 "470" H 2870 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2730 5700 50  0001 C CNN
F 3 "~" H 2800 5700 50  0001 C CNN
	1    2800 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 638B6274
P 2800 6150
AR Path="/638B6274" Ref="D?"  Part="1" 
AR Path="/61EDC519/638B6274" Ref="D11"  Part="1" 
F 0 "D11" H 3050 6200 50  0000 R CNN
F 1 "SMLEN3WBC8W1" H 3100 6000 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 2800 6150 50  0001 C CNN
F 3 "~" H 2800 6150 50  0001 C CNN
	1    2800 6150
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x05 J8
U 1 1 63A439D5
P 1300 6750
F 0 "J8" V 1500 6750 50  0000 C CNN
F 1 "FFC5" V 1400 6750 50  0000 C CNN
F 2 "FFC:Molex_0545480571_01x05_P0.5mm" H 1300 6750 50  0001 C CNN
F 3 "~" H 1300 6750 50  0001 C CNN
	1    1300 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 1050 4450 1050
$Comp
L Device:R R11
U 1 1 663B168C
P 5900 1400
F 0 "R11" H 5970 1446 50  0000 L CNN
F 1 "680" H 5970 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5830 1400 50  0001 C CNN
F 3 "~" H 5900 1400 50  0001 C CNN
	1    5900 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D7
U 1 1 663B1692
P 5900 1900
F 0 "D7" V 5939 1782 50  0000 R CNN
F 1 "Orange" V 5848 1782 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 5900 1900 50  0001 C CNN
F 3 "~" H 5900 1900 50  0001 C CNN
	1    5900 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5900 1550 5900 1750
Wire Wire Line
	5900 1050 5900 1250
Wire Wire Line
	5550 1050 5900 1050
Connection ~ 5900 1050
Wire Wire Line
	5900 1050 6250 1050
Wire Wire Line
	8050 2800 8050 3200
Wire Wire Line
	8350 2900 9250 2900
Wire Wire Line
	8250 3000 8850 3000
Wire Wire Line
	8150 3100 8450 3100
Wire Wire Line
	8450 3100 8450 3300
Wire Wire Line
	8150 2800 8150 3100
Wire Wire Line
	7700 2050 7700 2150
$Comp
L power:GND #PWR030
U 1 1 664D951C
P 7700 2150
F 0 "#PWR030" H 7700 1900 50  0001 C CNN
F 1 "GND" H 7705 1977 50  0000 C CNN
F 2 "" H 7700 2150 50  0001 C CNN
F 3 "" H 7700 2150 50  0001 C CNN
	1    7700 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2050 5900 2150
$Comp
L power:GND #PWR029
U 1 1 664F275F
P 5900 2150
F 0 "#PWR029" H 5900 1900 50  0001 C CNN
F 1 "GND" H 5905 1977 50  0000 C CNN
F 2 "" H 5900 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 6650C6F8
P 5050 1650
F 0 "#PWR027" H 5050 1400 50  0001 C CNN
F 1 "GND" H 5055 1477 50  0000 C CNN
F 2 "" H 5050 1650 50  0001 C CNN
F 3 "" H 5050 1650 50  0001 C CNN
	1    5050 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 664F318C
P 6850 1650
F 0 "#PWR028" H 6850 1400 50  0001 C CNN
F 1 "GND" H 6855 1477 50  0000 C CNN
F 2 "" H 6850 1650 50  0001 C CNN
F 3 "" H 6850 1650 50  0001 C CNN
	1    6850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1050 7700 1050
Wire Wire Line
	7700 1050 7700 1250
Wire Wire Line
	7700 1550 7700 1750
$Comp
L Device:LED D8
U 1 1 663FA176
P 7700 1900
F 0 "D8" V 7739 1782 50  0000 R CNN
F 1 "Yellow" V 7648 1782 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 7700 1900 50  0001 C CNN
F 3 "~" H 7700 1900 50  0001 C CNN
	1    7700 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 663FA170
P 7700 1400
F 0 "R12" H 7770 1446 50  0000 L CNN
F 1 "270" H 7770 1355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7630 1400 50  0001 C CNN
F 3 "~" H 7700 1400 50  0001 C CNN
	1    7700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C5
U 1 1 6205428A
P 7350 1300
F 0 "C5" H 7468 1346 50  0000 L CNN
F 1 "22u" H 7468 1255 50  0000 L CNN
F 2 "Capacitor:865090168010" H 7388 1150 50  0001 C CNN
F 3 "~" H 7350 1300 50  0001 C CNN
	1    7350 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1050 7350 1150
$Comp
L power:+3.3V #PWR023
U 1 1 623F6EA9
P 7350 950
F 0 "#PWR023" H 7350 800 50  0001 C CNN
F 1 "+3.3V" H 7365 1123 50  0000 C CNN
F 2 "" H 7350 950 50  0001 C CNN
F 3 "" H 7350 950 50  0001 C CNN
	1    7350 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 950  7350 1050
Connection ~ 7350 1050
Text Notes 1600 6150 0    50   ~ 0
2mA
Text Notes 1900 6150 0    50   ~ 0
2mA
Text Notes 2200 6150 0    50   ~ 0
2mA\n
$Comp
L power:+5V #PWR053
U 1 1 665DE594
P 1900 5450
F 0 "#PWR053" H 1900 5300 50  0001 C CNN
F 1 "+5V" H 1915 5623 50  0000 C CNN
F 2 "" H 1900 5450 50  0001 C CNN
F 3 "" H 1900 5450 50  0001 C CNN
	1    1900 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR054
U 1 1 665DE5D5
P 2450 5450
F 0 "#PWR054" H 2450 5300 50  0001 C CNN
F 1 "+5V" H 2465 5623 50  0000 C CNN
F 2 "" H 2450 5450 50  0001 C CNN
F 3 "" H 2450 5450 50  0001 C CNN
	1    2450 5450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR055
U 1 1 665DE728
P 2800 5450
F 0 "#PWR055" H 2800 5300 50  0001 C CNN
F 1 "+5V" H 2815 5623 50  0000 C CNN
F 2 "" H 2800 5450 50  0001 C CNN
F 3 "" H 2800 5450 50  0001 C CNN
	1    2800 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 666D749E
P 5550 1300
F 0 "C3" H 5668 1346 50  0000 L CNN
F 1 "22u" H 5668 1255 50  0000 L CNN
F 2 "Capacitor:865090168010" H 5588 1150 50  0001 C CNN
F 3 "~" H 5550 1300 50  0001 C CNN
	1    5550 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5550 1150 5550 1050
Wire Wire Line
	5550 1450 5550 1550
Connection ~ 5550 1050
Wire Wire Line
	3450 1050 3650 1050
$Comp
L Device:D D5
U 1 1 61F8F552
P 3800 1050
F 0 "D5" H 3800 833 50  0000 C CNN
F 1 "SS2040FL-AU_R1_000A1" H 3800 924 50  0000 C CNN
F 2 "original:SOD-123FL" H 3800 1050 50  0001 C CNN
F 3 "~" H 3800 1050 50  0001 C CNN
	1    3800 1050
	-1   0    0    1   
$EndComp
NoConn ~ 1750 1750
Wire Wire Line
	1850 2250 1850 2150
Wire Wire Line
	1850 2250 2650 2250
Connection ~ 1850 2250
Wire Wire Line
	1850 2350 1850 2250
Connection ~ 3450 1050
Wire Wire Line
	3100 1050 3450 1050
Connection ~ 3100 2250
Wire Wire Line
	3450 2250 3100 2250
Wire Wire Line
	2150 1050 2650 1050
Connection ~ 3100 1050
Connection ~ 2650 2250
Wire Wire Line
	3100 2250 3100 1800
Wire Wire Line
	2650 2250 3100 2250
Connection ~ 2650 1050
Wire Wire Line
	3100 1050 2650 1050
Wire Wire Line
	3100 1500 3100 1050
$Comp
L Device:C C7
U 1 1 66260372
P 3100 1650
F 0 "C7" H 3215 1696 50  0000 L CNN
F 1 "0.1u" H 3215 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3138 1500 50  0001 C CNN
F 3 "~" H 3100 1650 50  0001 C CNN
	1    3100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1500 2650 1050
Wire Wire Line
	2650 2250 2650 1800
$Comp
L Device:CP C6
U 1 1 662314B1
P 2650 1650
F 0 "C6" H 2768 1696 50  0000 L CNN
F 1 "220u" H 2768 1605 50  0000 L CNN
F 2 "Capacitor:EEE-1AA221XP" H 2688 1500 50  0001 C CNN
F 3 "~" H 2650 1650 50  0001 C CNN
F 4 "C" H 2650 1650 50  0001 C CNN "Spice_Primitive"
F 5 "220u" H 2650 1650 50  0001 C CNN "Spice_Model"
F 6 "Y" H 2650 1650 50  0001 C CNN "Spice_Netlist_Enabled"
	1    2650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 2050 3450 2250
Wire Wire Line
	3450 1050 3450 1250
Wire Wire Line
	3450 1550 3450 1750
$Comp
L Device:LED D6
U 1 1 661D5761
P 3450 1900
F 0 "D6" V 3489 1782 50  0000 R CNN
F 1 "Red" V 3398 1782 50  0000 R CNN
F 2 "Diode_SMD:D_0603_1608Metric" H 3450 1900 50  0001 C CNN
F 3 "~" H 3450 1900 50  0001 C CNN
	1    3450 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 661BDA19
P 3450 1400
F 0 "R10" H 3520 1446 50  0000 L CNN
F 1 "2k" H 3520 1355 50  0000 L CNN
F 2 "Diode_SMD:D_0603_1608Metric" V 3380 1400 50  0001 C CNN
F 3 "~" H 3450 1400 50  0001 C CNN
	1    3450 1400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 621E6B6C
P 1850 1950
F 0 "SW1" V 1896 1762 50  0000 R CNN
F 1 "SW_DPDT_x2" V 1805 1762 50  0000 R CNN
F 2 "Switch:SSAJ120100" H 1850 1950 50  0001 C CNN
F 3 "~" H 1850 1950 50  0001 C CNN
	1    1850 1950
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 620E0557
P 850 1350
F 0 "J2" H 768 1025 50  0000 C CNN
F 1 "ILG2" H 768 1116 50  0000 C CNN
F 2 "ILG:ILG_01x02" H 850 1350 50  0001 C CNN
F 3 "~" H 850 1350 50  0001 C CNN
	1    850  1350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR032
U 1 1 62032D01
P 1850 2350
F 0 "#PWR032" H 1850 2100 50  0001 C CNN
F 1 "GND" H 1855 2177 50  0000 C CNN
F 2 "" H 1850 2350 50  0001 C CNN
F 3 "" H 1850 2350 50  0001 C CNN
	1    1850 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR021
U 1 1 620884F0
P 3100 950
F 0 "#PWR021" H 3100 800 50  0001 C CNN
F 1 "+BATT" H 3115 1123 50  0000 C CNN
F 2 "" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 950  3100 1050
Text Notes 700  900  0    200  ~ 0
Power
Wire Wire Line
	1050 1250 1300 1250
Wire Wire Line
	1300 1350 1050 1350
$Comp
L Device:R R9
U 1 1 62431972
P 1500 1300
F 0 "R9" H 1570 1346 50  0000 L CNN
F 1 "10k" H 1570 1255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 1430 1300 50  0001 C CNN
F 3 "~" H 1500 1300 50  0001 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 1150 1500 1050
Wire Wire Line
	1500 1450 1500 1550
Wire Wire Line
	1300 1350 1300 2250
Wire Wire Line
	1300 1250 1300 1050
Wire Wire Line
	1300 1050 1500 1050
$Comp
L Device:Q_PMOS_GDS Q5
U 1 1 6264385E
P 1950 1150
F 0 "Q5" V 2292 1150 50  0000 C CNN
F 1 "CXDM4060P" V 2201 1150 50  0000 C CNN
F 2 "original:SOT-89" H 2150 1250 50  0001 C CNN
F 3 "~" H 1950 1150 50  0001 C CNN
	1    1950 1150
	0    1    -1   0   
$EndComp
Connection ~ 1500 1050
Wire Wire Line
	1500 1050 1750 1050
Wire Wire Line
	1950 1350 1950 1550
Wire Wire Line
	1500 1550 1950 1550
Connection ~ 1950 1550
Wire Wire Line
	1950 1550 1950 1750
Wire Wire Line
	4050 1050 3950 1050
$Comp
L Device:Ferrite_Bead FB1
U 1 1 66321F9D
P 4200 1050
F 0 "FB1" V 3926 1050 50  0000 C CNN
F 1 "470" V 4000 1050 50  0000 C CNN
F 2 "Inductor_SMD:L_0603_1608Metric" V 4130 1050 50  0001 C CNN
F 3 "~" H 4200 1050 50  0001 C CNN
	1    4200 1050
	0    1    1    0   
$EndComp
$Comp
L Regulator:Regulator_GOI U2
U 1 1 61FF24DD
P 6850 1150
F 0 "U2" H 6850 1515 50  0000 C CNN
F 1 "AZ1117IH-3.3TRG1" H 6850 1424 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6000 1500 50  0001 C CNN
F 3 "" H 6000 1500 50  0001 C CNN
	1    6850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 2250 1850 2250
$Comp
L power:+BATT #PWR065
U 1 1 62125FB8
P 5000 7000
F 0 "#PWR065" H 5000 6850 50  0001 C CNN
F 1 "+BATT" H 5015 7173 50  0000 C CNN
F 2 "" H 5000 7000 50  0001 C CNN
F 3 "" H 5000 7000 50  0001 C CNN
	1    5000 7000
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 62126A4D
P 5000 7500
F 0 "#FLG02" H 5000 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 5000 7673 50  0000 C CNN
F 2 "" H 5000 7500 50  0001 C CNN
F 3 "~" H 5000 7500 50  0001 C CNN
	1    5000 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 7500 5000 7000
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6213FCDF
P 5500 7500
F 0 "#FLG03" H 5500 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 5500 7673 50  0000 C CNN
F 2 "" H 5500 7500 50  0001 C CNN
F 3 "~" H 5500 7500 50  0001 C CNN
	1    5500 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 7500 5500 7000
$Comp
L power:PWR_FLAG #FLG04
U 1 1 6215860C
P 6000 7500
F 0 "#FLG04" H 6000 7575 50  0001 C CNN
F 1 "PWR_FLAG" H 6000 7673 50  0000 C CNN
F 2 "" H 6000 7500 50  0001 C CNN
F 3 "~" H 6000 7500 50  0001 C CNN
	1    6000 7500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 7500 6000 7000
$Comp
L power:PWR_FLAG #FLG01
U 1 1 62171203
P 6500 7000
F 0 "#FLG01" H 6500 7075 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 7173 50  0000 C CNN
F 2 "" H 6500 7000 50  0001 C CNN
F 3 "~" H 6500 7000 50  0001 C CNN
	1    6500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 7000 6500 7500
Wire Wire Line
	4300 5400 4800 5400
Wire Wire Line
	4300 6150 4300 5400
$Comp
L power:+5V #PWR066
U 1 1 622820DF
P 5500 7000
F 0 "#PWR066" H 5500 6850 50  0001 C CNN
F 1 "+5V" H 5515 7173 50  0000 C CNN
F 2 "" H 5500 7000 50  0001 C CNN
F 3 "" H 5500 7000 50  0001 C CNN
	1    5500 7000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR067
U 1 1 62282B47
P 6000 7000
F 0 "#PWR067" H 6000 6850 50  0001 C CNN
F 1 "+3.3V" H 6015 7173 50  0000 C CNN
F 2 "" H 6000 7000 50  0001 C CNN
F 3 "" H 6000 7000 50  0001 C CNN
	1    6000 7000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR068
U 1 1 6228359A
P 6500 7500
F 0 "#PWR068" H 6500 7250 50  0001 C CNN
F 1 "GND" H 6505 7327 50  0000 C CNN
F 2 "" H 6500 7500 50  0001 C CNN
F 3 "" H 6500 7500 50  0001 C CNN
	1    6500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1450 5050 1550
Wire Wire Line
	6850 1450 6850 1550
Wire Wire Line
	7350 1050 7250 1050
Wire Wire Line
	6450 1050 6250 1050
Connection ~ 6250 1050
Wire Wire Line
	5450 1050 5550 1050
Wire Wire Line
	4650 1050 4450 1050
Connection ~ 4450 1050
Wire Wire Line
	4450 1550 5050 1550
Wire Wire Line
	6250 1550 6850 1550
Wire Wire Line
	7350 1450 7350 1550
Connection ~ 5050 1550
Wire Wire Line
	5050 1550 5050 1650
Wire Wire Line
	5050 1550 5550 1550
Connection ~ 6850 1550
Wire Wire Line
	6850 1550 6850 1650
Wire Wire Line
	6850 1550 7350 1550
$Comp
L SKRPABE010:Switch SW3
U 1 1 62349015
P 1100 4000
F 0 "SW3" V 1054 4148 50  0000 L CNN
F 1 "SKRPABE010" V 1145 4148 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 1100 4000 50  0001 C CNN
F 3 "" H 1100 4000 50  0001 C CNN
	1    1100 4000
	0    1    1    0   
$EndComp
$Comp
L SKRPABE010:Switch SW4
U 1 1 6234A105
P 1850 4000
F 0 "SW4" V 1804 4148 50  0000 L CNN
F 1 "SKRPABE010" V 1895 4148 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 1850 4000 50  0001 C CNN
F 3 "" H 1850 4000 50  0001 C CNN
	1    1850 4000
	0    1    1    0   
$EndComp
$Comp
L SKRPABE010:Switch SW5
U 1 1 6234AADC
P 2600 4000
F 0 "SW5" V 2554 4148 50  0000 L CNN
F 1 "SKRPABE010" V 2645 4148 50  0000 L CNN
F 2 "SKRPABE010:SKRPABE010" H 2600 4000 50  0001 C CNN
F 3 "" H 2600 4000 50  0001 C CNN
	1    2600 4000
	0    1    1    0   
$EndComp
Wire Bus Line
	1450 2950 3950 2950
Wire Bus Line
	7600 2950 7600 5200
Wire Bus Line
	4050 3050 4050 5200
$EndSCHEMATC
