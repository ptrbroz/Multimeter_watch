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
P 6950 950
F 0 "R5" V 7157 950 50  0000 C CNN
F 1 "1M" V 7066 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6880 950 50  0001 C CNN
F 3 "~" H 6950 950 50  0001 C CNN
	1    6950 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F1BB837
P 6550 950
F 0 "R4" V 6757 950 50  0000 C CNN
F 1 "100k" V 6666 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6480 950 50  0001 C CNN
F 3 "~" H 6550 950 50  0001 C CNN
	1    6550 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F1BCB28
P 6150 950
F 0 "R3" V 6357 950 50  0000 C CNN
F 1 "1.43M" V 6266 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6080 950 50  0001 C CNN
F 3 "~" H 6150 950 50  0001 C CNN
	1    6150 950 
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F1BD452
P 5350 950
F 0 "R1" V 5557 950 50  0000 C CNN
F 1 "1M" V 5466 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5280 950 50  0001 C CNN
F 3 "~" H 5350 950 50  0001 C CNN
	1    5350 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 950  5550 950 
Wire Wire Line
	5900 950  5950 950 
Wire Wire Line
	6700 950  6750 950 
Wire Wire Line
	5200 950  5200 1050
$Comp
L Device:R R2
U 1 1 5F1BCB32
P 5750 950
F 0 "R2" V 5957 950 50  0000 C CNN
F 1 "100k" V 5866 950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 950 50  0001 C CNN
F 3 "~" H 5750 950 50  0001 C CNN
	1    5750 950 
	0    -1   -1   0   
$EndComp
Text Notes 6400 700  0    118  ~ 0
Voltage
Text Notes 5450 1650 0    118  ~ 0
Current
Wire Wire Line
	5550 950  5550 1300
Connection ~ 5550 950 
Wire Wire Line
	5550 950  5600 950 
Wire Wire Line
	5950 950  5950 1300
Connection ~ 5950 950 
Wire Wire Line
	5950 950  6000 950 
Wire Wire Line
	6300 950  6350 950 
Wire Wire Line
	6350 950  6350 1300
Connection ~ 6350 950 
Wire Wire Line
	6350 950  6400 950 
Wire Wire Line
	6750 950  6750 1300
Connection ~ 6750 950 
Wire Wire Line
	6750 950  6800 950 
Text Label 10500 900  1    47   ~ 0
ADC2
Text Label 10900 900  1    47   ~ 0
ADC3
Text Notes 6800 1750 0    118  ~ 0
R/L/C/Universal\n
Wire Wire Line
	5050 2000 5050 2100
Text Label 7650 3600 3    47   ~ 0
DACout
$Comp
L Device:R R9
U 1 1 5F1F5ED9
P 5550 3650
F 0 "R9" H 5620 3696 50  0000 L CNN
F 1 "470k" H 5620 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 3650 50  0001 C CNN
F 3 "~" H 5550 3650 50  0001 C CNN
	1    5550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F1F5EE3
P 5850 3650
F 0 "R10" H 5920 3696 50  0000 L CNN
F 1 "680" H 5920 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 3650 50  0001 C CNN
F 3 "~" H 5850 3650 50  0001 C CNN
	1    5850 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F1FA826
P 5550 3250
F 0 "R7" H 5620 3296 50  0000 L CNN
F 1 "470k" H 5620 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5480 3250 50  0001 C CNN
F 3 "~" H 5550 3250 50  0001 C CNN
	1    5550 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F1FA830
P 5850 3250
F 0 "R8" H 5920 3296 50  0000 L CNN
F 1 "680" H 5920 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5780 3250 50  0001 C CNN
F 3 "~" H 5850 3250 50  0001 C CNN
	1    5850 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5550 3500
Connection ~ 5850 3500
Wire Wire Line
	5550 3500 5250 3500
Wire Wire Line
	5250 3500 5250 3800
Connection ~ 5550 3500
Wire Wire Line
	5850 3400 5550 3400
Connection ~ 5850 3400
Wire Wire Line
	5550 3400 5250 3400
Wire Wire Line
	5250 3400 5250 3100
Connection ~ 5550 3400
Text Label 5550 3800 3    47   ~ 0
PB1
Text Label 5850 3800 3    47   ~ 0
PB2
Text Label 5850 3100 1    47   ~ 0
PB3
Text Label 5550 3100 1    47   ~ 0
PB4
Text Label 5550 1300 0    47   ~ 0
ADC7
Text Label 5250 3800 3    47   ~ 0
ADC6
$Comp
L Device:Crystal Y1
U 1 1 5F21906D
P 5300 4350
F 0 "Y1" H 5500 4550 50  0000 C CNN
F 1 "32kHz" H 5500 4450 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 5300 4350 50  0001 C CNN
F 3 "~" H 5300 4350 50  0001 C CNN
	1    5300 4350
	1    0    0    -1  
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:PCF85163-SO08 U1
U 1 1 5F21CC1C
P 6000 4750
F 0 "U1" H 6000 5109 47  0000 C CNN
F 1 "PCF85163-SO08" H 6000 5022 47  0000 C CNN
F 2 "Package_SO:SOIC-8-N7_3.9x4.9mm_P1.27mm" H 5900 4700 47  0001 C CNN
F 3 "" H 5900 4700 47  0001 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F2246FE
P 5250 2000
F 0 "R6" V 5050 2000 50  0000 C CNN
F 1 "100m" V 5150 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 5180 2000 50  0001 C CNN
F 3 "~" H 5250 2000 50  0001 C CNN
	1    5250 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 2000 5050 2000
