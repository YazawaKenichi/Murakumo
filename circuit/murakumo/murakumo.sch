EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 16500 15750 500  150 
U 61E3FF76
F0 "MurakumoSens" 50
F1 "MurakumoSens.sch" 50
$EndSheet
$Sheet
S 15500 15750 500  150 
U 61EDC519
F0 "MurakumoPower" 50
F1 "MurakumoPower.sch" 50
$EndSheet
$Sheet
S 17500 15750 500  150 
U 61EC4080
F0 "MurakumoSubSens" 50
F1 "MurakumoSubSens.sch" 50
$EndSheet
$Comp
L Device:C C?
U 1 1 61ED314B
P 11350 11400
F 0 "C?" H 11465 11446 50  0000 L CNN
F 1 "0.1u" H 11465 11355 50  0000 L CNN
F 2 "" H 11388 11250 50  0001 C CNN
F 3 "~" H 11350 11400 50  0001 C CNN
	1    11350 11400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ED3B79
P 11350 11650
F 0 "#PWR?" H 11350 11400 50  0001 C CNN
F 1 "GND" H 11355 11477 50  0000 C CNN
F 2 "" H 11350 11650 50  0001 C CNN
F 3 "" H 11350 11650 50  0001 C CNN
	1    11350 11650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 11650 11350 11550
$Comp
L Device:C C?
U 1 1 61ED3F3C
P 11350 10300
F 0 "C?" H 11465 10346 50  0000 L CNN
F 1 "0.1u" H 11465 10255 50  0000 L CNN
F 2 "" H 11388 10150 50  0001 C CNN
F 3 "~" H 11350 10300 50  0001 C CNN
	1    11350 10300
	1    0    0    -1  
$EndComp
$Comp
L power:VDC #PWR?
U 1 1 61ED48C6
P 11350 9950
F 0 "#PWR?" H 11350 9850 50  0001 C CNN
F 1 "VDC" H 11365 10123 50  0000 C CNN
F 2 "" H 11350 9950 50  0001 C CNN
F 3 "" H 11350 9950 50  0001 C CNN
	1    11350 9950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61ED4BE0
P 11350 10550
F 0 "#PWR?" H 11350 10300 50  0001 C CNN
F 1 "GND" H 11355 10377 50  0000 C CNN
F 2 "" H 11350 10550 50  0001 C CNN
F 3 "" H 11350 10550 50  0001 C CNN
	1    11350 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 10550 11350 10450
$Comp
L power:VDC #PWR?
U 1 1 61ED4D86
P 11350 11050
F 0 "#PWR?" H 11350 10950 50  0001 C CNN
F 1 "VDC" H 11365 11223 50  0000 C CNN
F 2 "" H 11350 11050 50  0001 C CNN
F 3 "" H 11350 11050 50  0001 C CNN
	1    11350 11050
	1    0    0    -1  
$EndComp
NoConn ~ 10450 9850
NoConn ~ 10350 9850
NoConn ~ 10750 9850
NoConn ~ 10650 9850
Wire Wire Line
	10550 11450 10550 11350
Wire Wire Line
	10550 11850 10550 11750
$Comp
L power:GND #PWR?
U 1 1 61ED6F82
P 10550 11850
F 0 "#PWR?" H 10550 11600 50  0001 C CNN
F 1 "GND" H 10555 11677 50  0000 C CNN
F 2 "" H 10550 11850 50  0001 C CNN
F 3 "" H 10550 11850 50  0001 C CNN
	1    10550 11850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61ED651E
P 10550 11600
F 0 "C?" H 10665 11646 50  0000 L CNN
F 1 "0.1u" H 10665 11555 50  0000 L CNN
F 2 "" H 10588 11450 50  0001 C CNN
F 3 "~" H 10550 11600 50  0001 C CNN
	1    10550 11600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 10750 10000 10750
Wire Wire Line
	10000 10250 9900 10250
Wire Wire Line
	9900 10350 10000 10350
Wire Wire Line
	10000 10450 9900 10450
Wire Wire Line
	9900 10550 10000 10550
Text GLabel 9900 10550 0    50   Input ~ 0
ICM_nCS
Text GLabel 9900 10450 0    50   Input ~ 0
ICM_SDO
Text GLabel 9900 10350 0    50   Input ~ 0
ICM_SDI
Text GLabel 9900 10250 0    50   Input ~ 0
ICM_SCLK
$Comp
L ICM-20648:ICM-20648 U?
U 1 1 61ED1B9D
P 10550 10600
F 0 "U?" H 10550 10650 50  0000 C CNN
F 1 "ICM-20648" H 10550 10550 50  0000 C CNN
F 2 "" H 10550 10600 50  0001 C CNN
F 3 "" H 10550 10600 50  0001 C CNN
	1    10550 10600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61EEAC2B
P 9900 11050
F 0 "#PWR?" H 9900 10800 50  0001 C CNN
F 1 "GND" H 9905 10877 50  0000 C CNN
F 2 "" H 9900 11050 50  0001 C CNN
F 3 "" H 9900 11050 50  0001 C CNN
	1    9900 11050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 11050 9900 10950
Wire Wire Line
	9900 10850 10000 10850
Connection ~ 9900 10850
Wire Wire Line
	9900 10850 9900 10750
Wire Wire Line
	10000 10950 9900 10950
Connection ~ 9900 10950
Wire Wire Line
	9900 10950 9900 10850
Wire Wire Line
	11350 11050 11350 11150
Wire Wire Line
	11350 9950 11350 10050
Wire Wire Line
	11100 11150 11350 11150
Connection ~ 11350 11150
Wire Wire Line
	11350 11150 11350 11250
Wire Wire Line
	11350 10050 11100 10050
Connection ~ 11350 10050
Wire Wire Line
	11350 10050 11350 10150
$Comp
L MCU_ST_STM32F4:STM32F405RGTx U?
U 1 1 61ED4634
P 7400 7250
F 0 "U?" H 7400 5900 50  0000 C CNN
F 1 "STM32F405RGTx" H 7400 5800 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 6800 5550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00037051.pdf" H 7400 7250 50  0001 C CNN
	1    7400 7250
	1    0    0    -1  
