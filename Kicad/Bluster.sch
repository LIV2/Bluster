EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BLUSTER"
Date ""
Rev "A"
Comp "LIV2"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CPLD_Xilinx:XC9572XL-VQ64 U1
U 1 1 6011E759
P 5600 2950
F 0 "U1" H 5600 4831 50  0000 C CNN
F 1 "Buster" H 5600 4740 50  0000 C CNN
F 2 "Package_QFP:TQFP-64_10x10mm_P0.5mm" H 5600 2950 50  0001 C CNN
F 3 "" H 5600 2950 50  0001 C CNN
	1    5600 2950
	1    0    0    -1  
$EndComp
$Comp
L Buster:Buster J1
U 1 1 60134927
P 2650 1400
F 0 "J1" H 2650 1450 50  0000 L CNN
F 1 "Buster" H 2650 -1800 50  0000 L CNN
F 2 "Package_DIP:DIP-48_W15.24mm_Socket" H 2828 934 50  0001 L CNN
F 3 "" H 2650 1200 50  0001 C CNN
	1    2650 1400
	1    0    0    -1  
$EndComp
$Comp
L Buster:Buster J1
U 2 1 60130EF0
P 1500 2800
F 0 "J1" H 1350 2900 50  0000 C CNN
F 1 "Buster" H 1250 2000 50  0000 C CNN
F 2 "Package_DIP:DIP-48_W15.24mm_Socket" H 1925 2873 50  0001 C CNN
F 3 "" H 1500 2600 50  0001 C CNN
	2    1500 2800
	1    0    0    -1  
$EndComp
Text Label 2550 1500 2    50   ~ 0
~BR1
Text Label 2550 1600 2    50   ~ 0
~BR2
Text Label 2550 1700 2    50   ~ 0
~BR3
Text Label 2550 1800 2    50   ~ 0
~BR4
Text Label 2550 1900 2    50   ~ 0
~BR5
Text Label 2550 2050 2    50   ~ 0
~SLAVE1
Text Label 2550 2150 2    50   ~ 0
~SLAVE2
Text Label 2550 2250 2    50   ~ 0
~SLAVE3
Text Label 2550 2350 2    50   ~ 0
~SLAVE4
Text Label 2550 2450 2    50   ~ 0
~SLAVE5
Text Label 2550 2600 2    50   ~ 0
~A19
Text Label 2550 2700 2    50   ~ 0
~A20
Text Label 2550 2800 2    50   ~ 0
~A21
Text Label 2550 2900 2    50   ~ 0
~A22
Text Label 2550 3000 2    50   ~ 0
~A23
Text Label 3600 1500 0    50   ~ 0
~BG1
Text Label 3600 1600 0    50   ~ 0
~BG2
Text Label 3600 1700 0    50   ~ 0
~BG3
Text Label 3600 1800 0    50   ~ 0
~BG4
Text Label 3600 1900 0    50   ~ 0
~BG5
Text Label 3600 2200 0    50   ~ 0
~DBOE
Text Label 3600 2300 0    50   ~ 0
DOE
Text Label 3600 2950 0    50   ~ 0
D2P
Text Label 3600 3350 0    50   ~ 0
GBG
Text Label 3600 3550 0    50   ~ 0
~CBG
Text Label 3600 3650 0    50   ~ 0
~BR
Text Label 3600 3750 0    50   ~ 0
~CBR
Text Label 3600 4350 0    50   ~ 0
~C4
Text Label 3600 4450 0    50   ~ 0
~C2
Text Label 2550 3150 2    50   ~ 0
~BEER
Text Label 2550 3250 2    50   ~ 0
~UDS
Text Label 2550 3350 2    50   ~ 0
~LDS
Text Label 2550 3450 2    50   ~ 0
READ
Text Label 2550 3550 2    50   ~ 0
~BG
Text Label 2550 3650 2    50   ~ 0
~BOSS
Text Label 2550 3750 2    50   ~ 0
~OVR
Text Label 2550 3850 2    50   ~ 0
~OWN
Text Label 2550 3950 2    50   ~ 0
~AS
Text Label 2550 4050 2    50   ~ 0
~RST
Text Label 2550 4250 2    50   ~ 0
~CDAC
Text Label 2550 4350 2    50   ~ 0
C1
Text Label 2550 4450 2    50   ~ 0
C3
Wire Wire Line
	5800 1250 5700 1250
