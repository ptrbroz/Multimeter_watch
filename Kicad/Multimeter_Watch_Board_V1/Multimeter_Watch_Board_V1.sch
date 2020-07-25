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
P 6950 1050
F 0 "R5" V 7157 1050 50  0000 C CNN
F 1 "R" V 7066 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 1050 50  0001 C CNN
F 3 "~" H 6950 1050 50  0001 C CNN
	1    6950 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1BB837
P 6550 1050
F 0 "R4" V 6757 1050 50  0000 C CNN
F 1 "R" V 6666 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 1050 50  0001 C CNN
F 3 "~" H 6550 1050 50  0001 C CNN
	1    6550 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F1BCB28
P 6150 1050
F 0 "R3" V 6357 1050 50  0000 C CNN
F 1 "R" V 6266 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 1050 50  0001 C CNN
F 3 "~" H 6150 1050 50  0001 C CNN
	1    6150 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F1BD452
P 5350 1050
F 0 "R1" V 5557 1050 50  0000 C CNN
F 1 "R" V 5466 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 1050 50  0001 C CNN
F 3 "~" H 5350 1050 50  0001 C CNN
	1    5350 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 1050 5550 1050
Wire Wire Line
	5900 1050 5950 1050
Wire Wire Line
	6700 1050 6750 1050
Wire Wire Line
	7100 1050 7350 1050
Wire Wire Line
	5200 1050 5200 1150
Wire Wire Line
	5200 1150 7350 1150
$Comp
L Device:R R2
U 1 1 5F1BCB32
P 5750 1050
F 0 "R2" V 5957 1050 50  0000 C CNN
F 1 "R" V 5866 1050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 1050 50  0001 C CNN
F 3 "~" H 5750 1050 50  0001 C CNN
	1    5750 1050
	0    -1   -1   0   
$EndComp
Text Notes 6400 700  0    118  ~ 0
Voltage
Text Notes 7450 1700 0    118  ~ 0
Current
Wire Wire Line
	5550 1050 5550 1400
Connection ~ 5550 1050
Wire Wire Line
	5550 1050 5600 1050
Wire Wire Line
	5950 1050 5950 1400
Connection ~ 5950 1050
Wire Wire Line
	5950 1050 6000 1050
Wire Wire Line
	6300 1050 6350 1050
Wire Wire Line
	6350 1050 6350 1400
Connection ~ 6350 1050
Wire Wire Line
	6350 1050 6400 1050
Wire Wire Line
	6750 1050 6750 1400
Connection ~ 6750 1050
Wire Wire Line
	6750 1050 6800 1050
Text Label 5950 1400 0    47   ~ 0
PD3
Text Label 6350 1400 0    47   ~ 0
PD2
Text Label 6750 1400 0    47   ~ 0
ADC11
Text Label 7150 2100 1    47   ~ 0
ADC2
Text Label 7550 2100 1    47   ~ 0
ADC3
Text Notes 5150 1700 0    118  ~ 0
R/L/C/Universal\n
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J1
U 1 1 5F1E7FCE
P 7550 1050
F 0 "J1" H 7270 926 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 8100 1350 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 7550 1050 50  0001 C CNN
F 3 "~" H 7550 1050 50  0001 C CNN
	1    7550 1050
	-1   0    0    1   
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J2
U 1 1 5F1EA8B7
P 8000 2200
F 0 "J2" H 7720 2076 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 8700 2550 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 8000 2200 50  0001 C CNN
F 3 "~" H 8000 2200 50  0001 C CNN
	1    8000 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	7150 2200 7150 2300
Wire Wire Line
	2450 4900 2450 4750
Wire Wire Line
	2450 4750 2350 4750
Text Label 2350 4750 2    47   ~ 0
PD2
Wire Wire Line
	2150 5200 2000 5200
Text Label 2000 5200 2    47   ~ 0
PD3
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J3
U 1 1 5F1F0F9B
P 6500 2200
F 0 "J3" H 6220 2076 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 7050 2550 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 6500 2200 50  0001 C CNN
F 3 "~" H 6500 2200 50  0001 C CNN
	1    6500 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 2100 5950 2100