Wire Wire Line
	5050 2000 5050 1900
Connection ~ 5050 2000
Wire Wire Line
	5550 4600 5450 4600
Wire Wire Line
	5450 4600 5450 4350
Wire Wire Line
	5150 4350 5150 4700
Wire Wire Line
	5150 4700 5550 4700
Text Label 6750 1300 0    47   ~ 0
ADC10
Wire Wire Line
	6450 4600 6550 4600
$Comp
L Device:R R11
U 1 1 5F234AFA
P 10300 3500
F 0 "R11" H 10370 3546 50  0000 L CNN
F 1 "4k7" H 10370 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10230 3500 50  0001 C CNN
F 3 "~" H 10300 3500 50  0001 C CNN
	1    10300 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F2353C3
P 10600 3500
F 0 "R12" H 10670 3546 50  0000 L CNN
F 1 "4k7" H 10670 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10530 3500 50  0001 C CNN
F 3 "~" H 10600 3500 50  0001 C CNN
	1    10600 3500
	1    0    0    -1  
$EndComp
Text Label 6650 4800 0    47   ~ 0
SCL
Text Label 6650 4900 0    47   ~ 0
SDA
Text Label 6650 4600 0    47   ~ 0
VCC
Text Notes 5850 4300 0    118  ~ 0
RTC\n
Wire Wire Line
	9300 950  9000 950 
Text Label 9000 950  0    47   ~ 0
PD4
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
PD3
Wire Wire Line
	9300 1950 9000 1950
$Comp
L Device:R R13
U 1 1 5F264882
P 9000 1800
F 0 "R13" H 9070 1846 50  0000 L CNN
F 1 "1M" H 9070 1755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 1800 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8930 2100 50  0001 C CNN
F 3 "~" H 9000 2100 50  0001 C CNN
	1    9000 2100
	1    0    0    -1  
$EndComp
Connection ~ 9000 1950
Wire Wire Line
	9000 1650 9000 1500
Text Label 9000 1500 0    47   ~ 0
VCC
Text Label 9600 650  0    47   ~ 0
VCC
Wire Wire Line
	10500 1150 10500 900 
Connection ~ 10500 1150
$Comp
L Device:R R15
U 1 1 5F269114
P 10650 1150
F 0 "R15" V 10443 1150 50  0000 C CNN
F 1 "30" V 10534 1150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 10580 1150 50  0001 C CNN
F 3 "~" H 10650 1150 50  0001 C CNN
	1    10650 1150
	0    1    1    0   
$EndComp
Wire Wire Line
	10800 1150 10800 900 
Wire Wire Line
	10800 1150 10900 1150
Connection ~ 10800 1150
Text Label 11000 1150 1    47   ~ 0
DACout
Text Label 5050 1900 1    47   ~ 0
ADC1
Text Label 5450 1900 1    47   ~ 0
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
	10250 2150 10150 2150
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
Wire Wire Line
	5550 4900 5500 4900
Wire Wire Line
	5250 4900 5250 5050
Text Label 5250 5050 0    47   ~ 0
GND
Text Label 9000 2700 0    47   ~ 0
GND
Wire Wire Line
	9000 2250 9000 2550
Wire Wire Line
	9600 2550 9000 2550
Connection ~ 9000 2550
Wire Wire Line
	9000 2550 9000 2700
$Comp
L Device:Fuse F1
U 1 1 5F402451
P 5650 2000
F 0 "F1" V 5450 2000 50  0000 C CNN
F 1 "Fuse" V 5550 2000 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5580 2000 50  0001 C CNN
F 3 "~" H 5650 2000 50  0001 C CNN
	1    5650 2000
	0    1    1    0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F40C910
P 9950 6000
F 0 "BT1" H 10068 6096 50  0000 L CNN
F 1 "Some Li-Po?" H 10068 6005 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0210_1x02_P1.25mm_Vertical" V 9950 6060 50  0001 C CNN
F 3 "~" V 9950 6060 50  0001 C CNN
	1    9950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9950 5800 9950 5700
Wire Wire Line
	9950 5700 10200 5700
Wire Wire Line
	9950 6200 10200 6200
Text Label 10200 6200 0    50   ~ 0
GND
Text Label 10200 5700 0    50   ~ 0
VCC
Wire Wire Line
	9950 6100 9950 6200
$Comp
L Device:C_Small C1
U 1 1 5F1FEE03
P 5950 5100
F 0 "C1" V 5750 5100 50  0000 C CNN
F 1 "100n" V 5850 5100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5950 5100 50  0001 C CNN
F 3 "~" H 5950 5100 50  0001 C CNN
	1    5950 5100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6050 5100 6550 5100
Wire Wire Line
	6550 5100 6550 4600
Wire Wire Line
	5850 5100 5500 5100
Wire Wire Line
	5500 5100 5500 4900
Connection ~ 5500 4900
Wire Wire Line
	5500 4900 5250 4900
Wire Wire Line
	9600 650  9600 700 
Wire Notes Line
	11200 500  11200 6500
