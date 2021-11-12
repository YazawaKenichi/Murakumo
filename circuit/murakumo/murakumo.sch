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
L A3921:A3921 U?
U 1 1 618E566F
P 16250 3750
F 0 "U?" H 16850 4650 50  0000 C CNN
F 1 "A3921" H 16550 4650 50  0000 C CNN
F 2 "" H 16250 3750 50  0001 C CNN
F 3 "" H 16250 3750 50  0001 C CNN
	1    16250 3750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 618E714A
P 16050 2600
F 0 "#PWR?" H 16050 2450 50  0001 C CNN
F 1 "+BATT" H 16065 2773 50  0000 C CNN
F 2 "" H 16050 2600 50  0001 C CNN
F 3 "" H 16050 2600 50  0001 C CNN
	1    16050 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618E72C8
P 16300 2600
F 0 "C?" V 16048 2600 50  0000 C CNN
F 1 "C" V 16139 2600 50  0000 C CNN
F 2 "" H 16338 2450 50  0001 C CNN
F 3 "~" H 16300 2600 50  0001 C CNN
	1    16300 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	16150 2600 16150 2750
Wire Wire Line
	16150 2750 16250 2750
Wire Wire Line
	16250 2750 16250 2800
Wire Wire Line
	16350 2800 16350 2750
Wire Wire Line
	16350 2750 16450 2750
Wire Wire Line
	16450 2750 16450 2600
Wire Wire Line
	16050 2600 16050 2800
$Comp
L Device:C C?
U 1 1 618E7954
P 17750 2900
F 0 "C?" H 17865 2946 50  0000 L CNN
F 1 "C" H 17865 2855 50  0000 L CNN
F 2 "" H 17788 2750 50  0001 C CNN
F 3 "~" H 17750 2900 50  0001 C CNN
	1    17750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	17750 2750 17500 2750
Wire Wire Line
	17500 2750 17500 3050
Wire Wire Line
	17500 3050 17100 3050
$Comp
L power:GND #PWR?
U 1 1 618E7FCE
P 17750 3050
F 0 "#PWR?" H 17750 2800 50  0001 C CNN
F 1 "GND" H 17755 2877 50  0000 C CNN
F 2 "" H 17750 3050 50  0001 C CNN
F 3 "" H 17750 3050 50  0001 C CNN
	1    17750 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618E8010
P 17750 3550
F 0 "C?" H 17865 3596 50  0000 L CNN
F 1 "C" H 17865 3505 50  0000 L CNN
F 2 "" H 17788 3400 50  0001 C CNN
F 3 "~" H 17750 3550 50  0001 C CNN
	1    17750 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 618F2142
P 17750 4250
F 0 "C?" H 17865 4296 50  0000 L CNN
F 1 "C" H 17865 4205 50  0000 L CNN
F 2 "" H 17788 4100 50  0001 C CNN
F 3 "~" H 17750 4250 50  0001 C CNN
	1    17750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	17200 4100 17200 4150
Wire Wire Line
	17200 4150 17100 4150
Wire Wire Line
	17200 4100 17750 4100
Wire Wire Line
	17100 4350 17200 4350
Wire Wire Line
	17200 4350 17200 4400
Wire Wire Line
	17200 4400 17750 4400
Wire Wire Line
	17200 3700 17200 3650
Wire Wire Line
	17200 3650 17100 3650
Wire Wire Line
	17200 3700 17750 3700
Wire Wire Line
	17100 3450 17200 3450
Wire Wire Line
	17200 3450 17200 3400
Wire Wire Line
	17200 3400 17750 3400
Wire Wire Line
	17300 3550 17100 3550
Wire Wire Line
	17300 4250 17100 4250
Entry Wire Line
	17300 4250 17400 4350
Entry Wire Line
	17300 3550 17400 3650
Entry Wire Line
	17300 3750 17400 3850
Entry Wire Line
	17300 4450 17400 4550
Wire Wire Line
	17300 4450 17100 4450
