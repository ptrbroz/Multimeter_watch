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
$Comp
L Switch:SW_Push SW4
U 1 1 5F212C00
P 3200 3100
F 0 "SW4" V 3154 3248 50  0000 L CNN
F 1 "SW_Push" V 3245 3248 50  0000 L CNN
F 2 "" H 3200 3300 50  0001 C CNN
F 3 "~" H 3200 3300 50  0001 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 5F213BA8
P 3700 3100
F 0 "SW5" V 3654 3248 50  0000 L CNN
F 1 "SW_Push" V 3745 3248 50  0000 L CNN
F 2 "" H 3700 3300 50  0001 C CNN
F 3 "~" H 3700 3300 50  0001 C CNN
	1    3700 3100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5F214996
P 2700 3100
F 0 "SW3" V 2654 3248 50  0000 L CNN
F 1 "SW_Push" V 2745 3248 50  0000 L CNN
F 2 "" H 2700 3300 50  0001 C CNN
F 3 "~" H 2700 3300 50  0001 C CNN
	1    2700 3100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F2149A0
P 2200 3100
F 0 "SW2" V 2154 3248 50  0000 L CNN
F 1 "SW_Push" V 2245 3248 50  0000 L CNN
F 2 "" H 2200 3300 50  0001 C CNN
F 3 "~" H 2200 3300 50  0001 C CNN
	1    2200 3100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5F215E9C
P 4200 3100
F 0 "SW6" V 4154 3248 50  0000 L CNN
F 1 "SW_Push" V 4245 3248 50  0000 L CNN
F 2 "" H 4200 3300 50  0001 C CNN
F 3 "~" H 4200 3300 50  0001 C CNN
	1    4200 3100
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F215EA6
P 1700 3100
F 0 "SW1" V 1654 3248 50  0000 L CNN
F 1 "SW_Push" V 1745 3248 50  0000 L CNN
F 2 "" H 1700 3300 50  0001 C CNN
F 3 "~" H 1700 3300 50  0001 C CNN
	1    1700 3100
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
	1700 3300 2200 3300
Connection ~ 2200 3300
Wire Wire Line
	2200 3300 2700 3300
Connection ~ 2700 3300
Wire Wire Line
	2700 3300 3200 3300
Connection ~ 3200 3300
Wire Wire Line
	3200 3300 3700 3300
Connection ~ 3700 3300
Wire Wire Line
	3700 3300 4200 3300
$Comp
L Connector:Conn_01x16_Female J_placeholder2
U 1 1 5F206CC2
P 8000 3650
F 0 "J_placeholder2" H 8028 3626 50  0000 L CNN
F 1 "Conn_01x16_Female" H 8028 3535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 8000 3650 50  0001 C CNN
F 3 "~" H 8000 3650 50  0001 C CNN
	1    8000 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J_placeholder1
U 1 1 5F2097DB
P 6700 3650
F 0 "J_placeholder1" H 6728 3626 50  0000 L CNN
F 1 "Conn_01x16_Female" H 6728 3535 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 6700 3650 50  0001 C CNN
F 3 "~" H 6700 3650 50  0001 C CNN
	1    6700 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5F20B695
P 5250 4350
F 0 "J4" H 5358 4631 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5358 4540 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5250 4350 50  0001 C CNN
F 3 "~" H 5250 4350 50  0001 C CNN
	1    5250 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5F20C0E1
P 4600 4350
F 0 "J3" H 4708 4631 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4708 4540 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4600 4350 50  0001 C CNN
F 3 "~" H 4600 4350 50  0001 C CNN
	1    4600 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F20C473
P 3950 4350
F 0 "J2" H 4058 4631 50  0000 C CNN
F 1 "Conn_01x03_Male" H 4058 4540 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3950 4350 50  0001 C CNN
F 3 "~" H 3950 4350 50  0001 C CNN
	1    3950 4350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5F20C730
P 3200 4300
F 0 "J1" H 3308 4581 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3308 4490 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3200 4300 50  0001 C CNN
F 3 "~" H 3200 4300 50  0001 C CNN
	1    3200 4300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
