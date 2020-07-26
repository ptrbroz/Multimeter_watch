EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
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
Wire Wire Line
	700  1550 700  1750
Connection ~ 1400 950 
Wire Wire Line
	1400 950  1400 850 
Text Label 700  1750 0    47   ~ 0
PB0_TODO
Connection ~ 1400 1850
Wire Wire Line
	1400 1850 1050 1850
Wire Wire Line
	1400 1750 1400 1850
Connection ~ 1050 1550
Wire Wire Line
	1050 1550 1100 1550
Wire Wire Line
	1000 1550 1050 1550
$Comp
L Device:R R18
U 1 1 5F2B66F9
P 1050 1700
F 0 "R18" H 1120 1746 50  0000 L CNN
F 1 "100K" H 1120 1655 50  0000 L CNN
F 2 "" V 980 1700 50  0001 C CNN
F 3 "~" H 1050 1700 50  0001 C CNN
	1    1050 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5F2B529D
P 850 1550
F 0 "R17" V 643 1550 50  0000 C CNN
F 1 "10K" V 734 1550 50  0000 C CNN
F 2 "" V 780 1550 50  0001 C CNN
F 3 "~" H 850 1550 50  0001 C CNN
	1    850  1550
	0    1    1    0   
$EndComp
Connection ~ 1400 1250
Wire Wire Line
	1400 1250 1400 1350
$Comp
L Transistor_FET:2N7002E Q1
U 1 1 5F2AB4F3
P 1300 1550
F 0 "Q1" H 1505 1596 50  0000 L CNN
F 1 "A03400A N-MOS" H 1505 1505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1500 1475 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 1300 1550 50  0001 L CNN
	1    1300 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5F29BCA9
P 1100 1100
F 0 "D1" V 1050 950 50  0000 L CNN
F 1 "D_Schottky" V 1150 650 50  0000 L CNN
F 2 "" H 1100 1100 50  0001 C CNN
F 3 "~" H 1100 1100 50  0001 C CNN
	1    1100 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 950  1100 950 
Wire Wire Line
	1400 1250 1100 1250
Wire Wire Line
	1400 1200 1400 1250
Wire Wire Line
	1400 1000 1400 950 
$Comp
L Device:Buzzer B1
U 1 1 5F28AB82
P 1500 1100
F 0 "B1" H 1652 1129 50  0000 L CNN
F 1 "CMT-0502-75-SMT-TR" H 1652 1038 50  0000 L CNN
F 2 "" V 1475 1200 50  0001 C CNN
F 3 "~" V 1475 1200 50  0001 C CNN
	1    1500 1100
	1    0    0    -1  
$EndComp
Text Notes 1200 700  0    118  ~ 0
Buzzer\n
Wire Wire Line
	1400 850  1850 850 
Wire Wire Line
	1850 850  1850 1300
$Comp
L Device:C_Small C1
U 1 1 5F258A5E
P 1850 1400
F 0 "C1" H 1942 1446 50  0000 L CNN
F 1 "100n" H 1942 1355 50  0000 L CNN
F 2 "" H 1850 1400 50  0001 C CNN
F 3 "~" H 1850 1400 50  0001 C CNN
	1    1850 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1500 1850 1850
Wire Wire Line
	1400 1850 1850 1850
Text Label 1850 1850 0    50   ~ 0
GND
Wire Notes Line style dotted
	4650 6500 4350 6500
Wire Notes Line style dotted
	4650 5800 4650 6500
Wire Notes Line style dotted
	4350 5800 4650 5800
Wire Notes Line style dotted
	4350 6500 4350 5800
Text Label 2300 5700 0    50   ~ 0
TODO_GND
Text Label 2300 6100 0    50   ~ 0
SCL
Text Label 2300 6200 0    50   ~ 0
SDA
Wire Wire Line
	2300 5700 2200 5700
Wire Wire Line
	2300 5800 2200 5800
Wire Wire Line
	2300 5900 2200 5900
Wire Wire Line
	2300 6000 2200 6000
Wire Wire Line
	2300 6100 2200 6100
Wire Wire Line
	2300 6200 2200 6200
Wire Wire Line
	2300 6300 2200 6300
Wire Wire Line
	2300 6400 2200 6400
Wire Wire Line
	2300 6500 2200 6500
Text Label 4000 6800 2    50   ~ 0
PB0
Wire Wire Line
	2300 6600 2200 6600
Connection ~ 4200 5800
Wire Wire Line
	4200 5800 4200 5700
Wire Wire Line
	4200 5900 4200 5800
Connection ~ 4200 5900
Wire Wire Line
	4200 5900 4200 6000
Wire Wire Line
	4100 5900 4200 5900
Connection ~ 4200 6500
Wire Wire Line
	4200 6500 4200 6600
Wire Wire Line
	4200 6400 4200 6500
Wire Wire Line
	4200 6300 4200 6400
Connection ~ 4200 6400
Wire Wire Line
	4100 6400 4200 6400
Wire Wire Line
	4100 6200 4200 6200
Wire Wire Line
	4100 6100 4200 6100