Wire Wire Line
	17100 3750 17300 3750
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 618F5D42
P 19300 3250
F 0 "Q?" H 19504 3296 50  0000 L CNN
F 1 "2N7000" H 19504 3205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 19500 3175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 19300 3250 50  0001 L CNN
	1    19300 3250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 618F6973
P 19300 3750
F 0 "Q?" H 19504 3796 50  0000 L CNN
F 1 "2N7000" H 19504 3705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 19500 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 19300 3750 50  0001 L CNN
	1    19300 3750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 618F6DA4
P 20200 3750
F 0 "Q?" H 20405 3704 50  0000 L CNN
F 1 "2N7000" H 20405 3795 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 20400 3675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 20200 3750 50  0001 L CNN
	1    20200 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	20100 3450 20100 3500
Wire Wire Line
	19400 3550 19400 3500
Wire Wire Line
	19400 3950 19400 4000
Wire Wire Line
	20100 4000 20100 3950
Wire Wire Line
	20100 3050 20100 3000
Wire Wire Line
	20100 3000 19750 3000
Wire Wire Line
	19400 3000 19400 3050
$Comp
L Device:R R?
U 1 1 618F8ECF
P 18950 3250
F 0 "R?" V 18743 3250 50  0000 C CNN
F 1 "R" V 18834 3250 50  0000 C CNN
F 2 "" V 18880 3250 50  0001 C CNN
F 3 "~" H 18950 3250 50  0001 C CNN
	1    18950 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 618F8FA5
P 18950 3750
F 0 "R?" V 18743 3750 50  0000 C CNN
F 1 "R" V 18834 3750 50  0000 C CNN
F 2 "" V 18880 3750 50  0001 C CNN
F 3 "~" H 18950 3750 50  0001 C CNN
	1    18950 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 618F913A
P 20550 3750
F 0 "R?" V 20343 3750 50  0000 C CNN
F 1 "R" V 20434 3750 50  0000 C CNN
F 2 "" V 20480 3750 50  0001 C CNN
F 3 "~" H 20550 3750 50  0001 C CNN
	1    20550 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 618F9605
P 20550 3250
F 0 "R?" V 20343 3250 50  0000 C CNN
F 1 "R" V 20434 3250 50  0000 C CNN
F 2 "" V 20480 3250 50  0001 C CNN
F 3 "~" H 20550 3250 50  0001 C CNN
	1    20550 3250
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 618F7321
P 20200 3250
F 0 "Q?" H 20405 3204 50  0000 L CNN
F 1 "2N7000" H 20405 3295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 20400 3175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 20200 3250 50  0001 L CNN
	1    20200 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	18600 3250 18800 3250
Wire Wire Line
	18600 3750 18800 3750
Wire Wire Line
	20850 3250 20700 3250
Wire Wire Line
	20850 3750 20700 3750
Entry Wire Line
	20850 3750 20950 3850
Entry Wire Line
	20850 3250 20950 3350
Entry Wire Line
	18600 3250 18500 3350
Entry Wire Line
	18600 3750 18500 3850
Entry Bus Bus
	20950 4650 20850 4750
Entry Bus Bus
	18500 4650 18400 4750
Text Label 17300 3550 2    50   ~ 0
GHA
Text Label 17300 3750 2    50   ~ 0
GLA
Text Label 17300 4250 2    50   ~ 0
GHB
Text Label 17300 4450 2    50   ~ 0
GLB
Text Label 20850 3750 2    50   ~ 0
GLB
Text Label 20850 3250 2    50   ~ 0
GHB
Text Label 18600 3250 0    50   ~ 0
GHA
Text Label 18600 3750 0    50   ~ 0
GLA
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61903F70
P 19700 3300
F 0 "J?" V 19664 3112 50  0000 R CNN
F 1 "Conn_01x02" V 19573 3112 50  0000 R CNN
F 2 "" H 19700 3300 50  0001 C CNN
F 3 "~" H 19700 3300 50  0001 C CNN
	1    19700 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	19400 4000 19750 4000
Wire Wire Line
	19800 3500 20100 3500