$Comp
L Device:C_Small C2
U 1 1 5F2393CF
P 8800 950
F 0 "C2" V 8600 950 50  0000 C CNN
F 1 "100n" V 8700 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8800 950 50  0001 C CNN
F 3 "~" H 8800 950 50  0001 C CNN
	1    8800 950 
	1    0    0    -1  
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:AD8592 U2
U 1 1 5F24EA0E
P 9600 1650
F 0 "U2" H 10144 1694 47  0000 L CNN
F 1 "AD8592" H 10144 1607 47  0000 L CNN
F 2 "Package_SO:MSOP-10_3x3mm_P0.5mm" H 9400 1850 47  0001 C CNN
F 3 "" H 9400 1850 47  0001 C CNN
	1    9600 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 700  8800 700 
Wire Wire Line
	8800 700  8800 850 
Connection ~ 9600 700 
Wire Wire Line
	9600 700  9600 750 
Wire Wire Line
	8800 1050 8800 2550
Wire Wire Line
	8800 2550 9000 2550
Wire Wire Line
	10900 1500 10900 1150
Connection ~ 10900 1150
Wire Wire Line
	10900 1150 11000 1150
Text Label 8750 4950 0    50   ~ 0
GND
Text Label 8750 5150 0    50   ~ 0
VCC_HALF
Text Label 8750 5450 0    50   ~ 0
DACout
Text Label 8750 5550 0    50   ~ 0
SWD
Text Label 8750 5350 0    50   ~ 0
ADC6
Text Label 8750 5250 0    50   ~ 0
ADC3
Text Label 5950 1300 0    50   ~ 0
PD7
Wire Wire Line
	5500 2000 5450 2000
Wire Wire Line
	5450 2000 5450 1900
Connection ~ 5450 2000
Wire Wire Line
	5450 2000 5400 2000
Wire Wire Line
	5050 2100 5800 2100
Text Label 6350 1300 0    50   ~ 0
PB0
Wire Wire Line
	5200 1050 7350 1050
Wire Wire Line
	7350 950  7100 950 
Connection ~ 1400 2650
Wire Wire Line
	1400 2550 1400 2650
Connection ~ 1400 2250
Wire Wire Line
	1400 2350 1400 2250
$Comp
L Device:C_Small C3
U 1 1 5F284FFC
P 1400 2450
F 0 "C3" V 1200 2450 50  0000 C CNN
F 1 "100n" V 1300 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1400 2450 50  0001 C CNN
F 3 "~" H 1400 2450 50  0001 C CNN
	1    1400 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 2500 2100 2500
Wire Wire Line
	1550 2650 1400 2650
Wire Wire Line
	1550 2500 1550 2650
Wire Wire Line
	1550 2400 2100 2400
Wire Wire Line
	1550 2250 1400 2250
Wire Wire Line
	1550 2400 1550 2250
Wire Wire Line
	2400 1800 2400 1650
Wire Wire Line
	2400 1650 2300 1650
Text Label 2300 1650 2    47   ~ 0
PD2
Wire Wire Line
	2100 2100 1950 2100
Text Label 1950 2100 2    47   ~ 0
PD3
Wire Wire Line
	2700 1800 2700 1350
Wire Wire Line
	2700 1350 2300 1350
Wire Wire Line
	3100 1800 3100 1650
Wire Wire Line
	3100 1650 3200 1650
Wire Wire Line
	3000 1800 3000 1550
Wire Wire Line
	3000 1550 3200 1550
Wire Wire Line
	2900 1800 2900 1450
Wire Wire Line
	2900 1450 3200 1450
Wire Wire Line
	2800 1800 2800 1350
Wire Wire Line
	2800 1350 3200 1350
Text Label 3200 1350 0    47   ~ 0
SCL
Text Label 3200 1450 0    47   ~ 0
SDA
Wire Wire Line
	3100 3100 3100 3250
Wire Wire Line
	3100 3250 3200 3250
Wire Wire Line
	3000 3100 3000 3350
Wire Wire Line
	3000 3350 3200 3350
Wire Wire Line
	2900 3100 2900 3450
Wire Wire Line
	2900 3450 3200 3450
Wire Wire Line
	2800 3100 2800 3550
Wire Wire Line
	2800 3550 3200 3550
Wire Wire Line
	2400 3100 2400 3250
Wire Wire Line
	2400 3250 2300 3250
Wire Wire Line
	2500 3100 2500 3350
Wire Wire Line
	2500 3350 2300 3350
Wire Wire Line
	2600 3100 2600 3450
Wire Wire Line
	2600 3450 2300 3450
Wire Wire Line
	2700 3100 2700 3550
Wire Wire Line
	2700 3550 2300 3550
Text Label 3200 3350 0    50   ~ 0
PB3
Text Label 3200 3250 0    50   ~ 0
PB4
Text Label 3200 3450 0    50   ~ 0
PB2
Text Label 3200 3550 0    50   ~ 0
PB1
Text Label 3550 2600 0    50   ~ 0
ADC6
Wire Wire Line
	3400 2600 3550 2600
Wire Wire Line
	3400 2700 3550 2700
Wire Wire Line
	3400 2800 3550 2800
Wire Wire Line
	3400 2300 3550 2300
Wire Wire Line
	3400 2400 3550 2400
Wire Wire Line
	3400 2500 3550 2500
Wire Wire Line
	3400 2100 3550 2100
Wire Wire Line
	3400 2200 3550 2200
Wire Wire Line
	2100 2300 1950 2300
Wire Wire Line
	2100 2200 1950 2200
Wire Wire Line
	2100 2700 1950 2700
Wire Wire Line
	2100 2600 1950 2600
Wire Wire Line
	2100 2800 1950 2800