Connection ~ 5600 1250
Wire Wire Line
	5600 1250 5500 1250
Connection ~ 5700 1250
Wire Wire Line
	5700 1250 5600 1250
Wire Wire Line
	5800 4750 5700 4750
Connection ~ 5600 4750
Wire Wire Line
	5600 4750 5500 4750
Connection ~ 5700 4750
Wire Wire Line
	5700 4750 5650 4750
Wire Wire Line
	5650 5000 5650 4750
$Comp
L power:GND #PWR03
U 1 1 60140644
P 5650 5000
F 0 "#PWR03" H 5650 4750 50  0001 C CNN
F 1 "GND" H 5655 4827 50  0000 C CNN
F 2 "" H 5650 5000 50  0001 C CNN
F 3 "" H 5650 5000 50  0001 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3550 1500 3550
$Comp
L power:GND #PWR01
U 1 1 60142149
P 1500 3550
F 0 "#PWR01" H 1500 3300 50  0001 C CNN
F 1 "GND" H 1505 3377 50  0000 C CNN
F 2 "" H 1500 3550 50  0001 C CNN
F 3 "" H 1500 3550 50  0001 C CNN
	1    1500 3550
	1    0    0    -1  
$EndComp
Connection ~ 1500 3550
Wire Wire Line
	1500 3550 1550 3550
$Comp
L Device:C C1
U 1 1 6014581D
P 7300 1500
F 0 "C1" H 7415 1546 50  0000 L CNN
F 1 "0.1u" H 7415 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7338 1350 50  0001 C CNN
F 3 "~" H 7300 1500 50  0001 C CNN
	1    7300 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 60147309
P 7700 1500
F 0 "C2" H 7815 1546 50  0000 L CNN
F 1 "0.1u" H 7815 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7738 1350 50  0001 C CNN
F 3 "~" H 7700 1500 50  0001 C CNN
	1    7700 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 60147871
P 8100 1500
F 0 "C3" H 8215 1546 50  0000 L CNN
F 1 "0.1u" H 8215 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8138 1350 50  0001 C CNN
F 3 "~" H 8100 1500 50  0001 C CNN
	1    8100 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 60147B7A
P 8500 1500
F 0 "C4" H 8615 1546 50  0000 L CNN
F 1 "0.1u" H 8615 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8538 1350 50  0001 C CNN
F 3 "~" H 8500 1500 50  0001 C CNN
	1    8500 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 1350 7700 1350
Connection ~ 7700 1350
Wire Wire Line
	7700 1350 8100 1350
Connection ~ 8100 1350
Wire Wire Line
	8100 1350 8500 1350
Wire Wire Line
	8500 1650 8100 1650
Connection ~ 7700 1650
Wire Wire Line
	7700 1650 7300 1650
Connection ~ 8100 1650
Wire Wire Line
	8100 1650 7700 1650
$Comp
L power:GND #PWR08
U 1 1 60149B75
P 8500 1650
F 0 "#PWR08" H 8500 1400 50  0001 C CNN
F 1 "GND" H 8505 1477 50  0000 C CNN
F 2 "" H 8500 1650 50  0001 C CNN
F 3 "" H 8500 1650 50  0001 C CNN
	1    8500 1650
	1    0    0    -1  
$EndComp
Connection ~ 8500 1650
Connection ~ 5650 4750
Wire Wire Line
	5650 4750 5600 4750