Text Label 5950 2100 0    47   ~ 0
DACout
$Comp
L Device:R R9
U 1 1 5F1F5ED9
P 5350 2450
F 0 "R9" H 5420 2496 50  0000 L CNN
F 1 "470k" H 5420 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5280 2450 50  0001 C CNN
F 3 "~" H 5350 2450 50  0001 C CNN
	1    5350 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F1F5EE3
P 5650 2450
F 0 "R10" H 5720 2496 50  0000 L CNN
F 1 "680" H 5720 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 2450 50  0001 C CNN
F 3 "~" H 5650 2450 50  0001 C CNN
	1    5650 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F1FA826
P 5350 2050
F 0 "R7" H 5420 2096 50  0000 L CNN
F 1 "470k" H 5420 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5280 2050 50  0001 C CNN
F 3 "~" H 5350 2050 50  0001 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F1FA830
P 5650 2050
F 0 "R8" H 5720 2096 50  0000 L CNN
F 1 "680" H 5720 2005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 2050 50  0001 C CNN
F 3 "~" H 5650 2050 50  0001 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2300 5650 2300
Wire Wire Line
	5650 2300 5350 2300
Connection ~ 5650 2300
Wire Wire Line
	5350 2300 5050 2300
Wire Wire Line
	5050 2300 5050 2600
Connection ~ 5350 2300
Wire Wire Line
	6300 2200 5650 2200
Wire Wire Line
	5650 2200 5350 2200
Connection ~ 5650 2200
Wire Wire Line
	5350 2200 5050 2200
Wire Wire Line
	5050 2200 5050 1900
Connection ~ 5350 2200
Text Label 5350 1900 1    47   ~ 0
PB1
Text Label 5650 1900 1    47   ~ 0
PB2
Text Label 5350 2600 3    47   ~ 0
PB3
Text Label 5650 2600 3    47   ~ 0
PB4
Text Label 5050 2600 3    47   ~ 0
ADC7
Text Label 5050 1900 1    47   ~ 0
ADC6
Wire Notes Line
	6350 1500 7550 1500
Wire Notes Line
	6950 1500 6950 1900
Wire Notes Line
	6950 2650 6950 2800
Wire Notes Line
	8400 1500 8600 1500
Wire Notes Line
	5100 1500 4900 1500
$Comp
L Device:Crystal Y1
U 1 1 5F21906D
P 6300 3200
F 0 "Y1" H 6300 3468 50  0000 C CNN
F 1 "32kHz" H 6300 3377 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 6300 3200 50  0001 C CNN
F 3 "~" H 6300 3200 50  0001 C CNN
	1    6300 3200
	1    0    0    -1  
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:PCF85163-SO08 U1
U 1 1 5F21CC1C
P 7000 3600
F 0 "U1" H 7000 3959 47  0000 C CNN
F 1 "PCF85163-SO08" H 7000 3872 47  0000 C CNN
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm" H 6900 3550 47  0001 C CNN
F 3 "" H 6900 3550 47  0001 C CNN
	1    7000 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F2246FE
P 7350 2200
F 0 "R6" V 7150 2200 50  0000 C CNN
F 1 "R_shunt" V 7250 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 7280 2200 50  0001 C CNN
F 3 "~" H 7350 2200 50  0001 C CNN
	1    7350 2200
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 2200 7150 2200
Wire Wire Line
	7500 2200 7550 2200
Wire Wire Line
	7550 2200 7550 2100
Connection ~ 7550 2200
Wire Wire Line
	7550 2200 7800 2200
Wire Wire Line
	7150 2200 7150 2100
Connection ~ 7150 2200
Wire Wire Line
	6550 3450 6450 3450
Wire Wire Line
	6450 3450 6450 3200
Wire Wire Line
	6150 3200 6150 3550
Wire Wire Line
	6150 3550 6550 3550