Connection ~ 20100 3500
Wire Wire Line
	20100 3500 20100 3550
Wire Wire Line
	19700 3500 19400 3500
Connection ~ 19400 3500
Wire Wire Line
	19400 3500 19400 3450
Wire Wire Line
	17100 3950 18250 3950
Wire Wire Line
	18250 3950 18250 4200
Wire Wire Line
	18250 4200 19750 4200
Wire Wire Line
	17100 3250 18250 3250
Wire Wire Line
	18250 3250 18250 2750
Wire Wire Line
	18250 2750 19750 2750
$Comp
L power:+BATT #PWR?
U 1 1 61908640
P 19750 2500
F 0 "#PWR?" H 19750 2350 50  0001 C CNN
F 1 "+BATT" H 19765 2673 50  0000 C CNN
F 2 "" H 19750 2500 50  0001 C CNN
F 3 "" H 19750 2500 50  0001 C CNN
	1    19750 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	19750 2500 19750 2750
Connection ~ 19750 3000
Wire Wire Line
	19750 3000 19400 3000
Connection ~ 19750 2750
Wire Wire Line
	19750 2750 19750 3000
$Comp
L power:GND #PWR?
U 1 1 61909534
P 19750 4500
F 0 "#PWR?" H 19750 4250 50  0001 C CNN
F 1 "GND" H 19755 4327 50  0000 C CNN
F 2 "" H 19750 4500 50  0001 C CNN
F 3 "" H 19750 4500 50  0001 C CNN
	1    19750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	19750 4500 19750 4200
Connection ~ 19750 4000
Wire Wire Line
	19750 4000 20100 4000
Connection ~ 19750 4200
Wire Wire Line
	19750 4200 19750 4000
$Comp
L power:GND #PWR?
U 1 1 6190B29C
P 16150 4700
F 0 "#PWR?" H 16150 4450 50  0001 C CNN
F 1 "GND" H 16155 4527 50  0000 C CNN
F 2 "" H 16150 4700 50  0001 C CNN
F 3 "" H 16150 4700 50  0001 C CNN
	1    16150 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6190B597
P 15950 4850
F 0 "R?" H 16020 4896 50  0000 L CNN
F 1 "R" H 16020 4805 50  0000 L CNN
F 2 "" V 15880 4850 50  0001 C CNN
F 3 "~" H 15950 4850 50  0001 C CNN
	1    15950 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6190B94E
P 15950 5000
F 0 "#PWR?" H 15950 4750 50  0001 C CNN
F 1 "GND" H 15955 4827 50  0000 C CNN
F 2 "" H 15950 5000 50  0001 C CNN
F 3 "" H 15950 5000 50  0001 C CNN
	1    15950 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6190BC82
P 15000 3100
F 0 "#PWR?" H 15000 2850 50  0001 C CNN
F 1 "GND" H 15005 2927 50  0000 C CNN
F 2 "" H 15000 3100 50  0001 C CNN
F 3 "" H 15000 3100 50  0001 C CNN
	1    15000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6190BF65
P 15000 2950
F 0 "C?" H 15115 2996 50  0000 L CNN
F 1 "C" H 15115 2905 50  0000 L CNN
F 2 "" H 15038 2800 50  0001 C CNN
F 3 "~" H 15000 2950 50  0001 C CNN
	1    15000 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 2800 15250 2800
Wire Wire Line
	15250 2800 15250 3100
Wire Wire Line
	15250 3100 15400 3100
$Comp
L Device:R R?
U 1 1 6190D275
P 14650 2950
F 0 "R?" H 14720 2996 50  0000 L CNN
F 1 "R" H 14720 2905 50  0000 L CNN
F 2 "" V 14580 2950 50  0001 C CNN
F 3 "~" H 14650 2950 50  0001 C CNN
	1    14650 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6190D2BB
P 14350 2950
F 0 "R?" H 14420 2996 50  0000 L CNN
F 1 "R" H 14420 2905 50  0000 L CNN
F 2 "" V 14280 2950 50  0001 C CNN
F 3 "~" H 14350 2950 50  0001 C CNN
	1    14350 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6190D387