$EndComp
Text GLabel 8200 7950 2    50   Input ~ 0
DRV1_IN1
Text GLabel 8200 8050 2    50   Input ~ 0
DRV1_IN2
Text GLabel 8200 8150 2    50   Input ~ 0
DRV2_IN1
Text GLabel 8200 8250 2    50   Input ~ 0
DRV2_IN2
Text GLabel 8200 5650 2    50   Input ~ 0
ADC_IN0
Text GLabel 8200 5750 2    50   Input ~ 0
ADC_IN1
Text GLabel 8200 5850 2    50   Input ~ 0
ADC_IN2
Text GLabel 8200 5950 2    50   Input ~ 0
ADC_IN3
Text GLabel 8200 6050 2    50   Input ~ 0
ADC_IN4
Text GLabel 8200 6150 2    50   Input ~ 0
ADC_IN5
Text GLabel 8200 6250 2    50   Input ~ 0
ADC_IN6
Text GLabel 8200 6350 2    50   Input ~ 0
ADC_IN7
Text GLabel 8200 7350 2    50   Input ~ 0
ADC_IN8
Text GLabel 8200 7450 2    50   Input ~ 0
ADC_IN9
Text GLabel 6600 7550 0    50   Input ~ 0
ADC_IN12
Text GLabel 6600 7650 0    50   Input ~ 0
ADC_IN13
Text GLabel 6600 7750 0    50   Input ~ 0
ADC_IN14
Text GLabel 6600 7850 0    50   Input ~ 0
ADC_IN15
Text GLabel 8200 6950 2    50   Input ~ 0
SWDIO
Text GLabel 8200 7050 2    50   Input ~ 0
SWCLK
Text GLabel 8200 7650 2    50   Input ~ 0
SWO
Text GLabel 8200 6550 2    50   Input ~ 0
USART1_TX
Text GLabel 8200 6650 2    50   Input ~ 0
USART1_RX
Text GLabel 8200 8850 2    50   Input ~ 0
SPI2_MOSI
Text GLabel 8200 8750 2    50   Input ~ 0
SPI2_MISO
Text GLabel 8200 8350 2    50   Input ~ 0
SPI2_SCK
Text GLabel 8200 8550 2    50   Input ~ 0
SPI2_NSS
Text GLabel 6600 7450 0    50   Input ~ 0
ADC_IN11
Text GLabel 6600 7350 0    50   Input ~ 0
ADC_IN10
Text GLabel 6600 8150 0    50   Input ~ 0
LED2
Text GLabel 6600 7950 0    50   Input ~ 0
ENX2_A
Text GLabel 6600 8050 0    50   Input ~ 0
ENX2_B
Text GLabel 8200 6450 2    50   Input ~ 0
I2C3_SCL
Text GLabel 6600 8250 0    50   Input ~ 0
I2C3_SDA
Text GLabel 8200 7550 2    50   Input ~ 0
SubSens1
Text GLabel 8200 7750 2    50   Input ~ 0
Buzzer
Text GLabel 8200 7850 2    50   Input ~ 0
LED1
Text GLabel 8200 8450 2    50   Input ~ 0
SubSens2
Text GLabel 6600 8850 0    50   Input ~ 0
B
Text GLabel 6600 8750 0    50   Input ~ 0
G
Text GLabel 6600 8650 0    50   Input ~ 0
R
Text GLabel 8200 8650 2    50   Input ~ 0
Cancel
$Comp
L power:GND #PWR?
U 1 1 61F15617
P 7300 9250
F 0 "#PWR?" H 7300 9000 50  0001 C CNN
F 1 "GND" H 7305 9077 50  0000 C CNN
F 2 "" H 7300 9250 50  0001 C CNN
F 3 "" H 7300 9250 50  0001 C CNN
	1    7300 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 9250 7300 9150
Wire Wire Line
	7300 9150 7400 9150
Wire Wire Line
	7400 9150 7400 9050
Connection ~ 7300 9150
Wire Wire Line
	7300 9150 7300 9050
$Comp
L power:+3.3V #PWR?
U 1 1 61F1663F
P 7200 5250
F 0 "#PWR?" H 7200 5100 50  0001 C CNN
F 1 "+3.3V" H 7215 5423 50  0000 C CNN
F 2 "" H 7200 5250 50  0001 C CNN
F 3 "" H 7200 5250 50  0001 C CNN
	1    7200 5250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 61F168F4
P 7500 4700
F 0 "#PWR?" H 7500 4550 50  0001 C CNN
F 1 "VDD" H 7515 4873 50  0000 C CNN
F 2 "" H 7500 4700 50  0001 C CNN
F 3 "" H 7500 4700 50  0001 C CNN
	1    7500 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5350 7400 5350
Wire Wire Line
	7600 5350 7600 5450
Wire Wire Line
	7300 5350 7300 5450
Wire Wire Line
	7500 5450 7500 5350
Connection ~ 7500 5350
Wire Wire Line
	7500 5350 7600 5350
Wire Wire Line
	7400 5350 7400 5450
Connection ~ 7400 5350
Wire Wire Line
	7400 5350 7500 5350
Wire Wire Line
	7200 5450 7200 5250
$Comp
L Device:C C?
U 1 1 61F19B5E
P 6300 6400
F 0 "C?" H 6415 6446 50  0000 L CNN
F 1 "2.2u" H 6415 6355 50  0000 L CNN
F 2 "" H 6338 6250 50  0001 C CNN
F 3 "~" H 6300 6400 50  0001 C CNN
	1    6300 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 6250 6300 6150
$Comp
L Device:C C?
U 1 1 61F1A584
P 5850 6400
F 0 "C?" H 5965 6446 50  0000 L CNN
F 1 "2.2u" H 5965 6355 50  0000 L CNN
F 2 "" H 5888 6250 50  0001 C CNN
F 3 "~" H 5850 6400 50  0001 C CNN
	1    5850 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6250 5850 6050
Wire Wire Line
	6300 6550 6300 6650
Wire Wire Line
	6300 6650 5850 6650
Wire Wire Line
	5850 6650 5850 6550
$Comp
L power:GND #PWR?
U 1 1 61F1BEA7
P 5850 6750
F 0 "#PWR?" H 5850 6500 50  0001 C CNN
F 1 "GND" H 5855 6577 50  0000 C CNN
F 2 "" H 5850 6750 50  0001 C CNN
F 3 "" H 5850 6750 50  0001 C CNN
	1    5850 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 6750 5850 6650