Text Label 3550 2300 0    50   ~ 0
ADC7
Text Label 3550 2500 0    50   ~ 0
ADC10
Text Label 3550 2800 0    50   ~ 0
PB5
Text Label 3550 2200 0    50   ~ 0
ADC0
Text Label 3550 2100 0    50   ~ 0
ADC1
Text Label 2300 3550 2    50   ~ 0
PB0
Text Label 1950 2300 2    50   ~ 0
PE4
Text Label 1950 2200 2    50   ~ 0
PD4
Text Label 1950 2600 2    50   ~ 0
PE5
Text Label 1950 2700 2    50   ~ 0
PB6
Text Label 1950 2800 2    50   ~ 0
PB7
Text Label 2300 3250 2    50   ~ 0
PD5
Text Label 2300 3350 2    50   ~ 0
PD6
Text Label 2300 3450 2    50   ~ 0
PD7
Text Label 3200 1550 0    50   ~ 0
ADC3
Text Label 3200 1650 0    50   ~ 0
ADC2
Text Label 900  2650 2    50   ~ 0
GND
Text Label 900  2250 2    50   ~ 0
VCC
Text Label 3550 2400 0    50   ~ 0
SWD
Text Label 3550 2700 0    50   ~ 0
SWC
Text Label 2300 1350 2    50   ~ 0
RESET
Text Label 1600 1450 2    50   ~ 0
D0
Text Label 1600 1550 2    50   ~ 0
D1
Wire Wire Line
	10100 1150 10150 1150
Wire Wire Line
	9300 1500 10900 1500
$Comp
L Device:C_Small C4
U 1 1 5F3DADB1
P 10450 1350
F 0 "C4" V 10550 1350 50  0000 C CNN
F 1 "47p" V 10312 1350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10450 1350 50  0001 C CNN
F 3 "~" H 10450 1350 50  0001 C CNN
	1    10450 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R17
U 1 1 5F3DB580
P 10250 1350
F 0 "R17" V 10350 1350 50  0000 C CNN
F 1 "200" V 10145 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10250 1350 50  0001 C CNN
F 3 "~" H 10250 1350 50  0001 C CNN
	1    10250 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 1350 10150 1150
Connection ~ 10150 1150
Wire Wire Line
	10150 1150 10500 1150
Wire Wire Line
	10550 1350 10550 1650
Text Label 10550 1650 0    50   ~ 0
GND
$Comp
L Device:C_Small C5
U 1 1 5F3F5ACD
P 10150 2450
F 0 "C5" V 10250 2450 50  0000 C CNN
F 1 "47p" V 10012 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 2450 50  0001 C CNN
F 3 "~" H 10150 2450 50  0001 C CNN
	1    10150 2450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Small R18
U 1 1 5F3F5AD7
P 10150 2250
F 0 "R18" V 10250 2250 50  0000 C CNN
F 1 "200" V 10045 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 2250 50  0001 C CNN
F 3 "~" H 10150 2250 50  0001 C CNN
	1    10150 2250
	-1   0    0    1   
$EndComp
Connection ~ 10150 2150
Wire Wire Line
	10150 2150 10100 2150
Wire Wire Line
	10150 2550 9600 2550
Connection ~ 9600 2550
Text Label 10050 3750 2    50   ~ 0
SCL
Text Label 10050 3850 2    50   ~ 0
SDA
Text Label 10850 3750 0    50   ~ 0
SCL
Text Label 10850 3850 0    50   ~ 0
SDA
Wire Wire Line
	10050 3750 10300 3750
Wire Wire Line
	10850 3850 10600 3850
Wire Wire Line
	10300 3650 10300 3750
Connection ~ 10300 3750
Wire Wire Line
	10300 3750 10850 3750
Wire Wire Line
	10600 3650 10600 3850
Connection ~ 10600 3850
Wire Wire Line
	10600 3850 10050 3850
Text Notes 10000 3100 0    118  ~ 0
I2C pullups
Wire Wire Line
	10300 3350 10450 3350
Wire Wire Line
	10450 3350 10450 3300
Connection ~ 10450 3350
Wire Wire Line
	10450 3350 10600 3350
$Comp
L Device:C_Small C6
U 1 1 5F2226E5
P 1150 2450
F 0 "C6" V 950 2450 50  0000 C CNN
F 1 "10n" V 1050 2450 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1150 2450 50  0001 C CNN
F 3 "~" H 1150 2450 50  0001 C CNN
	1    1150 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	900  2250 1150 2250
Wire Wire Line
	900  2650 1150 2650
Wire Wire Line
	1150 2550 1150 2650
Connection ~ 1150 2650
Wire Wire Line
	1150 2650 1400 2650
Wire Wire Line
	1150 2350 1150 2250
Connection ~ 1150 2250
Wire Wire Line
	1150 2250 1400 2250
$Comp
L Device:C_Small C7
U 1 1 5F25514C
P 9750 5950
F 0 "C7" V 9550 5950 50  0000 C CNN
F 1 "10u" V 9650 5950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9750 5950 50  0001 C CNN
F 3 "~" H 9750 5950 50  0001 C CNN
	1    9750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 5850 9750 5700
Wire Wire Line
	9750 5700 9950 5700
Connection ~ 9950 5700
Wire Wire Line
	9950 6200 9750 6200
Wire Wire Line
	9750 6200 9750 6050
Connection ~ 9950 6200
$Comp
L Device:R_Small R20
U 1 1 5F27D06D
P 1900 1400
F 0 "R20" V 2000 1450 50  0000 C CNN
F 1 "1k" V 2000 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 1400 50  0001 C CNN
F 3 "~" H 1900 1400 50  0001 C CNN
	1    1900 1400
	0    -1   -1   0   