P 14050 2950
F 0 "R?" H 14120 2996 50  0000 L CNN
F 1 "R" H 14120 2905 50  0000 L CNN
F 2 "" V 13980 2950 50  0001 C CNN
F 3 "~" H 14050 2950 50  0001 C CNN
	1    14050 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6190D43E
P 14050 3250
F 0 "R?" H 14120 3296 50  0000 L CNN
F 1 "R" H 14120 3205 50  0000 L CNN
F 2 "" V 13980 3250 50  0001 C CNN
F 3 "~" H 14050 3250 50  0001 C CNN
	1    14050 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6190DB45
P 14050 3400
F 0 "#PWR?" H 14050 3150 50  0001 C CNN
F 1 "GND" H 14055 3227 50  0000 C CNN
F 2 "" H 14050 3400 50  0001 C CNN
F 3 "" H 14050 3400 50  0001 C CNN
	1    14050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 2800 14650 2800
Connection ~ 15000 2800
Connection ~ 14350 2800
Wire Wire Line
	14350 2800 14050 2800
Connection ~ 14650 2800
Wire Wire Line
	14650 2800 14350 2800
Wire Wire Line
	14650 3100 14650 3300
Wire Wire Line
	14650 3300 15400 3300
Wire Wire Line
	15400 3400 14350 3400
Wire Wire Line
	14350 3400 14350 3100
Wire Wire Line
	14050 3100 14200 3100
Wire Wire Line
	14200 3100 14200 3500
Wire Wire Line
	14200 3500 15400 3500
Connection ~ 14050 3100
$Comp
L A3921:A3921 U?
U 1 1 619226B6
P 16250 6750
F 0 "U?" H 16850 7650 50  0000 C CNN
F 1 "A3921" H 16550 7650 50  0000 C CNN
F 2 "" H 16250 6750 50  0001 C CNN
F 3 "" H 16250 6750 50  0001 C CNN
	1    16250 6750
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR?
U 1 1 619226BC
P 16050 5600
F 0 "#PWR?" H 16050 5450 50  0001 C CNN
F 1 "+BATT" H 16065 5773 50  0000 C CNN
F 2 "" H 16050 5600 50  0001 C CNN
F 3 "" H 16050 5600 50  0001 C CNN
	1    16050 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619226C2
P 16300 5600
F 0 "C?" V 16048 5600 50  0000 C CNN
F 1 "C" V 16139 5600 50  0000 C CNN
F 2 "" H 16338 5450 50  0001 C CNN
F 3 "~" H 16300 5600 50  0001 C CNN
	1    16300 5600
	0    1    1    0   
$EndComp
Wire Wire Line
	16150 5600 16150 5750
Wire Wire Line
	16150 5750 16250 5750
Wire Wire Line
	16250 5750 16250 5800
Wire Wire Line
	16350 5800 16350 5750
Wire Wire Line
	16350 5750 16450 5750
Wire Wire Line
	16450 5750 16450 5600
Wire Wire Line
	16050 5600 16050 5800
$Comp
L Device:C C?
U 1 1 619226CF
P 17750 5900
F 0 "C?" H 17865 5946 50  0000 L CNN
F 1 "C" H 17865 5855 50  0000 L CNN
F 2 "" H 17788 5750 50  0001 C CNN
F 3 "~" H 17750 5900 50  0001 C CNN
	1    17750 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	17750 5750 17500 5750
Wire Wire Line
	17500 5750 17500 6050
Wire Wire Line
	17500 6050 17100 6050
$Comp
L power:GND #PWR?
U 1 1 619226D8
P 17750 6050
F 0 "#PWR?" H 17750 5800 50  0001 C CNN
F 1 "GND" H 17755 5877 50  0000 C CNN
F 2 "" H 17750 6050 50  0001 C CNN
F 3 "" H 17750 6050 50  0001 C CNN
	1    17750 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619226DE