Connection ~ 5850 6650
$Comp
L Device:C C?
U 1 1 61F1CCEE
P 5600 5050
F 0 "C?" H 5715 5096 50  0000 L CNN
F 1 "0.1u" H 5715 5005 50  0000 L CNN
F 2 "" H 5638 4900 50  0001 C CNN
F 3 "~" H 5600 5050 50  0001 C CNN
	1    5600 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4800 5600 4900
$Comp
L power:GND #PWR?
U 1 1 61F1F690
P 5600 5300
F 0 "#PWR?" H 5600 5050 50  0001 C CNN
F 1 "GND" H 5605 5127 50  0000 C CNN
F 2 "" H 5600 5300 50  0001 C CNN
F 3 "" H 5600 5300 50  0001 C CNN
	1    5600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 5300 5600 5200
Connection ~ 7500 4800
Wire Wire Line
	7500 4700 7500 4800
Wire Wire Line
	7500 4800 7500 5350
Wire Wire Line
	7600 5350 7700 5350
Connection ~ 7600 5350
Wire Wire Line
	7700 5350 7700 5450
Connection ~ 7700 5350
Wire Wire Line
	7400 9150 7500 9150
Wire Wire Line
	7500 9150 7500 9050
Connection ~ 7400 9150
$Comp
L Device:C C?
U 1 1 61F271B0
P 6000 5050
F 0 "C?" H 6115 5096 50  0000 L CNN
F 1 "0.1u" H 6115 5005 50  0000 L CNN
F 2 "" H 6038 4900 50  0001 C CNN
F 3 "~" H 6000 5050 50  0001 C CNN
	1    6000 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4800 6000 4900
$Comp
L power:GND #PWR?
U 1 1 61F271B7
P 6000 5300
F 0 "#PWR?" H 6000 5050 50  0001 C CNN
F 1 "GND" H 6005 5127 50  0000 C CNN
F 2 "" H 6000 5300 50  0001 C CNN
F 3 "" H 6000 5300 50  0001 C CNN
	1    6000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 5300 6000 5200
$Comp
L Device:C C?
U 1 1 61F29550
P 6400 5050
F 0 "C?" H 6515 5096 50  0000 L CNN
F 1 "0.1u" H 6515 5005 50  0000 L CNN
F 2 "" H 6438 4900 50  0001 C CNN
F 3 "~" H 6400 5050 50  0001 C CNN
	1    6400 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4800 6400 4900
$Comp
L power:GND #PWR?
U 1 1 61F29557
P 6400 5300
F 0 "#PWR?" H 6400 5050 50  0001 C CNN
F 1 "GND" H 6405 5127 50  0000 C CNN
F 2 "" H 6400 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5300 6400 5200
$Comp
L Device:C C?
U 1 1 61F2955E
P 6800 5050
F 0 "C?" H 6915 5096 50  0000 L CNN
F 1 "0.1u" H 6915 5005 50  0000 L CNN
F 2 "" H 6838 4900 50  0001 C CNN
F 3 "~" H 6800 5050 50  0001 C CNN
	1    6800 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4800 6800 4900
$Comp
L power:GND #PWR?
U 1 1 61F29565
P 6800 5300
F 0 "#PWR?" H 6800 5050 50  0001 C CNN
F 1 "GND" H 6805 5127 50  0000 C CNN
F 2 "" H 6800 5300 50  0001 C CNN
F 3 "" H 6800 5300 50  0001 C CNN
	1    6800 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 5300 6800 5200
Wire Wire Line
	5600 4800 6000 4800
Connection ~ 6000 4800
Wire Wire Line
	6000 4800 6400 4800
Connection ~ 6400 4800
Wire Wire Line
	6400 4800 6800 4800
Connection ~ 6800 4800
Wire Wire Line
	6800 4800 7500 4800
$Comp
L Device:C C?
U 1 1 61F375DD
P 8200 5100
F 0 "C?" H 8315 5146 50  0000 L CNN
F 1 "100n" H 8315 5055 50  0000 L CNN
F 2 "" H 8238 4950 50  0001 C CNN
F 3 "~" H 8200 5100 50  0001 C CNN
	1    8200 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4850 8200 4950
$Comp
L power:GND #PWR?
U 1 1 61F375E4
P 8200 5350
F 0 "#PWR?" H 8200 5100 50  0001 C CNN
F 1 "GND" H 8205 5177 50  0000 C CNN
F 2 "" H 8200 5350 50  0001 C CNN
F 3 "" H 8200 5350 50  0001 C CNN
	1    8200 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 5350 8200 5250
Wire Wire Line
	8200 4850 7950 4850
Wire Wire Line
	7950 4850 7950 5350
Wire Wire Line
	7950 5350 7700 5350
Wire Wire Line
	8600 4850 8200 4850
Connection ~ 8200 4850
$Comp
L power:VDDA #PWR?
U 1 1 61F191A4
P 8600 4750
F 0 "#PWR?" H 8600 4600 50  0001 C CNN
F 1 "VDDA" H 8615 4923 50  0000 C CNN
F 2 "" H 8600 4750 50  0001 C CNN
F 3 "" H 8600 4750 50  0001 C CNN
	1    8600 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5350 8600 5250
$Comp
L power:GND #PWR?
U 1 1 61F3ED0A
P 8600 5350
F 0 "#PWR?" H 8600 5100 50  0001 C CNN
F 1 "GND" H 8605 5177 50  0000 C CNN
F 2 "" H 8600 5350 50  0001 C CNN
F 3 "" H 8600 5350 50  0001 C CNN
	1    8600 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4850 8600 4950
$Comp
L Device:C C?
U 1 1 61F3ED03
P 8600 5100
F 0 "C?" H 8715 5146 50  0000 L CNN
F 1 "1u" H 8715 5055 50  0000 L CNN
F 2 "" H 8638 4950 50  0001 C CNN
F 3 "~" H 8600 5100 50  0001 C CNN
	1    8600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 4750 8600 4850
Connection ~ 8600 4850
Text GLabel 8200 6850 2    50   Input ~ 0
ENX1_B
Text GLabel 8200 6750 2    50   Input ~ 0
ENX1_A
Text GLabel 6600 8350 0    50   Input ~ 0
Rotary1
Text GLabel 6600 8450 0    50   Input ~ 0
Rotary2
Text GLabel 6600 8550 0    50   Input ~ 0
Rotary4
Text GLabel 6600 7150 0    50   Input ~ 0
Rotary8
Text GLabel 6600 6850 0    50   Input ~ 0
RCC_OSC_IN
Text GLabel 6600 6950 0    50   Input ~ 0
RCC_OSC_OUT
Wire Wire Line
	6300 6150 6700 6150
