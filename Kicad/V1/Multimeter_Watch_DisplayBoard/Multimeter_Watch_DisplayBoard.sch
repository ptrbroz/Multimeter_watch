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
BUZZER
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 980 1700 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 780 1550 50  0001 C CNN
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
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1100 1100 50  0001 C CNN
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
F 2 "Multimeter_Watch_custom_footprints:CMT-0502-75-SMT-TR" V 1475 1200 50  0001 C CNN
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
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1850 1400 50  0001 C CNN
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
L Switch:SW_Push SW5
U 1 1 5F213BA8
P 2400 2850
F 0 "SW5" V 2354 2998 50  0000 L CNN
F 1 "SW_Push" V 2445 2998 50  0000 L CNN
F 2 "Multimeter_Watch_custom_footprints:TVCM04N" H 2400 3050 50  0001 C CNN
F 3 "~" H 2400 3050 50  0001 C CNN
	1    2400 2850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5F214996
P 1900 2850
F 0 "SW3" V 1854 2998 50  0000 L CNN
F 1 "SW_Push" V 1945 2998 50  0000 L CNN
F 2 "Multimeter_Watch_custom_footprints:TVCM04N" H 1900 3050 50  0001 C CNN
F 3 "~" H 1900 3050 50  0001 C CNN
	1    1900 2850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F2149A0
P 900 2850
F 0 "SW2" V 854 2998 50  0000 L CNN
F 1 "SW_Push" V 945 2998 50  0000 L CNN
F 2 "Multimeter_Watch_custom_footprints:TVCM04N" H 900 3050 50  0001 C CNN
F 3 "~" H 900 3050 50  0001 C CNN
	1    900  2850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 5F215E9C
P 3400 2850
F 0 "SW6" V 3354 2998 50  0000 L CNN
F 1 "SW_Push" V 3445 2998 50  0000 L CNN
F 2 "Multimeter_Watch_custom_footprints:TVCM04N" H 3400 3050 50  0001 C CNN
F 3 "~" H 3400 3050 50  0001 C CNN
	1    3400 2850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F215EA6
P 1400 2850
F 0 "SW1" V 1354 2998 50  0000 L CNN
F 1 "SW_Push" V 1445 2998 50  0000 L CNN
F 2 "Multimeter_Watch_custom_footprints:TVCM04N" H 1400 3050 50  0001 C CNN
F 3 "~" H 1400 3050 50  0001 C CNN
	1    1400 2850
	0    1    1    0   
$EndComp
Wire Notes Line
	2700 1950 2700 500 
Wire Wire Line
	900  3050 1400 3050
Connection ~ 1400 3050
Wire Wire Line
	1400 3050 1900 3050
Connection ~ 1900 3050
Wire Wire Line
	1900 3050 2100 3050
Connection ~ 2400 3050
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5F20B695
P 3750 1000
F 0 "J4" H 3400 1050 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3400 950 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 3750 1000 50  0001 C CNN
F 3 "~" H 3750 1000 50  0001 C CNN
	1    3750 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5F20C0E1
P 4800 1000
F 0 "J3" H 4772 932 50  0000 R CNN
F 1 "Conn_01x03_Male" H 4772 1023 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4800 1000 50  0001 C CNN
F 3 "~" H 4800 1000 50  0001 C CNN
	1    4800 1000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F20C473
P 5200 1700
F 0 "J2" H 5172 1632 50  0000 R CNN
F 1 "Conn_01x03_Male" H 5172 1723 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 5200 1700 50  0001 C CNN
F 3 "~" H 5200 1700 50  0001 C CNN
	1    5200 1700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5F20C730
P 4150 1700
F 0 "J1" H 3900 1800 50  0000 C CNN
F 1 "Conn_01x03_Male" H 3750 1700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x03_P2.54mm_Vertical" H 4150 1700 50  0001 C CNN
F 3 "~" H 4150 1700 50  0001 C CNN
	1    4150 1700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J_5
U 1 1 5F234314
P 5000 3050
F 0 "J_5" V 5154 2762 50  0000 R CNN
F 1 "Conn_01x04_Male" V 4850 3300 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    5000 3050
	0    -1   -1   0   
$EndComp
Text Label 5000 1700 2    50   ~ 0
SCL
Text Label 5000 1800 2    50   ~ 0
SDA
Text Label 3950 900  0    50   ~ 0
GND
Text Label 5000 900  0    50   ~ 0
VCC
Text Label 3950 1700 2    50   ~ 0
BUZZER
Text Label 3950 1800 2    50   ~ 0
ENABLE
Text Label 3950 1000 0    50   ~ 0
BUTT1
Text Label 3950 1100 0    50   ~ 0
BUTT2
Text Label 3950 1600 2    50   ~ 0
BUTT3
Text Label 5000 1000 0    50   ~ 0
BUTT4
Text Label 5000 1100 0    50   ~ 0
BUTT5
Text Label 5000 1600 2    50   ~ 0
BUTT6
Wire Wire Line
	2100 3050 2100 3450
Wire Wire Line
	2100 3450 2550 3450
Connection ~ 2100 3050
Wire Wire Line
	2100 3050 2400 3050
Text Label 2550 3450 0    50   ~ 0
GND
Text Label 4900 2850 1    50   ~ 0
GND
Text Label 5000 2850 1    50   ~ 0
ENABLE
Text Label 5100 2850 1    50   ~ 0
SCL
Text Label 5200 2850 1    50   ~ 0
SDA
Text Label 900  2650 1    50   ~ 0
BUTT1
Text Label 1400 2650 1    50   ~ 0
BUTT2
Text Label 1900 2650 1    50   ~ 0
BUTT3
Text Label 2400 2650 1    50   ~ 0
BUTT5
Text Label 3400 2650 1    50   ~ 0
BUTT6
Text Notes 3950 750  0    118  ~ 0
Connectors
Text Notes 1800 2300 0    118  ~ 0
Buttons
Text Notes 4750 2350 0    118  ~ 0
Display
Wire Notes Line
	500  1950 6000 1950
Wire Notes Line
	500  500  6000 500 
Wire Notes Line
	4100 1950 4100 3600
Wire Notes Line
	500  500  500  3600
Wire Notes Line
	6000 500  6000 3600
Wire Notes Line
	500  3600 6000 3600
Text Label 1850 850  0    50   ~ 0
VCC
Connection ~ 2900 3050
Wire Wire Line
	2900 3050 3400 3050
Wire Wire Line
	2400 3050 2900 3050
Text Label 2900 2650 1    50   ~ 0
BUTT4
$Comp
L Switch:SW_Push SW4
U 1 1 5F212C00
P 2900 2850
F 0 "SW4" V 2854 2998 50  0000 L CNN
F 1 "SW_Push" V 2945 2998 50  0000 L CNN
F 2 "Multimeter_Watch_custom_footprints:TVCM04N" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 2850
	0    1    1    0   
$EndComp
$EndSCHEMATC