Wire Wire Line
	6550 3650 6150 3650
Text Label 6150 3650 0    47   ~ 0
Nk
Text Label 5300 1400 0    47   ~ 0
ADC10
Wire Wire Line
	7450 3450 7900 3450
$Comp
L Device:R R11
U 1 1 5F234AFA
P 7900 3600
F 0 "R11" H 7970 3646 50  0000 L CNN
F 1 "R" H 7970 3555 50  0000 L CNN
F 2 "" V 7830 3600 50  0001 C CNN
F 3 "~" H 7900 3600 50  0001 C CNN
	1    7900 3600
	1    0    0    -1  
$EndComp
Connection ~ 7900 3450
Wire Wire Line
	7900 3450 8150 3450
$Comp
L Device:R R12
U 1 1 5F2353C3
P 8150 3600
F 0 "R12" H 8220 3646 50  0000 L CNN
F 1 "R" H 8220 3555 50  0000 L CNN
F 2 "" V 8080 3600 50  0001 C CNN
F 3 "~" H 8150 3600 50  0001 C CNN
	1    8150 3600
	1    0    0    -1  
$EndComp
Connection ~ 8150 3450
Wire Wire Line
	7450 3650 7750 3650
Wire Wire Line
	7750 3650 7750 3850
Wire Wire Line
	7750 3850 7900 3850
Wire Wire Line
	8150 3450 8400 3450
Wire Wire Line
	7450 3750 7650 3750
Wire Wire Line
	7650 3750 7650 3950
Wire Wire Line
	7650 3950 8150 3950
Wire Wire Line
	7900 3750 7900 3850
Connection ~ 7900 3850
Wire Wire Line
	7900 3850 8400 3850
Wire Wire Line
	8150 3750 8150 3950
Connection ~ 8150 3950
Wire Wire Line
	8150 3950 8400 3950
Text Label 8400 3850 0    47   ~ 0
SCL
Text Label 8400 3950 0    47   ~ 0
SDA
Text Label 8400 3450 0    47   ~ 0
VCC
Wire Wire Line
	2550 4900 2550 4650
Wire Wire Line
	2550 4650 2350 4650
Wire Wire Line
	2650 4900 2650 4550
Wire Wire Line
	2650 4550 2350 4550
Wire Wire Line
	2750 4900 2750 4450
Wire Wire Line
	2750 4450 2350 4450
Wire Wire Line
	3150 4900 3150 4750
Wire Wire Line
	3150 4750 3250 4750
Wire Wire Line
	3050 4900 3050 4650
Wire Wire Line
	3050 4650 3250 4650
Wire Wire Line
	2950 4900 2950 4550
Wire Wire Line
	2950 4550 3250 4550
Wire Wire Line
	2850 4900 2850 4450
Wire Wire Line
	2850 4450 3250 4450
Text Label 3250 4550 0    47   ~ 0
SCL
Text Label 3250 4450 0    47   ~ 0
SDA
Text Notes 7000 3100 0    118  ~ 0
I2C/RTC\n
$Comp
L Multimeter_Watch_Custom_Symbols:AD8592 U2
U 1 1 5F24EA0E
P 9600 1650
F 0 "U2" H 10144 1694 47  0000 L CNN
F 1 "AD8592" H 10144 1607 47  0000 L CNN
F 2 "" H 9400 1850 47  0001 C CNN
F 3 "" H 9400 1850 47  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 950  9000 950 
Text Label 9000 950  0    47   ~ 0
PD4
Wire Wire Line
	10100 1150 10250 1150
Wire Wire Line
	10250 1150 10250 1500
Wire Wire Line
	10250 1500 9300 1500
Wire Wire Line
	9300 1500 9300 1350
Wire Wire Line
	9700 1350 9700 1700
Wire Wire Line
	9700 1700 9900 1700
Connection ~ 9700 1700
Wire Wire Line
	9700 1700 9700 1950
Text Label 9900 1700 0    47   ~ 0
PE4
Wire Wire Line
	9300 1950 9000 1950