Text Label 7750 4350 2    50   ~ 0
TMS
Text Label 7750 4450 2    50   ~ 0
TDI
Text Label 7750 4550 2    50   ~ 0
TDO
Text Label 7750 4650 2    50   ~ 0
TCK
Text Label 6400 4250 0    50   ~ 0
TDI
Text Label 6400 4350 0    50   ~ 0
TMS
Text Label 6400 4450 0    50   ~ 0
TCK
Text Label 6400 4550 0    50   ~ 0
TDO
$Comp
L power:GND #PWR06
U 1 1 6015097C
P 7750 4750
F 0 "#PWR06" H 7750 4500 50  0001 C CNN
F 1 "GND" V 7755 4622 50  0000 R CNN
F 2 "" H 7750 4750 50  0001 C CNN
F 3 "" H 7750 4750 50  0001 C CNN
	1    7750 4750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 6014B057
P 7950 4550
F 0 "J2" H 7978 4526 50  0000 L CNN
F 1 "Buster" H 7978 4435 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 7950 4550 50  0001 C CNN
F 3 "" H 7950 4550 50  0001 C CNN
	1    7950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 60151827
P 7750 4850
F 0 "#PWR07" H 7750 4700 50  0001 C CNN
F 1 "+3.3V" V 7765 4978 50  0000 L CNN
F 2 "" H 7750 4850 50  0001 C CNN
F 3 "" H 7750 4850 50  0001 C CNN
	1    7750 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 60152460
P 7300 1350
F 0 "#PWR05" H 7300 1200 50  0001 C CNN
F 1 "+3.3V" H 7315 1523 50  0000 C CNN
F 2 "" H 7300 1350 50  0001 C CNN
F 3 "" H 7300 1350 50  0001 C CNN
	1    7300 1350
	1    0    0    -1  
$EndComp
Connection ~ 7300 1350
Connection ~ 5800 1250
Wire Wire Line
	5800 1250 5800 800 
$Comp
L power:+3.3V #PWR04
U 1 1 60153D2F
P 5800 800
F 0 "#PWR04" H 5800 650 50  0001 C CNN
F 1 "+3.3V" H 5815 973 50  0000 C CNN
F 2 "" H 5800 800 50  0001 C CNN
F 3 "" H 5800 800 50  0001 C CNN
	1    5800 800 
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AP7361C-33E U2
U 1 1 60156074
P 9700 1390
F 0 "U2" H 9700 1632 50  0000 C CNN
F 1 "TC1262-3.3V" H 9700 1541 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9700 1615 50  0001 C CIN
F 3 "https://ww1.microchip.com/downloads/en/DeviceDoc/21373C.pdf" H 9700 1340 50  0001 C CNN
	1    9700 1390
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 6015942C
P 9700 1740
F 0 "#PWR010" H 9700 1490 50  0001 C CNN
F 1 "GND" H 9705 1567 50  0000 C CNN
F 2 "" H 9700 1740 50  0001 C CNN
F 3 "" H 9700 1740 50  0001 C CNN
	1    9700 1740
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 6015BB09
P 9150 1540
F 0 "C5" H 9265 1586 50  0000 L CNN
F 1 "47u" H 9265 1495 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9188 1390 50  0001 C CNN
F 3 "~" H 9150 1540 50  0001 C CNN
	1    9150 1540
	1    0    0    -1  
$EndComp
$Comp
L Device:C C6
U 1 1 6015C4F0
P 10250 1540
F 0 "C6" H 10365 1586 50  0000 L CNN
F 1 "10u" H 10365 1495 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 10288 1390 50  0001 C CNN
F 3 "~" H 10250 1540 50  0001 C CNN
	1    10250 1540
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 1390 9400 1390
Wire Wire Line
	10250 1390 10000 1390
Wire Wire Line
	9700 1740 9700 1690
Wire Wire Line
	9700 1690 9150 1690
Connection ~ 9700 1690
Wire Wire Line
	9700 1690 10250 1690