$EndComp
Text Notes 8650 3100 0    118  ~ 0
Reset pullup\n
Text Label 9000 3850 2    50   ~ 0
RESET
Text Label 9400 3850 0    50   ~ 0
RESET
$Comp
L Device:R R21
U 1 1 5F23EEDA
P 9200 3500
F 0 "R21" H 9270 3546 50  0000 L CNN
F 1 "10k" H 9270 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 9130 3500 50  0001 C CNN
F 3 "~" H 9200 3500 50  0001 C CNN
	1    9200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3350 9400 3350
Text Label 9400 3350 0    50   ~ 0
VCC
$Comp
L S3B-PH-K-S_LF__SN_:S3B-PH-K-S(LF)(SN) J2
U 1 1 5F68943A
P 7750 1050
F 0 "J2" H 8000 1050 50  0000 L CNN
F 1 "S3B-PH-K-S(LF)(SN)" H 7350 800 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:JST_S3B-PH-K-S(LF)(SN)" H 7750 1050 50  0001 L BNN
F 3 "JST Sales" H 7750 1050 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 7750 1050 50  0001 L BNN "Field4"
F 5 "" H 7750 1050 50  0001 L BNN "Field5"
F 6 "4.8mm" H 7750 1050 50  0001 L BNN "Field6"
	1    7750 1050
	1    0    0    -1  
$EndComp
$Comp
L S3B-PH-K-S_LF__SN_:S3B-PH-K-S(LF)(SN) J1
U 1 1 5F68AA9C
P 8250 2100
F 0 "J1" H 8500 2100 50  0000 L CNN
F 1 "S3B-PH-K-S(LF)(SN)" H 7750 1850 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:JST_S3B-PH-K-S(LF)(SN)" H 8250 2100 50  0001 L BNN
F 3 "JST Sales" H 8250 2100 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 8250 2100 50  0001 L BNN "Field4"
F 5 "" H 8250 2100 50  0001 L BNN "Field5"
F 6 "4.8mm" H 8250 2100 50  0001 L BNN "Field6"
	1    8250 2100
	1    0    0    -1  
$EndComp
$Comp
L S3B-PH-K-S_LF__SN_:S3B-PH-K-S(LF)(SN) J3
U 1 1 5F698654
P 6200 2100
F 0 "J3" H 6450 2100 50  0000 L CNN
F 1 "S3B-PH-K-S(LF)(SN)" H 5550 1850 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:JST_S3B-PH-K-S(LF)(SN)" H 6200 2100 50  0001 L BNN
F 3 "JST Sales" H 6200 2100 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 6200 2100 50  0001 L BNN "Field4"
F 5 "" H 6200 2100 50  0001 L BNN "Field5"
F 6 "4.8mm" H 6200 2100 50  0001 L BNN "Field6"
	1    6200 2100
	1    0    0    -1  
$EndComp
Text Label 5250 3100 1    47   ~ 0
ADC3
Text Label 10800 900  1    47   ~ 0
SWC
$Comp
L eec:51281-1294 J6
U 1 1 5F77100F
P 9450 5300
F 0 "J6" H 10150 5865 50  0000 C CNN
F 1 "51281-1294" H 10150 5774 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:Molex-51281-1294-Manufacturer_Recommended" H 9450 6000 50  0001 L CNN
F 3 "http://www.molex.com/webdocs/datasheets/pdf/en-us/0512811294_FFC_FPC_CONNECTORS.pdf" H 9450 6100 50  0001 L CNN
F 4 "12" H 9450 6200 50  0001 L CNN "Circuits Loaded"
F 5 "Manufacturer URL" H 9450 6300 50  0001 L CNN "Component Link 1 Description"
F 6 "http://www.molex.com/molex/index.jsp" H 9450 6400 50  0001 L CNN "Component Link 1 URL"
F 7 "Package Specification" H 9450 6500 50  0001 L CNN "Component Link 3 Description"
F 8 "http://www.molex.com/pdm_docs/sd/512811294_sd.pdf" H 9450 6600 50  0001 L CNN "Component Link 3 URL"
F 9 "Dual" H 9450 6700 50  0001 L CNN "Contact Position"
F 10 "0.5A" H 9450 6800 50  0001 L CNN "Current Max per Contact"
F 11 "20" H 9450 6900 50  0001 L CNN "Durability mating cycles max"
F 12 "90degrees Angle" H 9450 7000 50  0001 L CNN "Entry Angle"
F 13 "1.20mm" H 9450 7100 50  0001 L CNN "Mated Height"
F 14 "Phosphor Bronze" H 9450 7200 50  0001 L CNN "Material   Metal"
F 15 "Gold" H 9450 7300 50  0001 L CNN "Material   Plating Mating"
F 16 "Tin" H 9450 7400 50  0001 L CNN "Material   Plating Termination"
F 17 "Surface Mount" H 9450 7500 50  0001 L CNN "Mounting Technology"
F 18 "1" H 9450 7600 50  0001 L CNN "Number of Rows"
F 19 "Right Angle" H 9450 7700 50  0001 L CNN "Orientation"
F 20 "No" H 9450 7800 50  0001 L CNN "PCB Locator"
F 21 "Yes" H 9450 7900 50  0001 L CNN "PCB Retention"
F 22 "12-Lead FPC Connector, Pitch 0.5 mm" H 9450 8000 50  0001 L CNN "Package Description"
F 23 "Rev. J, 10/2010" H 9450 8100 50  0001 L CNN "Package Version"
F 24 "Tape and Reel" H 9450 8200 50  0001 L CNN "Packing"
F 25 "0.50mm" H 9450 8300 50  0001 L CNN "Pitch   Mating Interface"
F 26 "Yes" H 9450 8400 50  0001 L CNN "Polarized to PCB"
F 27 "No" H 9450 8500 50  0001 L CNN "Stackable"
F 28 "50V" H 9450 8600 50  0001 L CNN "Voltage Max"
F 29 "Conn" H 9450 8700 50  0001 L CNN "category"
F 30 "1130020" H 9450 8800 50  0001 L CNN "ciiva ids"
F 31 "38ce8664f5d5bbe6" H 9450 8900 50  0001 L CNN "library id"
F 32 "Molex" H 9450 9000 50  0001 L CNN "manufacturer"
F 33 "51281-1294" H 9450 9100 50  0001 L CNN "package"
F 34 "1411372361" H 9450 9200 50  0001 L CNN "release date"
F 35 "Yes" H 9450 9300 50  0001 L CNN "rohs"
F 36 "F2413D5A-E530-4996-972E-9EFD49FD3DF5" H 9450 9400 50  0001 L CNN "vault revision"
F 37 "yes" H 9450 9500 50  0001 L CNN "imported"
	1    9450 5300
	1    0    0    -1  
