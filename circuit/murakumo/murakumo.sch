EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
L DRVxxxx:DRV8874 U?
U 1 1 61E320A0
P 15150 7600
F 0 "U?" H 15150 8515 50  0000 C CNN
F 1 "DRV8874" H 15150 8424 50  0000 C CNN
F 2 "original:TSSOP_16-Pin" H 15150 8500 50  0001 C CNN
F 3 "" H 14500 8400 50  0001 C CNN
	1    15150 7600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E36ADD
P 15900 7950
F 0 "#PWR?" H 15900 7700 50  0001 C CNN
F 1 "GND" H 15905 7777 50  0000 C CNN
F 2 "" H 15900 7950 50  0001 C CNN
F 3 "" H 15900 7950 50  0001 C CNN
	1    15900 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15900 7950 15900 7900
Wire Wire Line
	15900 7900 15650 7900
$Comp
L power:GND #PWR?
U 1 1 61E37079
P 14400 7400
F 0 "#PWR?" H 14400 7150 50  0001 C CNN
F 1 "GND" H 14405 7227 50  0000 C CNN
F 2 "" H 14400 7400 50  0001 C CNN
F 3 "" H 14400 7400 50  0001 C CNN
	1    14400 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 7400 14400 7350
Wire Wire Line
	14400 7350 14650 7350
$Comp
L Device:C C?
U 1 1 61E37465
P 13650 6900
F 0 "C?" H 13765 6946 50  0000 L CNN
F 1 "C" H 13765 6855 50  0000 L CNN
F 2 "" H 13688 6750 50  0001 C CNN
F 3 "~" H 13650 6900 50  0001 C CNN
	1    13650 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61E379B4
P 13650 7050
F 0 "#PWR?" H 13650 6800 50  0001 C CNN
F 1 "GND" H 13655 6877 50  0000 C CNN
F 2 "" H 13650 7050 50  0001 C CNN
F 3 "" H 13650 7050 50  0001 C CNN
	1    13650 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 7050 14150 7050
$Comp
L Device:C C?
U 1 1 61E37CE4
P 14150 6900
F 0 "C?" H 14265 6946 50  0000 L CNN
F 1 "C" H 14265 6855 50  0000 L CNN
F 2 "" H 14188 6750 50  0001 C CNN
F 3 "~" H 14150 6900 50  0001 C CNN
	1    14150 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	14650 6950 14400 6950
Wire Wire Line
	14400 6950 14400 6750
Wire Wire Line
	14400 6750 14150 6750
Connection ~ 14150 6750
Wire Wire Line
	14150 6750 13650 6750
$Comp
L Device:C C?
U 1 1 61E38123
P 13900 7300
F 0 "C?" H 14015 7346 50  0000 L CNN
F 1 "C" H 14015 7255 50  0000 L CNN
F 2 "" H 13938 7150 50  0001 C CNN
F 3 "~" H 13900 7300 50  0001 C CNN
	1    13900 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	13900 7150 14650 7150
Wire Wire Line
	14650 7250 14150 7250
Wire Wire Line
	14150 7250 14150 7450
Wire Wire Line
	14150 7450 13900 7450
$Comp
L Device:R R?
U 1 1 61E389AC
P 14400 8400
F 0 "R?" H 14470 8446 50  0000 L CNN
F 1 "R" H 14470 8355 50  0000 L CNN
F 2 "" V 14330 8400 50  0001 C CNN
F 3 "~" H 14400 8400 50  0001 C CNN
	1    14400 8400
	1    0    0    -1  
$EndComp
Wire Wire Line
	14400 8250 14650 8250
$Comp
L power:GND #PWR?
U 1 1 61E38E26
P 14400 8550
F 0 "#PWR?" H 14400 8300 50  0001 C CNN
F 1 "GND" H 14405 8377 50  0000 C CNN
F 2 "" H 14400 8550 50  0001 C CNN
F 3 "" H 14400 8550 50  0001 C CNN
	1    14400 8550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61E3905E
P 16150 8000
F 0 "R?" H 16220 8046 50  0000 L CNN
F 1 "R" H 16220 7955 50  0000 L CNN
F 2 "" V 16080 8000 50  0001 C CNN
F 3 "~" H 16150 8000 50  0001 C CNN
	1    16150 8000
	1    0    0    -1  
$EndComp
Wire Wire Line
	16150 8150 15650 8150
$EndSCHEMATC