$Comp
L Device:R R13
U 1 1 5F264882
P 9000 1800
F 0 "R13" H 9070 1846 50  0000 L CNN
F 1 "1M" H 9070 1755 50  0000 L CNN
F 2 "" V 8930 1800 50  0001 C CNN
F 3 "~" H 9000 1800 50  0001 C CNN
	1    9000 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 5F264F17
P 9000 2100
F 0 "R14" H 9070 2146 50  0000 L CNN
F 1 "1M" H 9070 2055 50  0000 L CNN
F 2 "" V 8930 2100 50  0001 C CNN
F 3 "~" H 9000 2100 50  0001 C CNN
	1    9000 2100
	1    0    0    -1  
$EndComp
Connection ~ 9000 1950
Wire Wire Line
	9000 1650 9000 1500
Text Label 9000 1500 0    47   ~ 0
VCC
Text Label 9600 750  0    47   ~ 0
VCC
Wire Wire Line
	10250 1150 10250 900 
Connection ~ 10250 1150
$Comp
L Device:R R15
U 1 1 5F269114
P 10400 1150
F 0 "R15" V 10193 1150 50  0000 C CNN
F 1 "R" V 10284 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 10330 1150 50  0001 C CNN
F 3 "~" H 10400 1150 50  0001 C CNN
	1    10400 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	10550 1150 10550 900 
Wire Wire Line
	10550 1150 10750 1150
Connection ~ 10550 1150
Text Label 10750 1150 0    47   ~ 0
DACout
Text Label 10550 900  0    47   ~ 0
ADC1
Text Label 10250 900  0    47   ~ 0
ADC0
$Comp
L Device:R R16
U 1 1 5F26D33E
P 10400 2150
F 0 "R16" V 10193 2150 50  0000 C CNN
F 1 "30" V 10284 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 10330 2150 50  0001 C CNN
F 3 "~" H 10400 2150 50  0001 C CNN
	1    10400 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 2150 10100 2150
Wire Wire Line
	10550 2150 10550 2750
Wire Wire Line
	10550 2750 9300 2750
Wire Wire Line
	9300 2750 9300 2350
Wire Wire Line
	10550 2150 10750 2150
Connection ~ 10550 2150
Text Label 10750 2150 0    47   ~ 0
VCC_HALF
Text Notes 9800 700  0    118  ~ 0
DAC
Wire Notes Line
	4900 2800 11200 2800
Wire Notes Line
	4900 500  11200 500 
Wire Wire Line
	8950 3650 8950 3850
Text Label 9650 2950 0    47   ~ 0
VCC
Connection ~ 9650 3050
Wire Wire Line
	9650 3050 9650 2950
Text Label 8950 3850 0    47   ~ 0
PB0
Text Label 9750 3950 0    47   ~ 0
TODO_GND
Connection ~ 9650 3950
Wire Wire Line
	9650 3950 9750 3950
Wire Wire Line
	9650 3950 9300 3950
Wire Wire Line
	9650 3850 9650 3950
Connection ~ 9300 3650
Wire Wire Line
	9300 3650 9350 3650
Wire Wire Line
	9250 3650 9300 3650
$Comp
L Device:R R18
U 1 1 5F2B66F9
P 9300 3800
F 0 "R18" H 9370 3846 50  0000 L CNN
F 1 "100K" H 9370 3755 50  0000 L CNN
F 2 "" V 9230 3800 50  0001 C CNN
F 3 "~" H 9300 3800 50  0001 C CNN
	1    9300 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R17
U 1 1 5F2B529D
P 9100 3650
F 0 "R17" V 8893 3650 50  0000 C CNN
F 1 "10K" V 8984 3650 50  0000 C CNN
F 2 "" V 9030 3650 50  0001 C CNN
F 3 "~" H 9100 3650 50  0001 C CNN
	1    9100 3650
	0    1    1    0   
$EndComp
Connection ~ 9650 3350
Wire Wire Line
	9650 3350 9650 3450