$EndComp
Text Label 10950 3300 0    50   ~ 0
PD3
Wire Wire Line
	10950 3300 10450 3300
$Comp
L Connector:Conn_01x11_Female J7
U 1 1 5F85C19E
P 7950 5450
F 0 "J7" H 7800 4750 50  0000 L CNN
F 1 "Conn_01x11_Female" H 7400 4850 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 7950 5450 50  0001 C CNN
F 3 "~" H 7950 5450 50  0001 C CNN
	1    7950 5450
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x11_Female J8
U 1 1 5F85E8C6
P 8550 5450
F 0 "J8" H 8450 4750 50  0000 C CNN
F 1 "Conn_01x11_Female" H 8450 4850 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 8550 5450 50  0001 C CNN
F 3 "~" H 8550 5450 50  0001 C CNN
	1    8550 5450
	-1   0    0    -1  
$EndComp
Text Label 7650 5650 2    50   ~ 0
GND
Text Label 7650 5250 2    50   ~ 0
VCC
Wire Wire Line
	7650 5650 7750 5650
Wire Wire Line
	7750 5650 7750 5750
Connection ~ 7750 5650
Connection ~ 7750 5750
Wire Wire Line
	7750 5750 7750 5850
Connection ~ 7750 5850
Wire Wire Line
	7750 5850 7750 5950
Wire Wire Line
	7750 5250 7750 5150
Connection ~ 7750 5050
Wire Wire Line
	7750 5050 7750 4950
Connection ~ 7750 5150
Wire Wire Line
	7750 5150 7750 5050
Wire Wire Line
	7750 5250 7650 5250
Connection ~ 7750 5250
Text Label 8750 5850 0    50   ~ 0
VCC
Text Label 8750 5950 0    50   ~ 0
GND
Text Label 10150 5200 3    50   ~ 0
PD6
Text Label 10050 5200 3    50   ~ 0
PD5
Text Label 10350 5200 3    50   ~ 0
GND
Text Label 9750 5200 3    50   ~ 0
PB6
Text Label 9850 5200 3    50   ~ 0
PB7
Text Label 9650 5200 3    50   ~ 0
PE5
Text Label 10550 5200 3    50   ~ 0
SDA
Text Label 10450 5200 3    50   ~ 0
SCL
Wire Wire Line
	5100 6500 5100 6700
Connection ~ 5800 5900
Wire Wire Line
	5800 5900 5800 5800
Text Label 5100 6700 0    47   ~ 0
PD2
Connection ~ 5800 6800
Wire Wire Line
	5800 6800 5450 6800
Wire Wire Line
	5800 6700 5800 6800
Connection ~ 5450 6500
Wire Wire Line
	5450 6500 5500 6500
Wire Wire Line
	5400 6500 5450 6500
$Comp
L Device:R R23
U 1 1 5F2B66F9
P 5450 6650
F 0 "R23" H 5520 6696 50  0000 L CNN
F 1 "100K" H 5520 6605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5380 6650 50  0001 C CNN
F 3 "~" H 5450 6650 50  0001 C CNN
	1    5450 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R22
U 1 1 5F2B529D
P 5250 6500
F 0 "R22" V 5043 6500 50  0000 C CNN
F 1 "10K" V 5134 6500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5180 6500 50  0001 C CNN
F 3 "~" H 5250 6500 50  0001 C CNN
	1    5250 6500
	0    1    1    0   
$EndComp
Connection ~ 5800 6200
Wire Wire Line
	5800 6200 5800 6300
$Comp
L Transistor_FET:2N7002E Q1
U 1 1 5F2AB4F3
P 5700 6500
F 0 "Q1" H 5905 6546 50  0000 L CNN
F 1 "A03400A N-MOS" H 5905 6455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 6425 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 5700 6500 50  0001 L CNN
	1    5700 6500
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5F29BCA9
P 5500 6050
F 0 "D1" V 5450 5900 50  0000 L CNN
F 1 "D_Schottky" V 5550 5600 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5500 6050 50  0001 C CNN
F 3 "~" H 5500 6050 50  0001 C CNN
	1    5500 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 5900 5500 5900