P 17750 6550
F 0 "C?" H 17865 6596 50  0000 L CNN
F 1 "C" H 17865 6505 50  0000 L CNN
F 2 "" H 17788 6400 50  0001 C CNN
F 3 "~" H 17750 6550 50  0001 C CNN
	1    17750 6550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 619226E4
P 17750 7250
F 0 "C?" H 17865 7296 50  0000 L CNN
F 1 "C" H 17865 7205 50  0000 L CNN
F 2 "" H 17788 7100 50  0001 C CNN
F 3 "~" H 17750 7250 50  0001 C CNN
	1    17750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	17200 7100 17200 7150
Wire Wire Line
	17200 7150 17100 7150
Wire Wire Line
	17200 7100 17750 7100
Wire Wire Line
	17100 7350 17200 7350
Wire Wire Line
	17200 7350 17200 7400
Wire Wire Line
	17200 7400 17750 7400
Wire Wire Line
	17200 6700 17200 6650
Wire Wire Line
	17200 6650 17100 6650
Wire Wire Line
	17200 6700 17750 6700
Wire Wire Line
	17100 6450 17200 6450
Wire Wire Line
	17200 6450 17200 6400
Wire Wire Line
	17200 6400 17750 6400
Wire Wire Line
	17300 6550 17100 6550
Wire Wire Line
	17300 7250 17100 7250
Entry Wire Line
	17300 7250 17400 7350
Entry Wire Line
	17300 6550 17400 6650
Entry Wire Line
	17300 6750 17400 6850
Entry Wire Line
	17300 7450 17400 7550
Wire Wire Line
	17300 7450 17100 7450
Wire Wire Line
	17100 6750 17300 6750
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 619226FE
P 19300 6250
F 0 "Q?" H 19504 6296 50  0000 L CNN
F 1 "2N7000" H 19504 6205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 19500 6175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 19300 6250 50  0001 L CNN
	1    19300 6250
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 61922704
P 19300 6750
F 0 "Q?" H 19504 6796 50  0000 L CNN
F 1 "2N7000" H 19504 6705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 19500 6675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 19300 6750 50  0001 L CNN
	1    19300 6750
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 6192270A
P 20200 6750
F 0 "Q?" H 20405 6704 50  0000 L CNN
F 1 "2N7000" H 20405 6795 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 20400 6675 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 20200 6750 50  0001 L CNN
	1    20200 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	20100 6450 20100 6500
Wire Wire Line
	19400 6550 19400 6500
Wire Wire Line
	19400 6950 19400 7000
Wire Wire Line
	20100 7000 20100 6950
Wire Wire Line
	20100 6050 20100 6000
Wire Wire Line
	20100 6000 19750 6000
Wire Wire Line
	19400 6000 19400 6050
$Comp
L Device:R R?
U 1 1 61922717
P 18950 6250
F 0 "R?" V 18743 6250 50  0000 C CNN
F 1 "R" V 18834 6250 50  0000 C CNN
F 2 "" V 18880 6250 50  0001 C CNN
F 3 "~" H 18950 6250 50  0001 C CNN
	1    18950 6250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 6192271D
P 18950 6750
F 0 "R?" V 18743 6750 50  0000 C CNN
F 1 "R" V 18834 6750 50  0000 C CNN
F 2 "" V 18880 6750 50  0001 C CNN
F 3 "~" H 18950 6750 50  0001 C CNN
	1    18950 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61922723
P 20550 6750
F 0 "R?" V 20343 6750 50  0000 C CNN
F 1 "R" V 20434 6750 50  0000 C CNN
F 2 "" V 20480 6750 50  0001 C CNN
F 3 "~" H 20550 6750 50  0001 C CNN
	1    20550 6750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 61922729
