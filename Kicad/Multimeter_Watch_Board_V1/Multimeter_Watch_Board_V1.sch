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
$Comp
L Device:R R5
U 1 1 5F1B8235
P 2550 1050
F 0 "R5" V 2757 1050 50  0000 C CNN
F 1 "R" V 2666 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2480 1050 50  0001 C CNN
F 3 "~" H 2550 1050 50  0001 C CNN
	1    2550 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1BB837
P 2150 1050
F 0 "R4" V 2357 1050 50  0000 C CNN
F 1 "R" V 2266 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2080 1050 50  0001 C CNN
F 3 "~" H 2150 1050 50  0001 C CNN
	1    2150 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F1BCB28
P 1750 1050
F 0 "R3" V 1957 1050 50  0000 C CNN
F 1 "R" V 1866 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1680 1050 50  0001 C CNN
F 3 "~" H 1750 1050 50  0001 C CNN
	1    1750 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F1BD452
P 950 1050
F 0 "R1" V 1157 1050 50  0000 C CNN
F 1 "R" V 1066 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 880 1050 50  0001 C CNN
F 3 "~" H 950 1050 50  0001 C CNN
	1    950  1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1100 1050 1150 1050
Wire Wire Line
	1500 1050 1550 1050
Wire Wire Line
	2300 1050 2350 1050
Wire Wire Line
	2700 1050 2950 1050
Wire Wire Line
	800  1050 800  1150
Wire Wire Line
	800  1150 2950 1150
$Comp
L Device:R R2
U 1 1 5F1BCB32
P 1350 1050
F 0 "R2" V 1557 1050 50  0000 C CNN
F 1 "R" V 1466 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1280 1050 50  0001 C CNN
F 3 "~" H 1350 1050 50  0001 C CNN
	1    1350 1050
	0    -1   -1   0   
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:LGT8F328P-QFP32L CPU1
U 1 1 5F1CAE43
P 7250 4100
F 0 "CPU1" H 7944 4146 50  0000 L CNN
F 1 "LGT8F328P-QFP32L" H 7944 4055 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 7300 4050 50  0001 C CNN
F 3 "" H 7350 4050 50  0001 C CNN
	1    7250 4100
	1    0    0    -1  
$EndComp
Text Notes 2000 700  0    118  ~ 0
Voltage
Text Notes 3050 1700 0    118  ~ 0
Current
Wire Wire Line
	1150 1050 1150 1400
Connection ~ 1150 1050
Wire Wire Line
	1150 1050 1200 1050
Wire Wire Line
	1550 1050 1550 1400
Connection ~ 1550 1050
Wire Wire Line
	1550 1050 1600 1050
Wire Wire Line
	1900 1050 1950 1050
Wire Wire Line
	1950 1050 1950 1400
Connection ~ 1950 1050
Wire Wire Line
	1950 1050 2000 1050
Wire Wire Line
	2350 1050 2350 1400
Connection ~ 2350 1050
Wire Wire Line
	2350 1050 2400 1050
Text Label 1300 1400 0    47   ~ 0
PD3
Text Label 1700 1400 0    47   ~ 0
PD2
Text Label 2100 1400 0    47   ~ 0
ADC11
Text Label 900  1400 0    47   ~ 0
ADC10
Text Label 2600 2100 0    47   ~ 0
ADC2
Text Label 3000 2100 0    47   ~ 0
ADC3
Text Notes 750  1700 0    118  ~ 0
R/L/C/Universal\n
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J1
U 1 1 5F1E7FCE
P 3150 1050
F 0 "J1" H 2870 926 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 3700 1350 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 3150 1050 50  0001 C CNN
F 3 "~" H 3150 1050 50  0001 C CNN
	1    3150 1050
	-1   0    0    1   
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J2
U 1 1 5F1EA8B7
P 3450 2200
F 0 "J2" H 3170 2076 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 4000 2550 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 3450 2200 50  0001 C CNN
F 3 "~" H 3450 2200 50  0001 C CNN
	1    3450 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 2200 2600 2300
Wire Wire Line
	2600 2300 3250 2300
Wire Wire Line
	6900 3450 6900 3300
Wire Wire Line
	6900 3300 6800 3300
Text Label 6800 3300 0    47   ~ 0
PD2
Wire Wire Line
	6600 3750 6450 3750