Wire Wire Line
	5800 6200 5500 6200
Wire Wire Line
	5800 6150 5800 6200
Wire Wire Line
	5800 5950 5800 5900
$Comp
L Device:Buzzer B1
U 1 1 5F28AB82
P 5900 6050
F 0 "B1" H 6052 6079 50  0000 L CNN
F 1 "CMT-0502-75-SMT-TR" H 6052 5988 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:CMT-0502-75-SMT-TR" V 5875 6150 50  0001 C CNN
F 3 "~" V 5875 6150 50  0001 C CNN
	1    5900 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 5800 6250 6250
$Comp
L Device:C_Small C8
U 1 1 5F258A5E
P 6250 6350
F 0 "C8" H 6342 6396 50  0000 L CNN
F 1 "100n" H 6342 6305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6250 6350 50  0001 C CNN
F 3 "~" H 6250 6350 50  0001 C CNN
	1    6250 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 6450 6250 6800
Wire Wire Line
	5800 6800 6250 6800
Text Label 5000 900  0    50   ~ 0
VCC
Text Label 5000 1000 0    50   ~ 0
BUTT4
Text Label 5000 1100 0    50   ~ 0
BUTT5
Text Label 6250 5800 0    50   ~ 0
VCC
Text Label 7750 5450 2    50   ~ 0
D0
Text Label 7750 5550 2    50   ~ 0
D1
Text Label 7750 5350 2    50   ~ 0
RESET
Text Label 8750 5650 0    50   ~ 0
SCL
Text Label 8750 5750 0    50   ~ 0
SDA
Text Label 9550 5200 3    50   ~ 0
PE4
Text Label 9950 5200 3    47   ~ 0
PB5
Wire Wire Line
	5800 5800 6250 5800
Text Notes 5550 5650 0    118  ~ 0
Buzzer
Text Label 6250 6800 0    50   ~ 0
GND
Text Notes 8600 4500 0    118  ~ 0
Connectors
Wire Notes Line rgb(194, 0, 191)
	7750 5850 7450 5850
Wire Notes Line rgb(194, 0, 184)
	7450 5850 7450 5050
Wire Notes Line rgb(194, 0, 194)
	7450 5050 7750 5050
Text Notes 7400 5750 1    50   ~ 0
Charger outline
Wire Notes Line
	7000 4050 7000 6500
Wire Notes Line
	4900 6900 6950 6900
Wire Notes Line
	6950 6500 11200 6500
Text Notes 5050 7150 0    118  ~ 0
2.1 mm screw holes
Wire Notes Line
	4900 7800 6950 7800
Wire Notes Line
	4900 500  4900 7800
Wire Notes Line
	6950 6500 6950 7800
$Comp
L Mechanical:MountingHole H4
U 1 1 5F718882
P 6250 7600
F 0 "H4" H 6350 7646 50  0000 L CNN
F 1 "MountingHole" H 6350 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 6250 7600 50  0001 C CNN
F 3 "~" H 6250 7600 50  0001 C CNN
	1    6250 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F718878
P 5200 7600
F 0 "H3" H 5300 7646 50  0000 L CNN
F 1 "MountingHole" H 5300 7555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 5200 7600 50  0001 C CNN
F 3 "~" H 5200 7600 50  0001 C CNN
	1    5200 7600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F70B240
P 6250 7300
F 0 "H2" H 6350 7346 50  0000 L CNN
F 1 "MountingHole" H 6350 7255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 6250 7300 50  0001 C CNN
F 3 "~" H 6250 7300 50  0001 C CNN
	1    6250 7300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F70AA51
P 5200 7300
F 0 "H1" H 5300 7346 50  0000 L CNN
F 1 "MountingHole" H 5300 7255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 5200 7300 50  0001 C CNN
F 3 "~" H 5200 7300 50  0001 C CNN
	1    5200 7300
	1    0    0    -1  
$EndComp
Text Notes 2250 900  0    236  ~ 0
CPU
Wire Notes Line
	500  4050 500  500 
Wire Notes Line
	500  4050 11200 4050
Wire Notes Line
	500  500  11200 500 
Text Label 10250 5200 3    50   ~ 0
GND
Text Label 8750 5050 0    50   ~ 0
VCC
Text Label 9450 5200 3    50   ~ 0
VCC
Wire Wire Line
	6650 4800 6450 4800
Wire Wire Line
	6550 4600 6650 4600
Connection ~ 6550 4600
Wire Wire Line
	6450 4900 6650 4900
Wire Notes Line
	8600 500  8600 4050
Wire Notes Line
	9850 2800 9850 4050
Wire Notes Line
	8600 2800 11200 2800
$Comp
L Device:Fuse F2
U 1 1 5F83FD01
P 6750 2350
F 0 "F2" V 6650 2200 50  0000 C CNN
F 1 "Fuse" V 6650 2350 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6680 2350 50  0001 C CNN
F 3 "~" H 6750 2350 50  0001 C CNN
	1    6750 2350
	-1   0    0    1   
$EndComp
$Comp
L Device:Fuse F4
U 1 1 5F84C6A1
P 7650 2350
F 0 "F4" V 7550 2500 50  0000 C CNN
F 1 "Fuse" V 7550 2350 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7580 2350 50  0001 C CNN
F 3 "~" H 7650 2350 50  0001 C CNN
	1    7650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F3