Wire Wire Line
	5850 6050 6700 6050
Text GLabel 8200 7150 2    50   Input ~ 0
Enter
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 61FADAB5
P 12350 6700
F 0 "J?" H 12400 7117 50  0000 C CNN
F 1 "ENX_10_EASY_1" H 12400 7026 50  0000 C CNN
F 2 "" H 12350 6700 50  0001 C CNN
F 3 "~" H 12350 6700 50  0001 C CNN
	1    12350 6700
	1    0    0    -1  
$EndComp
Text GLabel 12750 6700 2    50   Input ~ 0
ENX1_A
Text GLabel 12750 6800 2    50   Input ~ 0
ENX1_B
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 61FB76B0
P 10850 6450
F 0 "J?" H 10930 6442 50  0000 L CNN
F 1 "SWD" H 10930 6351 50  0000 L CNN
F 2 "" H 10850 6450 50  0001 C CNN
F 3 "~" H 10850 6450 50  0001 C CNN
	1    10850 6450
	1    0    0    -1  
$EndComp
Text GLabel 10550 6350 0    50   Input ~ 0
SWCLK
Text GLabel 10550 6650 0    50   Input ~ 0
nRST
Text GLabel 10550 6550 0    50   Input ~ 0
SWDIO
Text GLabel 10550 6750 0    50   Input ~ 0
SWO
$Comp
L power:GND #PWR?
U 1 1 61FBB631
P 9950 6700
F 0 "#PWR?" H 9950 6450 50  0001 C CNN
F 1 "GND" H 9955 6527 50  0000 C CNN
F 2 "" H 9950 6700 50  0001 C CNN
F 3 "" H 9950 6700 50  0001 C CNN
	1    9950 6700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 61FBD532
P 9950 6000
F 0 "#PWR?" H 9950 5850 50  0001 C CNN
F 1 "+3.3V" H 9965 6173 50  0000 C CNN
F 2 "" H 9950 6000 50  0001 C CNN
F 3 "" H 9950 6000 50  0001 C CNN
	1    9950 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61FBF89D
P 9950 6350
F 0 "C?" H 10065 6396 50  0000 L CNN
F 1 "C" H 10065 6305 50  0000 L CNN
F 2 "" H 9988 6200 50  0001 C CNN
F 3 "~" H 9950 6350 50  0001 C CNN
	1    9950 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 6200 9950 6100
Wire Wire Line
	9950 6500 9950 6600
Wire Wire Line
	9950 6600 10200 6600
Wire Wire Line
	10200 6600 10200 6450
Wire Wire Line
	10200 6450 10650 6450
Connection ~ 9950 6600
Wire Wire Line
	9950 6600 9950 6700
Wire Wire Line
	10650 6250 10200 6250
Wire Wire Line
	10200 6250 10200 6100
Wire Wire Line
	10200 6100 9950 6100
Wire Wire Line
	9950 6000 9950 6100
Connection ~ 9950 6100
NoConn ~ 12150 6500
NoConn ~ 12150 6700
NoConn ~ 12150 6800
NoConn ~ 12150 6900
NoConn ~ 12650 6600
NoConn ~ 12650 6900
Wire Wire Line
	12750 6500 12650 6500
$Comp
L power:GND #PWR?
U 1 1 61FE65D7
P 11750 6700
F 0 "#PWR?" H 11750 6450 50  0001 C CNN
F 1 "GND" H 11755 6527 50  0000 C CNN
F 2 "" H 11750 6700 50  0001 C CNN
F 3 "" H 11750 6700 50  0001 C CNN
	1    11750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 6700 11750 6600
Text GLabel 4650 5650 0    50   Input ~ 0
nRST
$Comp
L Connector_Generic:Conn_01x16 J?
U 1 1 61FEBBA9
P 10850 4750
F 0 "J?" H 10930 4742 50  0000 L CNN
F 1 "MainSensor" H 10930 4651 50  0000 L CNN
F 2 "" H 10850 4750 50  0001 C CNN
F 3 "~" H 10850 4750 50  0001 C CNN
	1    10850 4750
	1    0    0    -1  
$EndComp
Text GLabel 10550 4050 0    50   Input ~ 0
ADC_IN0
Text GLabel 10550 4150 0    50   Input ~ 0
ADC_IN1
Text GLabel 10550 4250 0    50   Input ~ 0
ADC_IN2
Text GLabel 10550 4350 0    50   Input ~ 0
ADC_IN3
Text GLabel 10550 4450 0    50   Input ~ 0
ADC_IN4
Text GLabel 10550 4550 0    50   Input ~ 0
ADC_IN5
Text GLabel 10550 4650 0    50   Input ~ 0
ADC_IN6
Text GLabel 10550 4750 0    50   Input ~ 0
ADC_IN7
Text GLabel 10550 4850 0    50   Input ~ 0
ADC_IN8
Text GLabel 10550 4950 0    50   Input ~ 0
ADC_IN9
Text GLabel 10550 5050 0    50   Input ~ 0
ADC_IN10
Text GLabel 10550 5150 0    50   Input ~ 0
ADC_IN11
Text GLabel 10550 5250 0    50   Input ~ 0
ADC_IN12
Text GLabel 10550 5350 0    50   Input ~ 0
ADC_IN13
Text GLabel 10550 5450 0    50   Input ~ 0
ADC_IN14
Text GLabel 10550 5550 0    50   Input ~ 0
ADC_IN15
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62010C1D
P 10950 7500
F 0 "J?" H 11030 7492 50  0000 L CNN
F 1 "I2C3" H 11030 7401 50  0000 L CNN
F 2 "" H 10950 7500 50  0001 C CNN
F 3 "~" H 10950 7500 50  0001 C CNN
	1    10950 7500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 62011276
P 9950 7200
F 0 "#PWR?" H 9950 7050 50  0001 C CNN
F 1 "+3.3V" H 9965 7373 50  0000 C CNN
F 2 "" H 9950 7200 50  0001 C CNN
F 3 "" H 9950 7200 50  0001 C CNN
	1    9950 7200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6201179D