$Comp
L Transistor_FET:2N7002E Q1
U 1 1 5F2AB4F3
P 9550 3650
F 0 "Q1" H 9755 3696 50  0000 L CNN
F 1 "A03400A N-MOS" H 9755 3605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9750 3575 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 9550 3650 50  0001 L CNN
	1    9550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5F29BCA9
P 9350 3200
F 0 "D1" V 9300 3050 50  0000 L CNN
F 1 "D_Schottky" V 9400 2750 50  0000 L CNN
F 2 "" H 9350 3200 50  0001 C CNN
F 3 "~" H 9350 3200 50  0001 C CNN
	1    9350 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 3050 9350 3050
Wire Wire Line
	9650 3350 9350 3350
Wire Wire Line
	9650 3300 9650 3350
Wire Wire Line
	9650 3100 9650 3050
$Comp
L Device:Buzzer B1
U 1 1 5F28AB82
P 9750 3200
F 0 "B1" H 9902 3229 50  0000 L CNN
F 1 "CMT-0502-75-SMT-TR" H 9902 3138 50  0000 L CNN
F 2 "" V 9725 3300 50  0001 C CNN
F 3 "~" V 9725 3300 50  0001 C CNN
	1    9750 3200
	1    0    0    -1  
$EndComp
Wire Notes Line
	4900 500  4900 4050
Wire Notes Line
	8600 500  8600 4050
Wire Notes Line
	11200 500  11200 4050
Wire Notes Line
	4900 4050 11200 4050
Text Notes 10100 3050 0    118  ~ 0
Buzzer\n
Wire Wire Line
	6550 3750 6250 3750
Wire Wire Line
	6250 3750 6250 3900
Text Label 6250 3900 0    47   ~ 0
TODO_GND
Text Label 9000 2700 0    47   ~ 0
TODO_GND
Text Label 6500 1900 0    47   ~ 0
TODO_GND
Text Label 8000 1900 0    47   ~ 0
TODO_GND
Text Label 7550 750  0    47   ~ 0
TODO_GND
Wire Wire Line
	9000 2250 9000 2550
Wire Wire Line
	9600 2550 9000 2550
Connection ~ 9000 2550
Wire Wire Line
	9000 2550 9000 2700
Wire Wire Line
	3150 6200 3150 6350
Wire Wire Line
	3150 6350 3250 6350
Wire Wire Line
	3050 6200 3050 6450
Wire Wire Line
	3050 6450 3250 6450
Wire Wire Line
	2950 6200 2950 6550
Wire Wire Line
	2950 6550 3250 6550
Wire Wire Line
	2850 6200 2850 6650
Wire Wire Line
	2850 6650 3250 6650
Wire Wire Line
	2450 6200 2450 6350
Wire Wire Line
	2450 6350 2350 6350
Wire Wire Line
	2550 6200 2550 6450
Wire Wire Line
	2550 6450 2350 6450
Wire Wire Line
	2650 6200 2650 6550
Wire Wire Line
	2650 6550 2350 6550
Wire Wire Line
	2750 6200 2750 6650
Wire Wire Line
	2750 6650 2350 6650
Text Label 3250 6450 0    50   ~ 0
PB3
Text Label 3250 6350 0    50   ~ 0
PB4
Text Label 3250 6550 0    50   ~ 0
PB2
Text Label 3250 6650 0    50   ~ 0
PB1
Text Label 3600 5700 0    50   ~ 0
ADC6
$Comp
L Multimeter_Watch_Custom_Symbols:LGT8F328P-QFP32L CPU1
U 1 1 5F1CAE43
P 2800 5550
F 0 "CPU1" H 3350 5050 50  0000 L CNN
F 1 "LGT8F328P-QFP32L" H 3350 4950 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2850 5500 50  0001 C CNN
F 3 "" H 2900 5500 50  0001 C CNN
	1    2800 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5700 3600 5700
Wire Wire Line
	3450 5800 3600 5800
Wire Wire Line
	3450 5900 3600 5900
Wire Wire Line
	3450 5400 3600 5400