$Comp
L power:+3.3V #PWR011
U 1 1 60160CDB
P 10250 1390
F 0 "#PWR011" H 10250 1240 50  0001 C CNN
F 1 "+3.3V" H 10265 1563 50  0000 C CNN
F 2 "" H 10250 1390 50  0001 C CNN
F 3 "" H 10250 1390 50  0001 C CNN
	1    10250 1390
	1    0    0    -1  
$EndComp
Connection ~ 10250 1390
$Comp
L power:+5V #PWR09
U 1 1 6016381B
P 9150 1390
F 0 "#PWR09" H 9150 1240 50  0001 C CNN
F 1 "+5V" H 9165 1563 50  0000 C CNN
F 2 "" H 9150 1390 50  0001 C CNN
F 3 "" H 9150 1390 50  0001 C CNN
	1    9150 1390
	1    0    0    -1  
$EndComp
Connection ~ 9150 1390
$Comp
L power:+5V #PWR02
U 1 1 601644A8
P 1450 2800
F 0 "#PWR02" H 1450 2650 50  0001 C CNN
F 1 "+5V" H 1465 2973 50  0000 C CNN
F 2 "" H 1450 2800 50  0001 C CNN
F 3 "" H 1450 2800 50  0001 C CNN
	1    1450 2800
	1    0    0    -1  
$EndComp
Text Label 4800 3250 2    50   ~ 0
~BG1
Text Label 4800 3350 2    50   ~ 0
~BG2
Text Label 4800 3450 2    50   ~ 0
~BG3
Text Label 4800 1550 2    50   ~ 0
~BG4
Text Label 4800 1650 2    50   ~ 0
~BG5
Text Label 4800 1750 2    50   ~ 0
~BR1
Text Label 4800 1850 2    50   ~ 0
~BR2
Text Label 4800 1950 2    50   ~ 0
~BR3
Text Label 4800 2050 2    50   ~ 0
~BR4
Text Label 4800 2150 2    50   ~ 0
~BR5
Text Label 4800 2250 2    50   ~ 0
~SLAVE1
Text Label 4800 2350 2    50   ~ 0
~SLAVE2
Text Label 4800 2450 2    50   ~ 0
~SLAVE3
Text Label 4800 2550 2    50   ~ 0
~SLAVE4
Text Label 4800 2650 2    50   ~ 0
~SLAVE5
Text Label 6400 1450 0    50   ~ 0
~BG
Text Label 4800 2750 2    50   ~ 0
~CDAC
Text Label 6400 1550 0    50   ~ 0
C1
Text Label 6400 1650 0    50   ~ 0
C3
Text Label 6400 1750 0    50   ~ 0
~C2
Text Label 6400 1850 0    50   ~ 0
~C4
Text Label 6400 1950 0    50   ~ 0
GBG
Text Label 4800 3750 2    50   ~ 0
DOE
Text Label 4800 3650 2    50   ~ 0
~DBOE
Text Label 4800 3550 2    50   ~ 0
D2P
Text Label 6400 4050 0    50   ~ 0
~RST
Text Label 6400 3950 0    50   ~ 0
~OWN
Text Label 6400 3850 0    50   ~ 0
~OVR
Text Label 6400 3750 0    50   ~ 0
~BOSS
Text Label 6400 3650 0    50   ~ 0
~UDS
Text Label 6400 3550 0    50   ~ 0
~LDS
Text Label 6400 3450 0    50   ~ 0
~AS
Text Label 6400 3350 0    50   ~ 0
READ
Text Label 6400 3250 0    50   ~ 0
~A23
Text Label 6400 3150 0    50   ~ 0
~A22
Text Label 6400 3050 0    50   ~ 0
~A21
Text Label 6400 2950 0    50   ~ 0
~A20
Text Label 6400 2750 0    50   ~ 0
~A19
Text Label 6400 2650 0    50   ~ 0
~CBG
Text Label 6400 2550 0    50   ~ 0
~CBR
Text Label 6400 2450 0    50   ~ 0
~BR
Text Label 6400 2350 0    50   ~ 0
~BEER
$EndSCHEMATC