P 9950 7900
F 0 "#PWR?" H 9950 7650 50  0001 C CNN
F 1 "GND" H 9955 7727 50  0000 C CNN
F 2 "" H 9950 7900 50  0001 C CNN
F 3 "" H 9950 7900 50  0001 C CNN
	1    9950 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 620191F1
P 9950 7550
F 0 "C?" H 10065 7596 50  0000 L CNN
F 1 "C" H 10065 7505 50  0000 L CNN
F 2 "" H 9988 7400 50  0001 C CNN
F 3 "~" H 9950 7550 50  0001 C CNN
	1    9950 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	10750 7700 10650 7700
Wire Wire Line
	10650 7700 10650 7800
Wire Wire Line
	10750 7400 10650 7400
Wire Wire Line
	10650 7400 10650 7300
$Comp
L Device:C C?
U 1 1 6203E2D7
P 11750 6350
F 0 "C?" H 11865 6396 50  0000 L CNN
F 1 "C" H 11865 6305 50  0000 L CNN
F 2 "" H 11788 6200 50  0001 C CNN
F 3 "~" H 11750 6350 50  0001 C CNN
	1    11750 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 6200 11750 6100
Wire Wire Line
	11750 6100 12750 6100
$Comp
L power:VCC #PWR?
U 1 1 61FE3F87
P 11750 6000
F 0 "#PWR?" H 11750 5850 50  0001 C CNN
F 1 "VCC" H 11765 6173 50  0000 C CNN
F 2 "" H 11750 6000 50  0001 C CNN
F 3 "" H 11750 6000 50  0001 C CNN
	1    11750 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 6100 12750 6500
Wire Wire Line
	11750 6000 11750 6100
Wire Wire Line
	11750 6500 11750 6600
Connection ~ 11750 6600
Wire Wire Line
	11750 6600 12150 6600
Connection ~ 11750 6100
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 6205CCA7
P 12350 7900
F 0 "J?" H 12400 8317 50  0000 C CNN
F 1 "ENX_10_EASY_2" H 12400 8226 50  0000 C CNN
F 2 "" H 12350 7900 50  0001 C CNN
F 3 "~" H 12350 7900 50  0001 C CNN
	1    12350 7900
	1    0    0    -1  
$EndComp
Text GLabel 12750 7900 2    50   Input ~ 0
ENX2_A
Text GLabel 12750 8000 2    50   Input ~ 0
ENX2_B
NoConn ~ 12150 7700
NoConn ~ 12150 7900
NoConn ~ 12150 8000
NoConn ~ 12150 8100
NoConn ~ 12650 7800
NoConn ~ 12650 8100
Wire Wire Line
	12750 7700 12650 7700
$Comp
L power:GND #PWR?
U 1 1 6205CCB6
P 11750 7900
F 0 "#PWR?" H 11750 7650 50  0001 C CNN
F 1 "GND" H 11755 7727 50  0000 C CNN
F 2 "" H 11750 7900 50  0001 C CNN
F 3 "" H 11750 7900 50  0001 C CNN
	1    11750 7900
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 7900 11750 7800
$Comp
L Device:C C?
U 1 1 6205CCBD
P 11750 7550
F 0 "C?" H 11865 7596 50  0000 L CNN
F 1 "C" H 11865 7505 50  0000 L CNN
F 2 "" H 11788 7400 50  0001 C CNN
F 3 "~" H 11750 7550 50  0001 C CNN
	1    11750 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11750 7400 11750 7300
Wire Wire Line
	11750 7300 12750 7300
$Comp
L power:VCC #PWR?
U 1 1 6205CCC5
P 11750 7200
F 0 "#PWR?" H 11750 7050 50  0001 C CNN
F 1 "VCC" H 11765 7373 50  0000 C CNN
F 2 "" H 11750 7200 50  0001 C CNN
F 3 "" H 11750 7200 50  0001 C CNN
	1    11750 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	12750 7300 12750 7700
Wire Wire Line
	11750 7200 11750 7300
Wire Wire Line
	11750 7700 11750 7800
Connection ~ 11750 7800
Wire Wire Line
	11750 7800 12150 7800
Connection ~ 11750 7300
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 62076FE2
P 11200 8700
F 0 "J?" H 11280 8692 50  0000 L CNN
F 1 "USART1" H 11280 8601 50  0000 L CNN
F 2 "" H 11200 8700 50  0001 C CNN
F 3 "~" H 11200 8700 50  0001 C CNN
	1    11200 8700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 62076FEE
P 9950 9100
F 0 "#PWR?" H 9950 8850 50  0001 C CNN
F 1 "GND" H 9955 8927 50  0000 C CNN
F 2 "" H 9950 9100 50  0001 C CNN
F 3 "" H 9950 9100 50  0001 C CNN
	1    9950 9100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 62076FF6
P 9950 8750
F 0 "C?" H 10065 8796 50  0000 L CNN
F 1 "C" H 10065 8705 50  0000 L CNN
F 2 "" H 9988 8600 50  0001 C CNN
F 3 "~" H 9950 8750 50  0001 C CNN
	1    9950 8750
	1    0    0    -1  
$EndComp
Text GLabel 10650 7500 0    50   Input ~ 0
I2C3_SCL
Text GLabel 10650 7600 0    50   Input ~ 0
I2C3_SDA
Wire Wire Line
	9950 7700 9950 7800
Wire Wire Line
	9950 7200 9950 7300
Connection ~ 9950 7300
Wire Wire Line
	9950 7300 9950 7400
Connection ~ 9950 7800
Wire Wire Line
	9950 7800 9950 7900
Wire Wire Line
	9950 7300 10650 7300
Wire Wire Line
	9950 7800 10650 7800
Wire Wire Line
	9950 8900 9950 9000
Wire Wire Line
	9950 8400 9950 8500
Text GLabel 10900 8800 0    50   Input ~ 0
USART1_TX
Text GLabel 10900 8900 0    50   Input ~ 0
USART1_RX
Wire Wire Line
	10350 8700 10350 9000
Wire Wire Line
	10350 9000 9950 9000
Connection ~ 9950 9000
Wire Wire Line
	9950 9000 9950 9100
Wire Wire Line
	10350 8700 11000 8700
Wire Wire Line
	9950 8500 10350 8500