Text Label 6450 3750 0    47   ~ 0
PD3
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J3
U 1 1 5F1F0F9B
P 2100 2200
F 0 "J3" H 1820 2076 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 2650 2550 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 2100 2200 50  0001 C CNN
F 3 "~" H 2100 2200 50  0001 C CNN
	1    2100 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	1900 2100 1550 2100
Text Label 1550 2100 0    47   ~ 0
DACout
$Comp
L Device:R R9
U 1 1 5F1F5ED9
P 950 2450
F 0 "R9" H 1020 2496 50  0000 L CNN
F 1 "470k" H 1020 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 880 2450 50  0001 C CNN
F 3 "~" H 950 2450 50  0001 C CNN
	1    950  2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F1F5EE3
P 1250 2450
F 0 "R10" H 1320 2496 50  0000 L CNN
F 1 "680" H 1320 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1180 2450 50  0001 C CNN
F 3 "~" H 1250 2450 50  0001 C CNN
	1    1250 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F1FA826
P 950 2050
F 0 "R7" H 1020 2096 50  0000 L CNN
F 1 "470k" H 1020 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 880 2050 50  0001 C CNN
F 3 "~" H 950 2050 50  0001 C CNN
	1    950  2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F1FA830
P 1250 2050
F 0 "R8" H 1320 2096 50  0000 L CNN
F 1 "680" H 1320 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1180 2050 50  0001 C CNN
F 3 "~" H 1250 2050 50  0001 C CNN
	1    1250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 2300 1250 2300
Wire Wire Line
	1250 2300 950  2300
Connection ~ 1250 2300
Wire Wire Line
	950  2300 650  2300
Wire Wire Line
	650  2300 650  2600
Connection ~ 950  2300
Wire Wire Line
	1900 2200 1250 2200
Wire Wire Line
	1250 2200 950  2200
Connection ~ 1250 2200
Wire Wire Line
	950  2200 650  2200
Wire Wire Line
	650  2200 650  1900
Connection ~ 950  2200
Text Label 950  1900 1    47   ~ 0
PB1
Text Label 1250 1900 1    47   ~ 0
PB2
Text Label 950  2600 3    47   ~ 0
PB3
Text Label 1250 2600 3    47   ~ 0
PB4
Text Label 650  2600 3    47   ~ 0
A7
Text Label 650  1900 1    47   ~ 0
A6
Wire Notes Line
	500  500  500  2800
Wire Notes Line
	500  2800 4200 2800
Wire Notes Line
	4200 2800 4200 500 
Wire Notes Line
	4200 500  500  500 
Wire Notes Line
	1950 1500 3150 1500
Wire Notes Line
	2550 1500 2550 1900
Wire Notes Line
	2550 2650 2550 2800
Wire Notes Line
	4000 1500 4200 1500
Wire Notes Line
	700  1500 500  1500
$Comp
L Device:Crystal Y1
U 1 1 5F21906D
P 5100 1250
F 0 "Y1" V 5054 1381 50  0000 L CNN
F 1 "32kHz" V 5145 1381 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 5100 1250 50  0001 C CNN
F 3 "~" H 5100 1250 50  0001 C CNN
	1    5100 1250
	0    1    1    0   
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:PCF85163-SO08 U1
U 1 1 5F21CC1C
P 6250 1300
F 0 "U1" H 6250 1659 47  0000 C CNN
F 1 "PCF85163-SO08" H 6250 1572 47  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm" H 6150 1250 47  0001 C CNN
F 3 "" H 6150 1250 47  0001 C CNN
	1    6250 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F2246FE
P 2800 2200
F 0 "R6" V 2593 2200 50  0000 C CNN
F 1 "R_shunt" V 2684 2200 50  0000 C CNN
F 2 "" V 2730 2200 50  0001 C CNN
F 3 "~" H 2800 2200 50  0001 C CNN
	1    2800 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 2200 2600 2200
Wire Wire Line
	2950 2200 3000 2200
Wire Wire Line
	3000 2200 3000 2100
Connection ~ 3000 2200
Wire Wire Line
	3000 2200 3250 2200
Wire Wire Line
	2600 2200 2600 2100
Connection ~ 2600 2200
$EndSCHEMATC