P 20550 6250
F 0 "R?" V 20343 6250 50  0000 C CNN
F 1 "R" V 20434 6250 50  0000 C CNN
F 2 "" V 20480 6250 50  0001 C CNN
F 3 "~" H 20550 6250 50  0001 C CNN
	1    20550 6250
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q?
U 1 1 6192272F
P 20200 6250
F 0 "Q?" H 20405 6204 50  0000 L CNN
F 1 "2N7000" H 20405 6295 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 20400 6175 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/NDS7002A-D.PDF" H 20200 6250 50  0001 L CNN
	1    20200 6250
	-1   0    0    1   
$EndComp
Wire Wire Line
	18600 6250 18800 6250
Wire Wire Line
	18600 6750 18800 6750
Wire Wire Line
	20850 6250 20700 6250
Wire Wire Line
	20850 6750 20700 6750
Entry Wire Line
	20850 6750 20950 6850
Entry Wire Line
	20850 6250 20950 6350
Entry Wire Line
	18600 6250 18500 6350
Entry Wire Line
	18600 6750 18500 6850
Entry Bus Bus
	20950 7650 20850 7750
Entry Bus Bus
	18500 7650 18400 7750
Text Label 17300 6550 2    50   ~ 0
GHA
Text Label 17300 6750 2    50   ~ 0
GLA
Text Label 17300 7250 2    50   ~ 0
GHB
Text Label 17300 7450 2    50   ~ 0
GLB
Text Label 20850 6750 2    50   ~ 0
GLB
Text Label 20850 6250 2    50   ~ 0
GHB
Text Label 18600 6250 0    50   ~ 0
GHA
Text Label 18600 6750 0    50   ~ 0
GLA
$Comp
L Connector_Generic:Conn_01x02 J?
U 1 1 61922747
P 19700 6300
F 0 "J?" V 19664 6112 50  0000 R CNN
F 1 "Conn_01x02" V 19573 6112 50  0000 R CNN
F 2 "" H 19700 6300 50  0001 C CNN
F 3 "~" H 19700 6300 50  0001 C CNN
	1    19700 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	19400 7000 19750 7000
Wire Wire Line
	19800 6500 20100 6500
Connection ~ 20100 6500
Wire Wire Line
	20100 6500 20100 6550
Wire Wire Line
	19700 6500 19400 6500
Connection ~ 19400 6500
Wire Wire Line
	19400 6500 19400 6450
Wire Wire Line
	17100 6950 18250 6950
Wire Wire Line
	18250 6950 18250 7200
Wire Wire Line
	18250 7200 19750 7200
Wire Wire Line
	17100 6250 18250 6250
Wire Wire Line
	18250 6250 18250 5750
Wire Wire Line
	18250 5750 19750 5750
$Comp
L power:+BATT #PWR?
U 1 1 6192275A
P 19750 5500
F 0 "#PWR?" H 19750 5350 50  0001 C CNN
F 1 "+BATT" H 19765 5673 50  0000 C CNN
F 2 "" H 19750 5500 50  0001 C CNN
F 3 "" H 19750 5500 50  0001 C CNN
	1    19750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	19750 5500 19750 5750
Connection ~ 19750 6000
Wire Wire Line
	19750 6000 19400 6000
Connection ~ 19750 5750
Wire Wire Line
	19750 5750 19750 6000
$Comp
L power:GND #PWR?
U 1 1 61922765
P 19750 7500
F 0 "#PWR?" H 19750 7250 50  0001 C CNN
F 1 "GND" H 19755 7327 50  0000 C CNN
F 2 "" H 19750 7500 50  0001 C CNN
F 3 "" H 19750 7500 50  0001 C CNN
	1    19750 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	19750 7500 19750 7200
Connection ~ 19750 7000
Wire Wire Line
	19750 7000 20100 7000
Connection ~ 19750 7200
Wire Wire Line
	19750 7200 19750 7000
$Comp
L power:GND #PWR?
U 1 1 61922770
P 16150 7700
F 0 "#PWR?" H 16150 7450 50  0001 C CNN
F 1 "GND" H 16155 7527 50  0000 C CNN
F 2 "" H 16150 7700 50  0001 C CNN
F 3 "" H 16150 7700 50  0001 C CNN
	1    16150 7700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61922776