Connection ~ 9950 8500
Wire Wire Line
	9950 8500 9950 8600
Wire Wire Line
	10350 8600 10350 8500
Wire Wire Line
	10350 8600 11000 8600
$Comp
L power:+5V #PWR?
U 1 1 620C41F8
P 9950 8400
F 0 "#PWR?" H 9950 8250 50  0001 C CNN
F 1 "+5V" H 9965 8573 50  0000 C CNN
F 2 "" H 9950 8400 50  0001 C CNN
F 3 "" H 9950 8400 50  0001 C CNN
	1    9950 8400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_MEC_5G SW?
U 1 1 620C4FA5
P 4900 6050
F 0 "SW?" V 4854 6198 50  0000 L CNN
F 1 "RST_SW" V 4945 6198 50  0000 L CNN
F 2 "" H 4900 6250 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=488" H 4900 6250 50  0001 C CNN
	1    4900 6050
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 620C5C8F
P 4600 6050
F 0 "C?" H 4715 6096 50  0000 L CNN
F 1 "0.1u" H 4715 6005 50  0000 L CNN
F 2 "" H 4638 5900 50  0001 C CNN
F 3 "~" H 4600 6050 50  0001 C CNN
	1    4600 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5900 4600 5750
Wire Wire Line
	4900 5750 4900 5850
Wire Wire Line
	4750 5750 4750 5650
Wire Wire Line
	4900 6250 4900 6350
Wire Wire Line
	4750 6350 4600 6350
Wire Wire Line
	4600 6350 4600 6200
$Comp
L power:GND #PWR?
U 1 1 620D6F1C
P 4750 6450
F 0 "#PWR?" H 4750 6200 50  0001 C CNN
F 1 "GND" H 4755 6277 50  0000 C CNN
F 2 "" H 4750 6450 50  0001 C CNN
F 3 "" H 4750 6450 50  0001 C CNN
	1    4750 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6450 4750 6350
Wire Wire Line
	4600 5750 4750 5750
Wire Wire Line
	4750 6350 4900 6350
Connection ~ 4750 6350
Wire Wire Line
	4900 5750 4750 5750
Connection ~ 4750 5750
Wire Wire Line
	4650 5650 4750 5650
Connection ~ 4750 5650
$Comp
L Device:R R?
U 1 1 620F4137
P 5450 6400
F 0 "R?" H 5520 6446 50  0000 L CNN
F 1 "R" H 5520 6355 50  0000 L CNN
F 2 "" V 5380 6400 50  0001 C CNN
F 3 "~" H 5450 6400 50  0001 C CNN
	1    5450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 6250 5450 5850
Wire Wire Line
	5450 5850 6700 5850
Wire Wire Line
	5850 6650 5450 6650
Wire Wire Line
	5450 6650 5450 6550
Wire Wire Line
	4750 5650 6700 5650
$Comp
L Device:LED D?
U 1 1 621091DC
P 4900 7900
F 0 "D?" V 4939 7782 50  0000 R CNN
F 1 "LED" V 4848 7782 50  0000 R CNN
F 2 "" H 4900 7900 50  0001 C CNN
F 3 "~" H 4900 7900 50  0001 C CNN
	1    4900 7900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 62109951
P 4900 7450
F 0 "R?" H 4970 7496 50  0000 L CNN
F 1 "R" H 4970 7405 50  0000 L CNN
F 2 "" V 4830 7450 50  0001 C CNN
F 3 "~" H 4900 7450 50  0001 C CNN
	1    4900 7450
	1    0    0    -1  
$EndComp
Text GLabel 5000 8150 2    50   Input ~ 0
LED2
Wire Wire Line
	4900 7600 4900 7750
Wire Wire Line
	4900 8150 5000 8150
Wire Wire Line
	4900 8150 4900 8050
$Comp
L power:+3.3V #PWR?
U 1 1 621395B1
P 4900 7200
F 0 "#PWR?" H 4900 7050 50  0001 C CNN
F 1 "+3.3V" H 4915 7373 50  0000 C CNN
F 2 "" H 4900 7200 50  0001 C CNN
F 3 "" H 4900 7200 50  0001 C CNN
	1    4900 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 7200 4900 7300
$Comp
L Switch:SW_Coded_SH-7050 SW?
U 1 1 6213FB77
P 5800 9300
F 0 "SW?" H 5470 9254 50  0000 R CNN
F 1 "220AMB16R" H 5470 9345 50  0000 R CNN
F 2 "" H 5500 8850 50  0001 L CNN
F 3 "https://www.nidec-copal-electronics.com/e/catalog/switch/sh-7000.pdf" H 5800 9300 50  0001 C CNN
	1    5800 9300
	-1   0    0    1   
$EndComp
Text GLabel 3650 9400 0    50   Input ~ 0
Rotary1
Text GLabel 3650 9300 0    50   Input ~ 0
Rotary2
Text GLabel 3650 9200 0    50   Input ~ 0
Rotary4
Text GLabel 3650 9100 0    50   Input ~ 0
Rotary8
$Comp
L power:GND #PWR?
U 1 1 6217240B
P 5300 9600
F 0 "#PWR?" H 5300 9350 50  0001 C CNN
F 1 "GND" H 5305 9427 50  0000 C CNN
F 2 "" H 5300 9600 50  0001 C CNN
F 3 "" H 5300 9600 50  0001 C CNN
	1    5300 9600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 9600 5300 9500
Wire Wire Line
	5300 9500 5400 9500
$Comp
L Device:C C?
U 1 1 6217E58A
P 3750 9650
F 0 "C?" H 3865 9696 50  0000 L CNN
F 1 "0.1u" H 3865 9605 50  0000 L CNN
F 2 "" H 3788 9500 50  0001 C CNN
F 3 "~" H 3750 9650 50  0001 C CNN
	1    3750 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 9500 4950 9400
Connection ~ 4950 9400
Wire Wire Line
	4950 9400 5400 9400
$Comp
L Device:R R?
U 1 1 621BBF32
P 3750 8850
F 0 "R?" H 3820 8896 50  0000 L CNN
F 1 "10k" H 3820 8805 50  0000 L CNN
F 2 "" V 3680 8850 50  0001 C CNN
F 3 "~" H 3750 8850 50  0001 C CNN
	1    3750 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 9000 4950 9400