Wire Wire Line
	3450 5500 3600 5500
Wire Wire Line
	3450 5600 3600 5600
Wire Wire Line
	3450 5200 3600 5200
Wire Wire Line
	3450 5300 3600 5300
Wire Wire Line
	2150 5500 2000 5500
Wire Wire Line
	2150 5400 2000 5400
Wire Wire Line
	2150 5300 2000 5300
Wire Wire Line
	2150 5800 2000 5800
Wire Wire Line
	2150 5700 2000 5700
Wire Wire Line
	2150 5600 2000 5600
Wire Wire Line
	2150 5900 2000 5900
Text Label 3600 5400 0    50   ~ 0
ADC7
Text Label 3600 5600 0    50   ~ 0
AD10
Text Label 3600 5900 0    50   ~ 0
AD11
Text Label 3600 5300 0    50   ~ 0
ADC0
Text Label 3600 5200 0    50   ~ 0
ADC1
Text Label 2350 6650 2    50   ~ 0
PB0
Text Label 2000 5400 2    50   ~ 0
PE4
Text Label 2000 5300 2    50   ~ 0
PD4
Text Label 2000 5700 2    50   ~ 0
BUTT1
Text Label 2000 5800 2    50   ~ 0
BUTT2
Text Label 2000 5900 2    50   ~ 0
BUTT3
Text Label 2350 6350 2    50   ~ 0
BUTT4
Text Label 2350 6450 2    50   ~ 0
BUTT5
Text Label 2350 6550 2    50   ~ 0
BUTT6
Text Label 3250 4650 0    50   ~ 0
ADC3
Text Label 3250 4750 0    50   ~ 0
ADC2
$Comp
L Device:Fuse F1
U 1 1 5F402451
P 7650 2300
F 0 "F1" V 7750 2300 50  0000 C CNN
F 1 "Fuse" V 7800 2300 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7580 2300 50  0001 C CNN
F 3 "~" H 7650 2300 50  0001 C CNN
	1    7650 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2300 7150 2300
$Comp
L Device:Battery_Cell BT?
U 1 1 5F40C910
P 5250 3600
F 0 "BT?" H 5368 3696 50  0000 L CNN
F 1 "Some Li-Po?" H 5368 3605 50  0000 L CNN
F 2 "" V 5250 3660 50  0001 C CNN
F 3 "~" V 5250 3660 50  0001 C CNN
	1    5250 3600
	1    0    0    -1  
$EndComp
Wire Notes Line
	6100 2800 6100 4050
Text Notes 5200 3050 0    118  ~ 0
Battery
Wire Wire Line
	5250 3400 5250 3300
Wire Wire Line
	5250 3300 5500 3300
Wire Wire Line
	5250 3800 5500 3800
Text Label 5500 3800 0    50   ~ 0
TODO_GND
Text Label 5500 3300 0    50   ~ 0
VCC
Text Label 2000 5600 2    50   ~ 0
TODO_GND
Text Label 2000 5500 2    50   ~ 0
VCC
Wire Wire Line
	5250 3700 5250 3800
$Comp
L Connector:Conn_01x16_Female J1
U 1 1 5F44F8AA
P 10200 5200
F 0 "J1" H 10228 5176 50  0000 L CNN
F 1 "Conn_01x16_Female" H 10228 5085 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 10200 5200 50  0001 C CNN
F 3 "~" H 10200 5200 50  0001 C CNN
	1    10200 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J2
U 1 1 5F46892E
P 7800 5200
F 0 "J2" H 8250 5200 50  0000 C CNN
F 1 "Conn_01x16_Female" H 8200 5050 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 7800 5200 50  0001 C CNN
F 3 "~" H 7800 5200 50  0001 C CNN
	1    7800 5200
	-1   0    0    -1  