P 15950 7850
F 0 "R?" H 16020 7896 50  0000 L CNN
F 1 "R" H 16020 7805 50  0000 L CNN
F 2 "" V 15880 7850 50  0001 C CNN
F 3 "~" H 15950 7850 50  0001 C CNN
	1    15950 7850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6192277C
P 15950 8000
F 0 "#PWR?" H 15950 7750 50  0001 C CNN
F 1 "GND" H 15955 7827 50  0000 C CNN
F 2 "" H 15950 8000 50  0001 C CNN
F 3 "" H 15950 8000 50  0001 C CNN
	1    15950 8000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 61922782
P 15000 6100
F 0 "#PWR?" H 15000 5850 50  0001 C CNN
F 1 "GND" H 15005 5927 50  0000 C CNN
F 2 "" H 15000 6100 50  0001 C CNN
F 3 "" H 15000 6100 50  0001 C CNN
	1    15000 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 61922788
P 15000 5950
F 0 "C?" H 15115 5996 50  0000 L CNN
F 1 "C" H 15115 5905 50  0000 L CNN
F 2 "" H 15038 5800 50  0001 C CNN
F 3 "~" H 15000 5950 50  0001 C CNN
	1    15000 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 5800 15250 5800
Wire Wire Line
	15250 5800 15250 6100
Wire Wire Line
	15250 6100 15400 6100
$Comp
L Device:R R?
U 1 1 61922791
P 14650 5950
F 0 "R?" H 14720 5996 50  0000 L CNN
F 1 "R" H 14720 5905 50  0000 L CNN
F 2 "" V 14580 5950 50  0001 C CNN
F 3 "~" H 14650 5950 50  0001 C CNN
	1    14650 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 61922797
P 14350 5950
F 0 "R?" H 14420 5996 50  0000 L CNN
F 1 "R" H 14420 5905 50  0000 L CNN
F 2 "" V 14280 5950 50  0001 C CNN
F 3 "~" H 14350 5950 50  0001 C CNN
	1    14350 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6192279D
P 14050 5950
F 0 "R?" H 14120 5996 50  0000 L CNN
F 1 "R" H 14120 5905 50  0000 L CNN
F 2 "" V 13980 5950 50  0001 C CNN
F 3 "~" H 14050 5950 50  0001 C CNN
	1    14050 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 619227A3
P 14050 6250
F 0 "R?" H 14120 6296 50  0000 L CNN
F 1 "R" H 14120 6205 50  0000 L CNN
F 2 "" V 13980 6250 50  0001 C CNN
F 3 "~" H 14050 6250 50  0001 C CNN
	1    14050 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 619227A9
P 14050 6400
F 0 "#PWR?" H 14050 6150 50  0001 C CNN
F 1 "GND" H 14055 6227 50  0000 C CNN
F 2 "" H 14050 6400 50  0001 C CNN
F 3 "" H 14050 6400 50  0001 C CNN
	1    14050 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	15000 5800 14650 5800
Connection ~ 15000 5800
Connection ~ 14350 5800
Wire Wire Line
	14350 5800 14050 5800
Connection ~ 14650 5800
Wire Wire Line
	14650 5800 14350 5800
Wire Wire Line
	14650 6100 14650 6300
Wire Wire Line
	14650 6300 15400 6300
Wire Wire Line
	15400 6400 14350 6400
Wire Wire Line
	14350 6400 14350 6100
Wire Wire Line
	14050 6100 14200 6100
Wire Wire Line
	14200 6100 14200 6500
Wire Wire Line
	14200 6500 15400 6500
Connection ~ 14050 6100
Wire Bus Line
	18500 3350 18500 4650
Wire Bus Line
	20950 3350 20950 4650
Wire Bus Line
	17400 4750 20850 4750
Wire Bus Line
	18500 6350 18500 7650
Wire Bus Line
	20950 6350 20950 7650
Wire Bus Line
	17400 7750 20850 7750
Wire Bus Line
	17400 3650 17400 4750
Wire Bus Line
	17400 6650 17400 7750
$EndSCHEMATC