Wire Wire Line
	4550 9300 4550 9000
Wire Wire Line
	4150 9000 4150 9200
$Comp
L power:VDD #PWR?
U 1 1 621D9A5F
P 3750 8600
F 0 "#PWR?" H 3750 8450 50  0001 C CNN
F 1 "VDD" H 3765 8773 50  0000 C CNN
F 2 "" H 3750 8600 50  0001 C CNN
F 3 "" H 3750 8600 50  0001 C CNN
	1    3750 8600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 621D9AA0
P 4150 8600
F 0 "#PWR?" H 4150 8450 50  0001 C CNN
F 1 "VDD" H 4165 8773 50  0000 C CNN
F 2 "" H 4150 8600 50  0001 C CNN
F 3 "" H 4150 8600 50  0001 C CNN
	1    4150 8600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 621D9BC4
P 4550 8600
F 0 "#PWR?" H 4550 8450 50  0001 C CNN
F 1 "VDD" H 4565 8773 50  0000 C CNN
F 2 "" H 4550 8600 50  0001 C CNN
F 3 "" H 4550 8600 50  0001 C CNN
	1    4550 8600
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 621D9CAF
P 4950 8600
F 0 "#PWR?" H 4950 8450 50  0001 C CNN
F 1 "VDD" H 4965 8773 50  0000 C CNN
F 2 "" H 4950 8600 50  0001 C CNN
F 3 "" H 4950 8600 50  0001 C CNN
	1    4950 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 8600 4950 8700
Wire Wire Line
	4550 8700 4550 8600
Wire Wire Line
	4150 8600 4150 8700
$Comp
L power:GND #PWR?
U 1 1 621F972A
P 3750 9900
F 0 "#PWR?" H 3750 9650 50  0001 C CNN
F 1 "GND" H 3755 9727 50  0000 C CNN
F 2 "" H 3750 9900 50  0001 C CNN
F 3 "" H 3750 9900 50  0001 C CNN
	1    3750 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621F9763
P 4150 9900
F 0 "#PWR?" H 4150 9650 50  0001 C CNN
F 1 "GND" H 4155 9727 50  0000 C CNN
F 2 "" H 4150 9900 50  0001 C CNN
F 3 "" H 4150 9900 50  0001 C CNN
	1    4150 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621F982A
P 4550 9900
F 0 "#PWR?" H 4550 9650 50  0001 C CNN
F 1 "GND" H 4555 9727 50  0000 C CNN
F 2 "" H 4550 9900 50  0001 C CNN
F 3 "" H 4550 9900 50  0001 C CNN
	1    4550 9900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 621F98F1
P 4950 9900
F 0 "#PWR?" H 4950 9650 50  0001 C CNN
F 1 "GND" H 4955 9727 50  0000 C CNN
F 2 "" H 4950 9900 50  0001 C CNN
F 3 "" H 4950 9900 50  0001 C CNN
	1    4950 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 9900 4950 9800
Wire Wire Line
	4550 9800 4550 9900
Wire Wire Line
	4150 9900 4150 9800
Wire Wire Line
	3750 9800 3750 9900
$Comp
L Device:C C?
U 1 1 6221AF53
P 4150 9650
F 0 "C?" H 4265 9696 50  0000 L CNN
F 1 "0.1u" H 4265 9605 50  0000 L CNN
F 2 "" H 4188 9500 50  0001 C CNN
F 3 "~" H 4150 9650 50  0001 C CNN
	1    4150 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6221B14D
P 4950 9650
F 0 "C?" H 5065 9696 50  0000 L CNN
F 1 "0.1u" H 5065 9605 50  0000 L CNN
F 2 "" H 4988 9500 50  0001 C CNN
F 3 "~" H 4950 9650 50  0001 C CNN
	1    4950 9650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6221B282
P 4150 8850
F 0 "R?" H 4220 8896 50  0000 L CNN
F 1 "10k" H 4220 8805 50  0000 L CNN
F 2 "" V 4080 8850 50  0001 C CNN
F 3 "~" H 4150 8850 50  0001 C CNN
	1    4150 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6221B36D
P 4550 8850
F 0 "R?" H 4620 8896 50  0000 L CNN
F 1 "10k" H 4620 8805 50  0000 L CNN
F 2 "" V 4480 8850 50  0001 C CNN
F 3 "~" H 4550 8850 50  0001 C CNN
	1    4550 8850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6221B48C
P 4950 8850
F 0 "R?" H 5020 8896 50  0000 L CNN
F 1 "10k" H 5020 8805 50  0000 L CNN
F 2 "" V 4880 8850 50  0001 C CNN
F 3 "~" H 4950 8850 50  0001 C CNN
	1    4950 8850
	1    0    0    -1  
$EndComp
Connection ~ 4150 9200
Connection ~ 4550 9300
Wire Wire Line
	4550 9300 5400 9300
$Comp
L Device:C C?
U 1 1 6221B050
P 4550 9650
F 0 "C?" H 4665 9696 50  0000 L CNN
F 1 "0.1u" H 4665 9605 50  0000 L CNN
F 2 "" H 4588 9500 50  0001 C CNN
F 3 "~" H 4550 9650 50  0001 C CNN
	1    4550 9650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 9300 4550 9500
Wire Wire Line
	4150 9200 5400 9200
Wire Wire Line
	4150 9200 4150 9500
Wire Wire Line
	3750 8600 3750 8700
Wire Wire Line
	3650 9400 4950 9400
Wire Wire Line
	3650 9300 4550 9300
Wire Wire Line
	3650 9100 3750 9100
Wire Wire Line
	3650 9200 4150 9200
Wire Wire Line
	3750 9000 3750 9100
Connection ~ 3750 9100
Wire Wire Line
	3750 9100 5400 9100
Wire Wire Line
	3750 9100 3750 9500
$Comp
L Device:LED_ABGR D?
U 1 1 622C5B19
P 6100 10850
F 0 "D?" H 6100 11347 50  0000 C CNN
F 1 "LED_ABGR" H 6100 11256 50  0000 C CNN
F 2 "" H 6100 10800 50  0001 C CNN
F 3 "~" H 6100 10800 50  0001 C CNN
	1    6100 10850
	0    -1   -1   0   