Text Label 2300 6600 0    50   ~ 0
RESET
Text Label 2300 6300 0    50   ~ 0
VCC_HALF
Text Label 2300 6000 0    50   ~ 0
DACout
Text Label 2300 6400 0    50   ~ 0
SWC
Text Label 2300 6500 0    50   ~ 0
SWD
Text Label 2300 5800 0    50   ~ 0
ADC7
Text Label 2300 5900 0    50   ~ 0
ADC6
Text Label 4100 6200 2    50   ~ 0
D1
Text Label 4100 6100 2    50   ~ 0
D0
Text Label 4100 6400 2    50   ~ 0
GND
Text Label 4100 5900 2    50   ~ 0
VCC
Wire Wire Line
	2200 5600 2400 5600
Text Label 2400 6900 0    50   ~ 0
VCC
Wire Wire Line
	4200 5600 4000 5600
Text Label 4000 6900 2    50   ~ 0
GND
Wire Wire Line
	4200 5500 4000 5500
Wire Wire Line
	4200 5400 4000 5400
Wire Wire Line
	2200 5500 2400 5500
Wire Wire Line
	2400 5400 2200 5400
Wire Wire Line
	2400 6700 2200 6700
Wire Wire Line
	2200 6800 2400 6800
Wire Wire Line
	2400 6900 2200 6900
Wire Wire Line
	4200 6900 4000 6900
Wire Wire Line
	4000 6800 4200 6800
Wire Wire Line
	4200 6700 4000 6700
Text Label 2400 6800 0    50   ~ 0
PE4
Text Label 2400 5400 0    50   ~ 0
SCL
Text Label 4000 5400 2    50   ~ 0
SDA
Text Label 4000 6700 2    50   ~ 0
BUTT6
Text Label 4000 5600 2    50   ~ 0
BUTT5
Text Label 4000 5500 2    50   ~ 0
BUTT4
Text Label 2400 6700 0    50   ~ 0
BUTT3
Text Label 2400 5600 0    50   ~ 0
BUTT2
Text Label 2400 5500 0    50   ~ 0
BUTT1
$Comp
L Connector:Conn_01x16_Female J4
U 1 1 5F46892E
P 2000 6100
F 0 "J4" H 2450 6100 50  0000 C CNN
F 1 "Conn_01x16_Female" H 2400 5950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 2000 6100 50  0001 C CNN
F 3 "~" H 2000 6100 50  0001 C CNN
	1    2000 6100
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J5
U 1 1 5F44F8AA
P 4400 6100
F 0 "J5" H 4428 6076 50  0000 L CNN
F 1 "Conn_01x16_Female" H 4428 5985 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 4400 6100 50  0001 C CNN
F 3 "~" H 4400 6100 50  0001 C CNN
	1    4400 6100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F212C00
P 4650 1300
F 0 "SW?" V 4604 1448 50  0000 L CNN
F 1 "SW_Push" V 4695 1448 50  0000 L CNN
F 2 "" H 4650 1500 50  0001 C CNN
F 3 "~" H 4650 1500 50  0001 C CNN
	1    4650 1300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F213BA8
P 5150 1300
F 0 "SW?" V 5104 1448 50  0000 L CNN
F 1 "SW_Push" V 5195 1448 50  0000 L CNN
F 2 "" H 5150 1500 50  0001 C CNN
F 3 "~" H 5150 1500 50  0001 C CNN
	1    5150 1300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F214996
P 4150 1300
F 0 "SW?" V 4104 1448 50  0000 L CNN
F 1 "SW_Push" V 4195 1448 50  0000 L CNN
F 2 "" H 4150 1500 50  0001 C CNN
F 3 "~" H 4150 1500 50  0001 C CNN
	1    4150 1300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F2149A0
P 3650 1300
F 0 "SW?" V 3604 1448 50  0000 L CNN
F 1 "SW_Push" V 3695 1448 50  0000 L CNN
F 2 "" H 3650 1500 50  0001 C CNN
F 3 "~" H 3650 1500 50  0001 C CNN
	1    3650 1300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F215E9C
P 5650 1300
F 0 "SW?" V 5604 1448 50  0000 L CNN
F 1 "SW_Push" V 5695 1448 50  0000 L CNN
F 2 "" H 5650 1500 50  0001 C CNN
F 3 "~" H 5650 1500 50  0001 C CNN
	1    5650 1300
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5F215EA6
P 3150 1300
F 0 "SW?" V 3104 1448 50  0000 L CNN
F 1 "SW_Push" V 3195 1448 50  0000 L CNN
F 2 "" H 3150 1500 50  0001 C CNN
F 3 "~" H 3150 1500 50  0001 C CNN
	1    3150 1300
	0    1    1    0   
$EndComp
Wire Notes Line
	500  500  500  1950
Wire Notes Line
	500  1950 2700 1950
Wire Notes Line
	2700 1950 2700 500 
Wire Notes Line
	500  500  2700 500 
Wire Wire Line
	3150 1500 3650 1500
Connection ~ 3650 1500
Wire Wire Line
	3650 1500 4150 1500
Connection ~ 4150 1500
Wire Wire Line
	4150 1500 4650 1500
Connection ~ 4650 1500
Wire Wire Line
	4650 1500 5150 1500
Connection ~ 5150 1500
Wire Wire Line
	5150 1500 5650 1500
$EndSCHEMATC
