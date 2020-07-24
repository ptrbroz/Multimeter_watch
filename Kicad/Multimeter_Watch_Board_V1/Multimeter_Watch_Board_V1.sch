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
P 2500 1050
F 0 "R5" V 2707 1050 50  0000 C CNN
F 1 "R" V 2616 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2430 1050 50  0001 C CNN
F 3 "~" H 2500 1050 50  0001 C CNN
	1    2500 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1BB837
P 2100 1050
F 0 "R4" V 2307 1050 50  0000 C CNN
F 1 "R" V 2216 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2030 1050 50  0001 C CNN
F 3 "~" H 2100 1050 50  0001 C CNN
	1    2100 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F1BCB28
P 1700 1050
F 0 "R3" V 1907 1050 50  0000 C CNN
F 1 "R" V 1816 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1630 1050 50  0001 C CNN
F 3 "~" H 1700 1050 50  0001 C CNN
	1    1700 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F1BD452
P 900 1050
F 0 "R1" V 1107 1050 50  0000 C CNN
F 1 "R" V 1016 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 830 1050 50  0001 C CNN
F 3 "~" H 900 1050 50  0001 C CNN
	1    900  1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1050 1050 1100 1050
Wire Wire Line
	1450 1050 1500 1050
Wire Wire Line
	2250 1050 2300 1050
Wire Wire Line
	2650 1050 2900 1050
Wire Wire Line
	750  1050 750  1150
Wire Wire Line
	750  1150 2900 1150
$Comp
L Device:R R2
U 1 1 5F1BCB32
P 1300 1050
F 0 "R2" V 1507 1050 50  0000 C CNN
F 1 "R" V 1416 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1230 1050 50  0001 C CNN
F 3 "~" H 1300 1050 50  0001 C CNN
	1    1300 1050
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
Text Notes 1600 700  0    118  ~ 0
Voltage
Text Notes 4100 700  0    118  ~ 0
Current
Wire Wire Line
	1100 1050 1100 1400
Connection ~ 1100 1050
Wire Wire Line
	1100 1050 1150 1050
Wire Wire Line
	1500 1050 1500 1400
Connection ~ 1500 1050
Wire Wire Line
	1500 1050 1550 1050
Wire Wire Line
	1850 1050 1900 1050
Wire Wire Line
	1900 1050 1900 1400
Connection ~ 1900 1050
Wire Wire Line
	1900 1050 1950 1050
Wire Wire Line
	2300 1050 2300 1400
Connection ~ 2300 1050
Wire Wire Line
	2300 1050 2350 1050
Text Label 1500 1400 0    47   ~ 0
PD3
Text Label 1900 1400 0    47   ~ 0
PD2
Text Label 2300 1400 0    47   ~ 0
ADC11
Text Label 1100 1400 0    47   ~ 0
ADC10
Text Label 3950 900  0    47   ~ 0
ADC2
Text Label 4150 900  0    47   ~ 0
ADC3
Text Notes 850  1750 0    118  ~ 0
R/L/C/Universal\n
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J1
U 1 1 5F1E7FCE
P 3100 1050
F 0 "J1" H 2820 926 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 3650 1250 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 3100 1050 50  0001 C CNN
F 3 "~" H 3100 1050 50  0001 C CNN
	1    3100 1050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Shunt R6
U 1 1 5F1C125C
P 4050 1050
F 0 "R6" V 3917 1050 50  0000 C CNN
F 1 "R_Shunt" V 3826 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 3980 1050 50  0001 C CNN
F 3 "~" H 4050 1050 50  0001 C CNN
	1    4050 1050
	0    -1   -1   0   
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J2
U 1 1 5F1EA8B7
P 4700 1050
F 0 "J2" H 4420 926 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 5150 1250 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 4700 1050 50  0001 C CNN
F 3 "~" H 4700 1050 50  0001 C CNN
	1    4700 1050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4500 1050 4250 1050
Wire Wire Line
	3850 1050 3850 1150
Wire Wire Line
	3850 1150 4500 1150
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
P 2200 2250
F 0 "J3" H 1920 2126 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 2700 2450 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 2200 2250 50  0001 C CNN
F 3 "~" H 2200 2250 50  0001 C CNN
	1    2200 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 2150 1650 2150
Text Label 1650 2150 0    47   ~ 0
DACout
$Comp
L Device:R R9
U 1 1 5F1F5ED9
P 1050 2500
F 0 "R9" H 1120 2546 50  0000 L CNN
F 1 "470k" H 1120 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 980 2500 50  0001 C CNN
F 3 "~" H 1050 2500 50  0001 C CNN
	1    1050 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F1F5EE3
P 1350 2500
F 0 "R10" H 1420 2546 50  0000 L CNN
F 1 "680" H 1420 2455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 2500 50  0001 C CNN
F 3 "~" H 1350 2500 50  0001 C CNN
	1    1350 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F1FA826
P 1050 2100
F 0 "R7" H 1120 2146 50  0000 L CNN
F 1 "470k" H 1120 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 980 2100 50  0001 C CNN
F 3 "~" H 1050 2100 50  0001 C CNN
	1    1050 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F1FA830
P 1350 2100
F 0 "R8" H 1420 2146 50  0000 L CNN
F 1 "680" H 1420 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 2100 50  0001 C CNN
F 3 "~" H 1350 2100 50  0001 C CNN
	1    1350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2350 1350 2350
Wire Wire Line
	1350 2350 1050 2350
Connection ~ 1350 2350
Wire Wire Line
	1050 2350 750  2350
Wire Wire Line
	750  2350 750  2650
Connection ~ 1050 2350
Wire Wire Line
	2000 2250 1350 2250
Wire Wire Line
	1350 2250 1050 2250
Connection ~ 1350 2250
Wire Wire Line
	1050 2250 750  2250
Wire Wire Line
	750  2250 750  1950
Connection ~ 1050 2250
Text Label 1050 1950 1    47   ~ 0
PB1
Text Label 1350 1950 1    47   ~ 0
PB2
Text Label 1050 2650 3    47   ~ 0
PB3
Text Label 1350 2650 3    47   ~ 0
PB4
Text Label 750  2650 3    47   ~ 0
A7
Text Label 750  1950 1    47   ~ 0
A6
$EndSCHEMATC