$EndComp
Text Label 8200 4600 0    50   ~ 0
BUTT1
Text Label 8200 4700 0    50   ~ 0
BUTT2
Text Label 8200 5800 0    50   ~ 0
BUTT3
Text Label 9800 4600 2    50   ~ 0
BUTT4
Text Label 9800 4700 2    50   ~ 0
BUTT5
Text Label 9800 5800 2    50   ~ 0
BUTT6
Text Label 9800 4500 2    50   ~ 0
SDA
Text Label 8200 4500 0    50   ~ 0
SCL
Text Label 8200 5900 0    50   ~ 0
PE4
Wire Wire Line
	10000 5800 9800 5800
Wire Wire Line
	9800 5900 10000 5900
Wire Wire Line
	10000 6000 9800 6000
Wire Wire Line
	8200 6000 8000 6000
Wire Wire Line
	8000 5900 8200 5900
Wire Wire Line
	8200 5800 8000 5800
Wire Wire Line
	8200 4500 8000 4500
Wire Wire Line
	8000 4600 8200 4600
Wire Wire Line
	10000 4500 9800 4500
Wire Wire Line
	10000 4600 9800 4600
Text Label 9800 6000 2    50   ~ 0
TODO_GND
Wire Wire Line
	10000 4700 9800 4700
Text Label 8200 6000 0    50   ~ 0
VCC
Wire Wire Line
	8000 4700 8200 4700
Text Label 9900 5000 2    50   ~ 0
VCC
Text Label 9900 5500 2    50   ~ 0
TODO_GND
Text Label 9900 5200 2    50   ~ 0
D0
Text Label 9900 5300 2    50   ~ 0
D1
Text Label 8100 5000 0    50   ~ 0
ADC6
Text Label 8100 4900 0    50   ~ 0
ADC7
Text Label 3600 5500 0    50   ~ 0
SWD
Text Label 3600 5800 0    50   ~ 0
SWC
Text Label 8100 5600 0    50   ~ 0
SWD
Text Label 8100 5500 0    50   ~ 0
SWC
Text Label 8100 5100 0    50   ~ 0
DACout
Text Label 8100 5400 0    50   ~ 0
VCC_HALF
Text Label 2350 4450 2    50   ~ 0
RESET
Text Label 8100 5700 0    50   ~ 0
RESET
Text Label 2350 4550 2    50   ~ 0
D0
Text Label 2350 4650 2    50   ~ 0
D1
Wire Wire Line
	9900 5200 10000 5200
Wire Wire Line
	9900 5300 10000 5300
Wire Wire Line
	9900 5500 10000 5500
Connection ~ 10000 5500
Wire Wire Line
	10000 5400 10000 5500
Wire Wire Line
	10000 5500 10000 5600
Wire Wire Line
	10000 5600 10000 5700
Connection ~ 10000 5600
Wire Wire Line
	9900 5000 10000 5000
Wire Wire Line
	10000 5000 10000 5100
Connection ~ 10000 5000
Wire Wire Line
	10000 5000 10000 4900
Wire Wire Line
	10000 4900 10000 4800
Connection ~ 10000 4900
Wire Wire Line
	8100 5700 8000 5700
Text Label 9800 5900 2    50   ~ 0
BUZZER
Wire Wire Line
	8100 5600 8000 5600
Wire Wire Line
	8100 5500 8000 5500
Wire Wire Line
	8100 5400 8000 5400
Wire Wire Line
	8100 5300 8000 5300
Wire Wire Line
	8100 5200 8000 5200
Wire Wire Line
	8100 5100 8000 5100
Wire Wire Line
	8100 5000 8000 5000
Wire Wire Line
	8100 4900 8000 4900
Wire Wire Line
	8100 4800 8000 4800
Text Label 8100 5300 0    50   ~ 0
SDA
Text Label 8100 5200 0    50   ~ 0
SCL
Text Label 8100 4800 0    50   ~ 0
TODO_GND
Wire Notes Line style dotted
	10150 5600 10150 4900
Wire Notes Line style dotted
	10150 4900 10450 4900
Wire Notes Line style dotted
	10450 4900 10450 5600
Wire Notes Line style dotted
	10450 5600 10150 5600
$EndSCHEMATC