$EndComp
Text GLabel 5550 11700 0    50   Input ~ 0
R
Text GLabel 5550 11900 0    50   Input ~ 0
G
Text GLabel 5550 12100 0    50   Input ~ 0
B
$Comp
L power:+3.3V #PWR?
U 1 1 622D7196
P 6100 10550
F 0 "#PWR?" H 6100 10400 50  0001 C CNN
F 1 "+3.3V" H 6115 10723 50  0000 C CNN
F 2 "" H 6100 10550 50  0001 C CNN
F 3 "" H 6100 10550 50  0001 C CNN
	1    6100 10550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 10550 6100 10650
$Comp
L Device:R R?
U 1 1 622E8AD1
P 5800 11400
F 0 "R?" V 5593 11400 50  0000 C CNN
F 1 "R" V 5684 11400 50  0000 C CNN
F 2 "" V 5730 11400 50  0001 C CNN
F 3 "~" H 5800 11400 50  0001 C CNN
	1    5800 11400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 622EA5C0
P 6100 11400
F 0 "R?" V 5893 11400 50  0000 C CNN
F 1 "R" V 5984 11400 50  0000 C CNN
F 2 "" V 6030 11400 50  0001 C CNN
F 3 "~" H 6100 11400 50  0001 C CNN
	1    6100 11400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 622EA691
P 6400 11400
F 0 "R?" V 6193 11400 50  0000 C CNN
F 1 "R" V 6284 11400 50  0000 C CNN
F 2 "" V 6330 11400 50  0001 C CNN
F 3 "~" H 6400 11400 50  0001 C CNN
	1    6400 11400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 11150 5900 11050
Wire Wire Line
	6300 11150 6300 11050
Wire Wire Line
	6400 11250 6400 11150
Wire Wire Line
	6400 11150 6300 11150
Wire Wire Line
	6100 11050 6100 11250
Wire Wire Line
	5800 11250 5800 11150
Wire Wire Line
	5800 11150 5900 11150
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 6234E647
P 12650 4750
F 0 "J?" H 12730 4742 50  0000 L CNN
F 1 "Conn_01x04" H 12730 4651 50  0000 L CNN
F 2 "" H 12650 4750 50  0001 C CNN
F 3 "~" H 12650 4750 50  0001 C CNN
	1    12650 4750
	1    0    0    -1  
$EndComp
Text GLabel 12350 4650 0    50   Input ~ 0
DRV1_IN1
Text GLabel 12350 4750 0    50   Input ~ 0
DRV1_IN2
Text GLabel 12350 4850 0    50   Input ~ 0
DRV2_IN1
Text GLabel 12350 4950 0    50   Input ~ 0
DRV2_IN2
$Comp
L power:+5V #PWR?
U 1 1 6236B33E
P 11350 3000
F 0 "#PWR?" H 11350 2850 50  0001 C CNN
F 1 "+5V" H 11365 3173 50  0000 C CNN
F 2 "" H 11350 3000 50  0001 C CNN
F 3 "" H 11350 3000 50  0001 C CNN
	1    11350 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6236BB63
P 11750 3450
F 0 "#PWR?" H 11750 3300 50  0001 C CNN
F 1 "+3.3V" H 11765 3623 50  0000 C CNN
F 2 "" H 11750 3450 50  0001 C CNN
F 3 "" H 11750 3450 50  0001 C CNN
	1    11750 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	12350 3950 12450 3950
Wire Wire Line
	12250 4050 12450 4050
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 6237F2E7
P 12650 4050
F 0 "J?" H 12730 4092 50  0000 L CNN
F 1 "Power" H 12730 4001 50  0000 L CNN
F 2 "" H 12650 4050 50  0001 C CNN
F 3 "~" H 12650 4050 50  0001 C CNN
	1    12650 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6237FBF1
P 11350 4250
F 0 "#PWR?" H 11350 4000 50  0001 C CNN
F 1 "GND" H 11355 4077 50  0000 C CNN
F 2 "" H 11350 4250 50  0001 C CNN
F 3 "" H 11350 4250 50  0001 C CNN
	1    11350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 4250 11350 4150
$Comp
L Device:C C?
U 1 1 62389DD3
P 11750 3900
F 0 "C?" H 11865 3946 50  0000 L CNN
F 1 "0.1u" H 11865 3855 50  0000 L CNN
F 2 "" H 11788 3750 50  0001 C CNN
F 3 "~" H 11750 3900 50  0001 C CNN
	1    11750 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6238A05A
P 11350 3650
F 0 "C?" H 11465 3696 50  0000 L CNN
F 1 "0.1u" H 11465 3605 50  0000 L CNN
F 2 "" H 11388 3500 50  0001 C CNN
F 3 "~" H 11350 3650 50  0001 C CNN
	1    11350 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	11350 4150 11750 4150
Wire Wire Line
	11750 4050 11750 4150
Connection ~ 11750 4150
Wire Wire Line
	12250 3650 12250 4050
Connection ~ 11350 4150
Wire Wire Line
	11350 3800 11350 4150
Wire Wire Line
	11750 3450 11750 3650
$Comp
L Device:Ferrite_Bead FB?
U 1 1 62459706
P 12000 3650
F 0 "FB?" V 11726 3650 50  0000 C CNN
F 1 "Ferrite_Bead" V 11817 3650 50  0000 C CNN
F 2 "" V 11930 3650 50  0001 C CNN
F 3 "~" H 12000 3650 50  0001 C CNN
	1    12000 3650
	0    1    1    0   
$EndComp
Wire Wire Line
	12150 3650 12250 3650
Wire Wire Line
	11850 3650 11750 3650
Connection ~ 11750 3650
Wire Wire Line
	11750 3650 11750 3750
$Comp
L Device:Ferrite_Bead FB?
U 1 1 62477F68
P 11850 3100
F 0 "FB?" V 11576 3100 50  0000 C CNN
F 1 "Ferrite_Bead" V 11667 3100 50  0000 C CNN
F 2 "" V 11780 3100 50  0001 C CNN
F 3 "~" H 11850 3100 50  0001 C CNN
	1    11850 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	12000 3100 12350 3100
Wire Wire Line
	12350 3100 12350 3950
Wire Wire Line
	11350 3000 11350 3100
Wire Wire Line
	11350 3100 11700 3100
Connection ~ 11350 3100
Wire Wire Line
	11350 3100 11350 3500
Wire Wire Line
	11750 4150 12450 4150
$EndSCHEMATC