U 1 1 5F856ABB
P 7200 2350
F 0 "F3" V 7100 2200 50  0000 C CNN
F 1 "Fuse" V 7100 2350 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 2350 50  0001 C CNN
F 3 "~" H 7200 2350 50  0001 C CNN
	1    7200 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 2000 6750 2000
Wire Wire Line
	6750 2000 6750 2200
Wire Wire Line
	6750 2500 6750 2700
$Comp
L Device:D D2
U 1 1 5F890448
P 6600 2700
F 0 "D2" H 6650 2600 50  0000 C CNN
F 1 "D" H 6550 2600 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:1408D" H 6600 2700 50  0001 C CNN
F 3 "~" H 6600 2700 50  0001 C CNN
	1    6600 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5F89145D
P 6900 2700
F 0 "D3" H 6950 2600 50  0000 C CNN
F 1 "D" H 6850 2600 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:1408D" H 6900 2700 50  0001 C CNN
F 3 "~" H 6900 2700 50  0001 C CNN
	1    6900 2700
	1    0    0    -1  
$EndComp
Connection ~ 6750 2700
Wire Wire Line
	7850 2100 7200 2100
Wire Wire Line
	7200 2100 7200 2200
Wire Wire Line
	7850 2200 7650 2200
$Comp
L Device:D D4
U 1 1 5F91270F
P 7050 2900
F 0 "D4" H 7100 2800 50  0000 C CNN
F 1 "D" H 7000 2800 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:1408D" H 7050 2900 50  0001 C CNN
F 3 "~" H 7050 2900 50  0001 C CNN
	1    7050 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:D D5
U 1 1 5F912719
P 7350 2900
F 0 "D5" H 7400 2800 50  0000 C CNN
F 1 "D" H 7300 2800 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:1408D" H 7350 2900 50  0001 C CNN
F 3 "~" H 7350 2900 50  0001 C CNN
	1    7350 2900
	1    0    0    -1  
$EndComp
Connection ~ 7200 2900
$Comp
L Device:D D6
U 1 1 5F91E4AD
P 7500 3100
F 0 "D6" H 7550 3000 50  0000 C CNN
F 1 "D" H 7450 3000 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:1408D" H 7500 3100 50  0001 C CNN
F 3 "~" H 7500 3100 50  0001 C CNN
	1    7500 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5F91E4B7
P 7800 3100
F 0 "D7" H 7850 3000 50  0000 C CNN
F 1 "D" H 7750 3000 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:1408D" H 7800 3100 50  0001 C CNN
F 3 "~" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
Connection ~ 7650 3100
Wire Wire Line
	7650 2500 7650 3100
Wire Wire Line
	7200 2500 7200 2900
Wire Wire Line
	7050 2700 7950 2700
Wire Wire Line
	7950 2700 7950 2900
Wire Wire Line
	7500 2900 7950 2900
Connection ~ 7950 2900
Wire Wire Line
	7950 2900 7950 3100
Wire Wire Line
	7950 2900 8100 2900
Wire Wire Line
	7350 3100 6450 3100
Wire Wire Line
	6450 3100 6450 2900
Wire Wire Line
	6900 2900 6450 2900
Connection ~ 6450 2900
Wire Wire Line
	6450 2900 6450 2700
Wire Wire Line
	6450 2900 6300 2900
Text Label 6300 2900 2    50   ~ 0
VCC
Text Label 8100 2900 0    50   ~ 0
GND
Wire Wire Line
	6750 2700 6750 3400
Wire Wire Line
	5850 3400 6750 3400
Wire Wire Line
	7200 2900 7200 3500
Wire Wire Line
	5850 3500 7200 3500
Wire Wire Line
	7650 3600 7650 3100
Wire Notes Line
	4900 1400 8600 1400
Wire Notes Line
	6600 1400 6600 2550
Wire Notes Line
	6600 2550 4900 2550
Wire Wire Line
	9000 3850 9200 3850
Wire Wire Line
	9200 3650 9200 3850
Connection ~ 9200 3850
Wire Wire Line
	9200 3850 9400 3850
$Comp
L Multimeter_Watch_Custom_Symbols:LGT8F328P-QFP32L CPU1
U 1 1 5F1CAE43
P 2750 2450
F 0 "CPU1" H 3300 1950 50  0000 L CNN
F 1 "LGT8F328P-QFP32L" H 3300 1850 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2800 2400 50  0001 C CNN
F 3 "" H 2850 2400 50  0001 C CNN
	1    2750 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 1550 2500 1800
Wire Wire Line
	2600 1450 2600 1800
$Comp
L Device:R_Small R19
U 1 1 5F27D209
P 1900 1600
F 0 "R19" V 1800 1650 50  0000 C CNN
F 1 "1k" V 1800 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1900 1600 50  0001 C CNN
F 3 "~" H 1900 1600 50  0001 C CNN
	1    1900 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 1550 2100 1550
Wire Wire Line
	2100 1550 2100 1600
Wire Wire Line
	2100 1600 2000 1600
Wire Wire Line
	2600 1450 2100 1450
Wire Wire Line
	2100 1450 2100 1400
Wire Wire Line
	2100 1400 2000 1400
Wire Wire Line
	1800 1400 1700 1400
Wire Wire Line
	1700 1400 1700 1450
Wire Wire Line
	1700 1450 1600 1450
Wire Wire Line
	1600 1550 1700 1550
Wire Wire Line
	1700 1550 1700 1600
Wire Wire Line
	1700 1600 1800 1600
Wire Notes Line
	4900 5350 7000 5350
$EndSCHEMATC
