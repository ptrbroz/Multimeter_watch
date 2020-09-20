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
Text Notes 7500 1750 0    118  ~ 0
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
Text Label 1800 2350 2    47   ~ 0
PD3
Text Label 1800 2250 2    47   ~ 0
PD2
Text Label 4750 1800 1    47   ~ 0
ADC11
Text Label 10500 900  1    47   ~ 0
ADC2
Text Label 10900 900  1    47   ~ 0
ADC3
Text Notes 5200 1650 0    118  ~ 0
R/L/C/Universal\n
Wire Wire Line
	7100 2150 7100 2250
Wire Wire Line
	6300 2300 5950 2300
Text Label 5950 2300 0    47   ~ 0
DACout
$Comp
L Device:R R9
U 1 1 5F1F5ED9
P 5350 2350
F 0 "R9" H 5420 2396 50  0000 L CNN
F 1 "470k" H 5420 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5280 2350 50  0001 C CNN
F 3 "~" H 5350 2350 50  0001 C CNN
	1    5350 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5F1F5EE3
P 5650 2350
F 0 "R10" H 5720 2396 50  0000 L CNN
F 1 "680" H 5720 2305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 2350 50  0001 C CNN
F 3 "~" H 5650 2350 50  0001 C CNN
	1    5650 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5F1FA826
P 5350 1950
F 0 "R7" H 5420 1996 50  0000 L CNN
F 1 "470k" H 5420 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5280 1950 50  0001 C CNN
F 3 "~" H 5350 1950 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5F1FA830
P 5650 1950
F 0 "R8" H 5720 1996 50  0000 L CNN
F 1 "680" H 5720 1905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 1950 50  0001 C CNN
F 3 "~" H 5650 1950 50  0001 C CNN
	1    5650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2200 5650 2200
Wire Wire Line
	5650 2200 5350 2200
Connection ~ 5650 2200
Wire Wire Line
	5350 2200 5050 2200
Wire Wire Line
	5050 2200 5050 2500
Connection ~ 5350 2200
Wire Wire Line
	6300 2100 5650 2100
Wire Wire Line
	5650 2100 5350 2100
Connection ~ 5650 2100
Wire Wire Line
	5350 2100 5050 2100
Wire Wire Line
	5050 2100 5050 1800
Connection ~ 5350 2100
Text Label 5350 2500 3    47   ~ 0
PB1
Text Label 5650 2500 3    47   ~ 0
PB2
Text Label 5650 1800 1    47   ~ 0
PB3
Text Label 5350 1800 1    47   ~ 0
PB4
Text Label 5550 1300 0    47   ~ 0
ADC7
Text Label 5050 2500 3    47   ~ 0
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
P 6300 3050
F 0 "Y1" H 6500 3250 50  0000 C CNN
F 1 "32kHz" H 6500 3150 50  0000 C CNN
F 2 "Crystal:Crystal_SMD_3215-2Pin_3.2x1.5mm" H 6300 3050 50  0001 C CNN
F 3 "~" H 6300 3050 50  0001 C CNN
	1    6300 3050
	1    0    0    -1  
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:PCF85163-SO08 U1
U 1 1 5F21CC1C
P 7000 3450
F 0 "U1" H 7000 3809 47  0000 C CNN
F 1 "PCF85163-SO08" H 7000 3722 47  0000 C CNN
F 2 "Package_SO:SOIC-8-N7_3.9x4.9mm_P1.27mm" H 6900 3400 47  0001 C CNN
F 3 "" H 6900 3400 47  0001 C CNN
	1    7000 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F2246FE
P 7300 2150
F 0 "R6" V 7100 2150 50  0000 C CNN
F 1 "100m" V 7200 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 7230 2150 50  0001 C CNN
F 3 "~" H 7300 2150 50  0001 C CNN
	1    7300 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7150 2150 7100 2150
Wire Wire Line
	7100 2150 7100 2050
Connection ~ 7100 2150
Wire Wire Line
	6550 3300 6450 3300
Wire Wire Line
	6450 3300 6450 3050
Wire Wire Line
	6150 3050 6150 3400
Wire Wire Line
	6150 3400 6550 3400
Text Label 6750 1300 0    47   ~ 0
ADC10
Wire Wire Line
	7450 3300 7550 3300
$Comp
L Device:R R11
U 1 1 5F234AFA
P 9700 3500
F 0 "R11" H 9770 3546 50  0000 L CNN
F 1 "4k7" H 9770 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9630 3500 50  0001 C CNN
F 3 "~" H 9700 3500 50  0001 C CNN
	1    9700 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F2353C3
P 10000 3500
F 0 "R12" H 10070 3546 50  0000 L CNN
F 1 "4k7" H 10070 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9930 3500 50  0001 C CNN
F 3 "~" H 10000 3500 50  0001 C CNN
	1    10000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3500 7750 3500
Wire Wire Line
	7750 3500 7750 3700
Wire Wire Line
	7450 3600 7650 3600
Wire Wire Line
	7650 3600 7650 3800
Text Label 8400 3700 0    47   ~ 0
SCL
Text Label 8400 3800 0    47   ~ 0
SDA
Text Label 8400 3300 0    47   ~ 0
VCC
Text Notes 7000 3050 0    118  ~ 0
I2C/RTC\n
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8930 1800 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8930 2100 50  0001 C CNN
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
Text Label 7100 2050 1    47   ~ 0
ADC1
Text Label 7500 2050 1    47   ~ 0
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
Wire Notes Line
	4900 2800 11200 2800
Wire Notes Line
	4900 500  11200 500 
Wire Notes Line
	4900 4050 11200 4050
Wire Wire Line
	6550 3600 6500 3600
Wire Wire Line
	6250 3600 6250 3750
Text Label 6250 3750 0    47   ~ 0
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
P 7700 2150
F 0 "F1" V 7500 2150 50  0000 C CNN
F 1 "Fuse" V 7600 2150 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2150 50  0001 C CNN
F 3 "~" H 7700 2150 50  0001 C CNN
	1    7700 2150
	0    1    1    0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F40C910
P 5400 3600
F 0 "BT1" H 5518 3696 50  0000 L CNN
F 1 "Some Li-Po?" H 5518 3605 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0210_1x02_P1.25mm_Vertical" V 5400 3660 50  0001 C CNN
F 3 "~" V 5400 3660 50  0001 C CNN
	1    5400 3600
	1    0    0    -1  
$EndComp
Wire Notes Line
	6100 2800 6100 4050
Text Notes 5200 3050 0    118  ~ 0
Battery
Wire Wire Line
	5400 3400 5400 3300
Wire Wire Line
	5400 3300 5650 3300
Wire Wire Line
	5400 3800 5650 3800
Text Label 5650 3800 0    50   ~ 0
GND
Text Label 5650 3300 0    50   ~ 0
VCC
Wire Wire Line
	5400 3700 5400 3800
$Comp
L Device:C_Small C1
U 1 1 5F1FEE03
P 6950 3800
F 0 "C1" V 6750 3800 50  0000 C CNN
F 1 "100n" V 6850 3800 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6950 3800 50  0001 C CNN
F 3 "~" H 6950 3800 50  0001 C CNN
	1    6950 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7050 3800 7550 3800
Wire Wire Line
	7550 3800 7550 3300
Connection ~ 7550 3300
Wire Wire Line
	6850 3800 6500 3800
Wire Wire Line
	6500 3800 6500 3600
Connection ~ 6500 3600
Wire Wire Line
	6500 3600 6250 3600
Wire Wire Line
	9600 650  9600 700 
Wire Notes Line
	8600 350  8600 4050
Wire Notes Line
	7000 6500 11200 6500
Wire Notes Line
	11200 500  11200 6500
$Comp
L Device:C_Small C2
U 1 1 5F2393CF
P 8800 950
F 0 "C2" V 8600 950 50  0000 C CNN
F 1 "100n" V 8700 950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8800 950 50  0001 C CNN
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
Text Label 3000 2800 0    50   ~ 0
GND
Text Label 3000 3300 0    50   ~ 0
SCL
Text Label 3000 3400 0    50   ~ 0
SDA
Wire Wire Line
	3300 1150 3200 1150
Wire Wire Line
	3300 1250 3200 1250
Wire Wire Line
	3300 1350 3200 1350
Wire Wire Line
	3300 1450 3200 1450
Wire Wire Line
	3300 1550 3200 1550
Wire Wire Line
	3300 1650 3200 1650
Wire Wire Line
	3300 1750 3200 1750
Wire Wire Line
	3300 1850 3200 1850
Wire Wire Line
	3300 1950 3200 1950
Wire Wire Line
	3300 2050 3200 2050
Text Label 4000 3050 0    50   ~ 0
RESET
Text Label 3000 2900 0    50   ~ 0
VCC_HALF
Text Label 3000 3000 0    50   ~ 0
DACout
Text Label 3000 3600 0    50   ~ 0
SWC
Text Label 3000 3500 0    50   ~ 0
SWD
Text Label 3000 3200 0    50   ~ 0
ADC6
Text Label 3000 3100 0    50   ~ 0
ADC3
Wire Wire Line
	3200 1050 3400 1050
Wire Wire Line
	3200 950  3400 950 
Wire Wire Line
	3400 850  3200 850 
Wire Wire Line
	3400 2150 3200 2150
Wire Wire Line
	3200 2250 3400 2250
Wire Wire Line
	3400 2350 3200 2350
Text Label 3400 2250 0    50   ~ 0
SCL
Text Label 3400 2150 0    50   ~ 0
PE5
Text Label 3400 1050 0    50   ~ 0
PB6
Text Label 3400 950  0    50   ~ 0
PB7
$Comp
L Connector:Conn_01x16_Female J4
U 1 1 5F46892E
P 3000 1550
F 0 "J4" H 2800 550 50  0000 C CNN
F 1 "Conn_01x16_Female" H 2800 650 50  0000 C CNN
F 2 "" H 3000 1550 50  0001 C CNN
F 3 "~" H 3000 1550 50  0001 C CNN
	1    3000 1550
	-1   0    0    -1  
$EndComp
Text Notes 1400 1050 3    50   Italic 0
Charger/Comm shield outline
Wire Notes Line style dotted
	1450 1950 1450 1250
Connection ~ 2000 1250
Wire Wire Line
	2000 1250 2000 1150
Wire Wire Line
	2000 1350 2000 1250
Connection ~ 2000 1350
Wire Wire Line
	2000 1350 2000 1450
Wire Wire Line
	1900 1350 2000 1350
Connection ~ 2000 1950
Wire Wire Line
	2000 1950 2000 2050
Wire Wire Line
	2000 1850 2000 1950
Wire Wire Line
	2000 1750 2000 1850
Connection ~ 2000 1850
Wire Wire Line
	1900 1850 2000 1850
Wire Wire Line
	1900 1650 2000 1650
Wire Wire Line
	1900 1550 2000 1550
Text Label 1900 1650 2    50   ~ 0
D1
Text Label 1900 1550 2    50   ~ 0
D0
Text Label 1900 1850 2    50   ~ 0
GND
Text Label 1900 1350 2    50   ~ 0
VCC
Wire Wire Line
	2000 1050 1800 1050
Wire Wire Line
	2000 950  1800 950 
Wire Wire Line
	2000 850  1800 850 
Wire Wire Line
	2000 2350 1800 2350
Wire Wire Line
	1800 2250 2000 2250
Wire Wire Line
	2000 2150 1800 2150
Text Label 3400 2350 0    50   ~ 0
SDA
Text Label 5950 1300 0    50   ~ 0
PD7
Text Label 1800 950  2    50   ~ 0
PD6
Text Label 1800 1050 2    50   ~ 0
PD5
$Comp
L Connector:Conn_01x16_Female J5
U 1 1 5F44F8AA
P 2200 1550
F 0 "J5" H 2050 550 50  0000 L CNN
F 1 "Conn_01x16_Female" H 1700 650 50  0000 L CNN
F 2 "" H 2200 1550 50  0001 C CNN
F 3 "~" H 2200 1550 50  0001 C CNN
	1    2200 1550
	1    0    0    -1  
$EndComp
Wire Notes Line
	2250 1250 2250 1950
Wire Wire Line
	7550 2150 7500 2150
Wire Wire Line
	7500 2150 7500 2050
Connection ~ 7500 2150
Wire Wire Line
	7500 2150 7450 2150
Wire Wire Line
	7100 2250 7850 2250
Text Label 3400 850  0    50   ~ 0
VCC
Text Label 1800 2150 2    50   ~ 0
PE4
Text Label 1800 850  2    50   ~ 0
GND
Text Label 6350 1300 0    50   ~ 0
PB0
Wire Wire Line
	5200 1050 7350 1050
Wire Wire Line
	7350 950  7100 950 
Text Notes 2300 7550 1    31   ~ 0
voltage\n
Text Notes 3900 6200 0    50   ~ 0
voltage\n
Wire Notes Line rgb(194, 0, 0)
	3550 6050 4250 6050
Wire Notes Line rgb(194, 0, 0)
	4250 7600 4250 6050
Wire Notes Line rgb(194, 0, 0)
	2200 7600 4250 7600
Wire Notes Line rgb(194, 0, 0)
	2200 7200 2200 7600
Wire Notes Line rgb(194, 0, 0)
	2400 7200 2200 7200
Wire Notes Line rgb(194, 0, 0)
	2400 7550 2400 7200
Wire Notes Line rgb(194, 0, 0)
	4050 7550 2400 7550
Wire Notes Line rgb(194, 0, 0)
	4050 6300 4050 7550
Wire Notes Line rgb(194, 0, 0)
	3550 6300 4050 6300
Wire Notes Line rgb(194, 0, 0)
	3550 6250 3550 6300
Wire Notes Line rgb(194, 0, 0)
	3650 6250 3550 6250
Wire Notes Line rgb(194, 0, 0)
	3650 6150 3650 6250
Wire Notes Line rgb(194, 0, 0)
	3550 6150 3650 6150
Wire Notes Line rgb(194, 0, 0)
	3550 6050 3550 6150
Text Notes 3550 7100 0    50   ~ 0
RLC\n
Text Notes 3700 5800 0    50   ~ 0
current\n
Wire Notes Line rgb(194, 0, 0)
	3550 6550 3550 6900
Wire Notes Line rgb(194, 0, 0)
	3200 6900 3550 6900
Wire Notes Line rgb(194, 0, 0)
	3200 7450 3200 6900
Wire Notes Line rgb(194, 0, 0)
	3850 7450 3200 7450
Wire Notes Line rgb(194, 0, 0)
	3850 6350 3850 7450
Wire Notes Line rgb(194, 0, 0)
	3550 6350 3850 6350
Wire Notes Line rgb(194, 0, 0)
	3550 6450 3550 6350
Wire Notes Line rgb(194, 0, 0)
	3750 6450 3550 6450
Wire Notes Line rgb(194, 0, 0)
	3750 6550 3750 6450
Wire Notes Line rgb(194, 0, 0)
	3550 6550 3750 6550
Wire Notes Line
	3550 5700 3550 6000
Wire Notes Line
	4100 5700 3550 5700
Wire Notes Line
	4100 6000 4100 5700
Wire Notes Line
	3550 6000 4100 6000
Connection ~ 1450 6450
Wire Wire Line
	1450 6350 1450 6450
Connection ~ 1450 6050
Wire Wire Line
	1450 6150 1450 6050
$Comp
L Device:C_Small C3
U 1 1 5F284FFC
P 1450 6250
F 0 "C3" V 1250 6250 50  0000 C CNN
F 1 "100n" V 1350 6250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1450 6250 50  0001 C CNN
F 3 "~" H 1450 6250 50  0001 C CNN
	1    1450 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 6300 2150 6300
Wire Wire Line
	1600 6450 1450 6450
Wire Wire Line
	1600 6300 1600 6450
Wire Wire Line
	1600 6200 2150 6200
Wire Wire Line
	1600 6050 1450 6050
Wire Wire Line
	1600 6200 1600 6050
Wire Wire Line
	2450 5600 2450 5450
Wire Wire Line
	2450 5450 2350 5450
Text Label 2350 5450 2    47   ~ 0
PD2
Wire Wire Line
	2150 5900 2000 5900
Text Label 2000 5900 2    47   ~ 0
PD3
Wire Wire Line
	2550 5600 2550 5550
Wire Wire Line
	2550 5350 2350 5350
Wire Wire Line
	2650 5600 2650 5550
Wire Wire Line
	2650 5250 2350 5250
Wire Wire Line
	2750 5600 2750 5150
Wire Wire Line
	2750 5150 2350 5150
Wire Wire Line
	3150 5600 3150 5450
Wire Wire Line
	3150 5450 3250 5450
Wire Wire Line
	3050 5600 3050 5350
Wire Wire Line
	3050 5350 3250 5350
Wire Wire Line
	2950 5600 2950 5250
Wire Wire Line
	2950 5250 3250 5250
Wire Wire Line
	2850 5600 2850 5150
Wire Wire Line
	2850 5150 3250 5150
Text Label 3250 5250 0    47   ~ 0
SCL
Text Label 3250 5150 0    47   ~ 0
SDA
Wire Wire Line
	3150 6900 3150 7050
Wire Wire Line
	3150 7050 3250 7050
Wire Wire Line
	3050 6900 3050 7150
Wire Wire Line
	3050 7150 3250 7150
Wire Wire Line
	2950 6900 2950 7250
Wire Wire Line
	2950 7250 3250 7250
Wire Wire Line
	2850 6900 2850 7350
Wire Wire Line
	2850 7350 3250 7350
Wire Wire Line
	2450 6900 2450 7050
Wire Wire Line
	2450 7050 2350 7050
Wire Wire Line
	2550 6900 2550 7150
Wire Wire Line
	2550 7150 2350 7150
Wire Wire Line
	2650 6900 2650 7250
Wire Wire Line
	2650 7250 2350 7250
Wire Wire Line
	2750 6900 2750 7350
Wire Wire Line
	2750 7350 2350 7350
Text Label 3250 7150 0    50   ~ 0
PB3
Text Label 3250 7050 0    50   ~ 0
PB4
Text Label 3250 7250 0    50   ~ 0
PB2
Text Label 3250 7350 0    50   ~ 0
PB1
Text Label 3600 6400 0    50   ~ 0
ADC6
$Comp
L Multimeter_Watch_Custom_Symbols:LGT8F328P-QFP32L CPU1
U 1 1 5F1CAE43
P 2800 6250
F 0 "CPU1" H 3350 5750 50  0000 L CNN
F 1 "LGT8F328P-QFP32L" H 3350 5650 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 2850 6200 50  0001 C CNN
F 3 "" H 2900 6200 50  0001 C CNN
	1    2800 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6400 3600 6400
Wire Wire Line
	3450 6500 3600 6500
Wire Wire Line
	3450 6600 3600 6600
Wire Wire Line
	3450 6100 3600 6100
Wire Wire Line
	3450 6200 3600 6200
Wire Wire Line
	3450 6300 3600 6300
Wire Wire Line
	3450 5900 3600 5900
Wire Wire Line
	3450 6000 3600 6000
Wire Wire Line
	2150 6100 2000 6100
Wire Wire Line
	2150 6000 2000 6000
Wire Wire Line
	2150 6500 2000 6500
Wire Wire Line
	2150 6400 2000 6400
Wire Wire Line
	2150 6600 2000 6600
Text Label 3600 6100 0    50   ~ 0
ADC7
Text Label 3600 6300 0    50   ~ 0
ADC10
Text Label 3600 6600 0    50   ~ 0
ADC11
Text Label 3600 6000 0    50   ~ 0
ADC0
Text Label 3600 5900 0    50   ~ 0
ADC1
Text Label 2350 7350 2    50   ~ 0
PB0
Text Label 2000 6100 2    50   ~ 0
PE4
Text Label 2000 6000 2    50   ~ 0
PD4
Text Label 2000 6400 2    50   ~ 0
PE5
Text Label 2000 6500 2    50   ~ 0
PB6
Text Label 2000 6600 2    50   ~ 0
PB7
Text Label 2350 7050 2    50   ~ 0
PD5
Text Label 2350 7150 2    50   ~ 0
PD6
Text Label 2350 7250 2    50   ~ 0
PD7
Text Label 3250 5350 0    50   ~ 0
ADC3
Text Label 3250 5450 0    50   ~ 0
ADC2
Text Label 950  6450 2    50   ~ 0
GND
Text Label 950  6050 2    50   ~ 0
VCC
Text Label 3600 6200 0    50   ~ 0
SWD
Text Label 3600 6500 0    50   ~ 0
SWC
Text Label 2350 5150 2    50   ~ 0
RESET
Text Label 2350 5250 2    50   ~ 0
D0
Text Label 2350 5350 2    50   ~ 0
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
Wire Notes Line
	3200 5300 3200 5500
Wire Notes Line
	3200 5500 3550 5500
Wire Notes Line
	3550 5500 3550 5300
Wire Notes Line
	3550 5300 3200 5300
Text Notes 3600 5400 0    50   ~ 0
dacout\n
Wire Notes Line
	2050 5850 2050 6050
Wire Notes Line
	2050 6050 1750 6050
Wire Notes Line
	1750 6050 1750 5850
Wire Notes Line
	1750 5850 2050 5850
Text Notes 1500 6000 0    50   ~ 0
dacout
Wire Notes Line
	2400 7150 2100 7150
Wire Notes Line
	2100 7150 2100 6950
Wire Notes Line
	2100 6950 2400 6950
Wire Notes Line
	2400 6950 2400 7150
Wire Notes Line
	1800 6100 1800 6650
Wire Notes Line
	1800 6650 2100 6650
Wire Notes Line
	2100 6650 2100 6100
Wire Notes Line
	1800 6100 2100 6100
Wire Notes Line
	2000 6650 2000 7050
Wire Notes Line
	2000 7050 2100 7050
Wire Notes Line
	2100 7000 2050 7000
Wire Notes Line
	2050 7000 2050 6650
Text Notes 1700 6900 0    50   ~ 0
buttons\n
Wire Notes Line
	2400 5400 2400 5500
Wire Notes Line
	2400 5500 2050 5500
Wire Notes Line
	2050 5500 2050 5400
Wire Notes Line
	2050 5400 2400 5400
Text Notes 1850 5400 0    50   ~ 0
buzzer
Wire Wire Line
	7750 3700 8400 3700
Wire Wire Line
	7650 3800 8400 3800
Wire Wire Line
	7550 3300 8400 3300
Text Notes 7850 3500 0    31   Italic 0
I2C pullups moved to enable
Text Label 9450 3750 2    50   ~ 0
SCL
Text Label 9450 3850 2    50   ~ 0
SDA
Text Label 10250 3750 0    50   ~ 0
SCL
Text Label 10250 3850 0    50   ~ 0
SDA
Wire Wire Line
	9450 3750 9700 3750
Wire Wire Line
	10250 3850 10000 3850
Wire Wire Line
	9700 3650 9700 3750
Connection ~ 9700 3750
Wire Wire Line
	9700 3750 10250 3750
Wire Wire Line
	10000 3650 10000 3850
Connection ~ 10000 3850
Wire Wire Line
	10000 3850 9450 3850
Text Notes 9400 3100 0    118  ~ 0
I2C pullups
Wire Notes Line
	4900 5400 7000 5400
Wire Wire Line
	9700 3350 9850 3350
Wire Wire Line
	9850 3350 9850 3300
Connection ~ 9850 3350
Wire Wire Line
	9850 3350 10000 3350
Wire Notes Line style dotted
	1450 1250 2250 1250
Wire Notes Line style dotted
	1450 1950 2250 1950
$Comp
L Device:C_Small C6
U 1 1 5F2226E5
P 1200 6250
F 0 "C6" V 1000 6250 50  0000 C CNN
F 1 "10n" V 1100 6250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1200 6250 50  0001 C CNN
F 3 "~" H 1200 6250 50  0001 C CNN
	1    1200 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  6050 1200 6050
Wire Wire Line
	950  6450 1200 6450
Wire Wire Line
	1200 6350 1200 6450
Connection ~ 1200 6450
Wire Wire Line
	1200 6450 1450 6450
Wire Wire Line
	1200 6150 1200 6050
Connection ~ 1200 6050
Wire Wire Line
	1200 6050 1450 6050
$Comp
L Device:C_Small C7
U 1 1 5F25514C
P 5200 3550
F 0 "C7" V 5000 3550 50  0000 C CNN
F 1 "10u" V 5100 3550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 3550 50  0001 C CNN
F 3 "~" H 5200 3550 50  0001 C CNN
	1    5200 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3450 5200 3300
Wire Wire Line
	5200 3300 5400 3300
Connection ~ 5400 3300
Wire Wire Line
	5400 3800 5200 3800
Wire Wire Line
	5200 3800 5200 3650
Connection ~ 5400 3800
$Comp
L Device:R_Small R20
U 1 1 5F27D06D
P 2650 5450
F 0 "R20" V 2700 5450 50  0000 C CNN
F 1 "1k" V 2650 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2650 5450 50  0001 C CNN
F 3 "~" H 2650 5450 50  0001 C CNN
	1    2650 5450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 5350 2650 5250
$Comp
L Device:R_Small R19
U 1 1 5F27D209
P 2550 5450
F 0 "R19" V 2600 5450 50  0000 C CNN
F 1 "1k" V 2550 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2550 5450 50  0001 C CNN
F 3 "~" H 2550 5450 50  0001 C CNN
	1    2550 5450
	-1   0    0    1   
$EndComp
Text Notes 5350 4350 0    118  ~ 0
Reset pullup\n
Text Label 5500 5150 2    50   ~ 0
RESET
Text Label 6300 5150 0    50   ~ 0
RESET
Wire Wire Line
	5900 4950 5900 5150
$Comp
L Device:R R21
U 1 1 5F23EEDA
P 5900 4800
F 0 "R21" H 5970 4846 50  0000 L CNN
F 1 "10k" H 5970 4755 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5830 4800 50  0001 C CNN
F 3 "~" H 5900 4800 50  0001 C CNN
	1    5900 4800
	1    0    0    -1  
$EndComp
Connection ~ 5900 5150
Wire Wire Line
	5900 5150 6300 5150
Wire Wire Line
	5500 5150 5900 5150
Wire Wire Line
	5900 4650 5900 4500
Wire Wire Line
	5900 4500 6100 4500
Text Label 6100 4500 0    50   ~ 0
VCC
Wire Notes Line
	7000 4050 7000 6700
$Comp
L S3B-PH-K-S_LF__SN_:S3B-PH-K-S(LF)(SN) J2
U 1 1 5F68943A
P 7750 1050
F 0 "J2" H 7700 700 50  0000 L CNN
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
P 6700 2200
F 0 "J1" H 6550 1850 50  0000 L CNN
F 1 "S3B-PH-K-S(LF)(SN)" H 6100 1950 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:JST_S3B-PH-K-S(LF)(SN)" H 6700 2200 50  0001 L BNN
F 3 "JST Sales" H 6700 2200 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 6700 2200 50  0001 L BNN "Field4"
F 5 "" H 6700 2200 50  0001 L BNN "Field5"
F 6 "4.8mm" H 6700 2200 50  0001 L BNN "Field6"
	1    6700 2200
	1    0    0    -1  
$EndComp
$Comp
L S3B-PH-K-S_LF__SN_:S3B-PH-K-S(LF)(SN) J3
U 1 1 5F698654
P 8250 2250
F 0 "J3" H 8050 1900 50  0000 L CNN
F 1 "S3B-PH-K-S(LF)(SN)" H 7650 2000 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:JST_S3B-PH-K-S(LF)(SN)" H 8250 2250 50  0001 L BNN
F 3 "JST Sales" H 8250 2250 50  0001 L BNN
F 4 "Manufacturer Recommendations" H 8250 2250 50  0001 L BNN "Field4"
F 5 "" H 8250 2250 50  0001 L BNN "Field5"
F 6 "4.8mm" H 8250 2250 50  0001 L BNN "Field6"
	1    8250 2250
	1    0    0    -1  
$EndComp
Text Label 5050 1800 1    47   ~ 0
ADC3_former11
Text Label 10800 900  1    47   ~ 0
SWC_formerADC3
$Comp
L Mechanical:MountingHole H1
U 1 1 5F70AA51
P 3900 4250
F 0 "H1" H 4000 4296 50  0000 L CNN
F 1 "MountingHole" H 4000 4205 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 3900 4250 50  0001 C CNN
F 3 "~" H 3900 4250 50  0001 C CNN
	1    3900 4250
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F70B240
P 3900 4500
F 0 "H2" H 4000 4546 50  0000 L CNN
F 1 "MountingHole" H 4000 4455 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 3900 4500 50  0001 C CNN
F 3 "~" H 3900 4500 50  0001 C CNN
	1    3900 4500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F718878
P 3900 4750
F 0 "H3" H 4000 4796 50  0000 L CNN
F 1 "MountingHole" H 4000 4705 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 3900 4750 50  0001 C CNN
F 3 "~" H 3900 4750 50  0001 C CNN
	1    3900 4750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5F718882
P 3900 5000
F 0 "H4" H 4000 5046 50  0000 L CNN
F 1 "MountingHole" H 4000 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 3900 5000 50  0001 C CNN
F 3 "~" H 3900 5000 50  0001 C CNN
	1    3900 5000
	1    0    0    -1  
$EndComp
$Comp
L eec:51281-1294 J6
U 1 1 5F77100F
P 1050 4750
F 0 "J6" H 1750 5315 50  0000 C CNN
F 1 "51281-1294" H 1750 5224 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:Molex-51281-1294-Manufacturer_Recommended" H 1050 5450 50  0001 L CNN
F 3 "http://www.molex.com/webdocs/datasheets/pdf/en-us/0512811294_FFC_FPC_CONNECTORS.pdf" H 1050 5550 50  0001 L CNN
F 4 "12" H 1050 5650 50  0001 L CNN "Circuits Loaded"
F 5 "Manufacturer URL" H 1050 5750 50  0001 L CNN "Component Link 1 Description"
F 6 "http://www.molex.com/molex/index.jsp" H 1050 5850 50  0001 L CNN "Component Link 1 URL"
F 7 "Package Specification" H 1050 5950 50  0001 L CNN "Component Link 3 Description"
F 8 "http://www.molex.com/pdm_docs/sd/512811294_sd.pdf" H 1050 6050 50  0001 L CNN "Component Link 3 URL"
F 9 "Dual" H 1050 6150 50  0001 L CNN "Contact Position"
F 10 "0.5A" H 1050 6250 50  0001 L CNN "Current Max per Contact"
F 11 "20" H 1050 6350 50  0001 L CNN "Durability mating cycles max"
F 12 "90degrees Angle" H 1050 6450 50  0001 L CNN "Entry Angle"
F 13 "1.20mm" H 1050 6550 50  0001 L CNN "Mated Height"
F 14 "Phosphor Bronze" H 1050 6650 50  0001 L CNN "Material   Metal"
F 15 "Gold" H 1050 6750 50  0001 L CNN "Material   Plating Mating"
F 16 "Tin" H 1050 6850 50  0001 L CNN "Material   Plating Termination"
F 17 "Surface Mount" H 1050 6950 50  0001 L CNN "Mounting Technology"
F 18 "1" H 1050 7050 50  0001 L CNN "Number of Rows"
F 19 "Right Angle" H 1050 7150 50  0001 L CNN "Orientation"
F 20 "No" H 1050 7250 50  0001 L CNN "PCB Locator"
F 21 "Yes" H 1050 7350 50  0001 L CNN "PCB Retention"
F 22 "12-Lead FPC Connector, Pitch 0.5 mm" H 1050 7450 50  0001 L CNN "Package Description"
F 23 "Rev. J, 10/2010" H 1050 7550 50  0001 L CNN "Package Version"
F 24 "Tape and Reel" H 1050 7650 50  0001 L CNN "Packing"
F 25 "0.50mm" H 1050 7750 50  0001 L CNN "Pitch   Mating Interface"
F 26 "Yes" H 1050 7850 50  0001 L CNN "Polarized to PCB"
F 27 "No" H 1050 7950 50  0001 L CNN "Stackable"
F 28 "50V" H 1050 8050 50  0001 L CNN "Voltage Max"
F 29 "Conn" H 1050 8150 50  0001 L CNN "category"
F 30 "1130020" H 1050 8250 50  0001 L CNN "ciiva ids"
F 31 "38ce8664f5d5bbe6" H 1050 8350 50  0001 L CNN "library id"
F 32 "Molex" H 1050 8450 50  0001 L CNN "manufacturer"
F 33 "51281-1294" H 1050 8550 50  0001 L CNN "package"
F 34 "1411372361" H 1050 8650 50  0001 L CNN "release date"
F 35 "Yes" H 1050 8750 50  0001 L CNN "rohs"
F 36 "F2413D5A-E530-4996-972E-9EFD49FD3DF5" H 1050 8850 50  0001 L CNN "vault revision"
F 37 "yes" H 1050 8950 50  0001 L CNN "imported"
	1    1050 4750
	1    0    0    -1  
$EndComp
Text Notes 1600 650  0    118  ~ 0
Connectors (outdated)\n
Text Label 10350 3300 0    50   ~ 0
PD3
Wire Wire Line
	10350 3300 9850 3300
Wire Notes Line
	4900 500  4900 5400
$Comp
L Connector:Conn_01x11_Female J7
U 1 1 5F85C19E
P 2200 3300
F 0 "J7" H 2050 2600 50  0000 L CNN
F 1 "Conn_01x11_Female" H 1650 2700 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 2200 3300 50  0001 C CNN
F 3 "~" H 2200 3300 50  0001 C CNN
	1    2200 3300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x11_Female J8
U 1 1 5F85E8C6
P 2800 3300
F 0 "J8" H 2700 2600 50  0000 C CNN
F 1 "Conn_01x11_Female" H 2700 2700 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x11_P2.54mm_Vertical" H 2800 3300 50  0001 C CNN
F 3 "~" H 2800 3300 50  0001 C CNN
	1    2800 3300
	-1   0    0    -1  
$EndComp
Text Label 2000 3300 2    50   ~ 0
D1
Text Label 2000 3200 2    50   ~ 0
D0
Text Label 1900 3500 2    50   ~ 0
GND
Text Label 1900 3100 2    50   ~ 0
VCC
Text Label 2000 3400 2    50   ~ 0
RESET
Wire Wire Line
	1900 3500 2000 3500
Wire Wire Line
	2000 3500 2000 3600
Connection ~ 2000 3500
Connection ~ 2000 3600
Wire Wire Line
	2000 3600 2000 3700
Connection ~ 2000 3700
Wire Wire Line
	2000 3700 2000 3800
Wire Wire Line
	2000 3100 2000 3000
Connection ~ 2000 2900
Wire Wire Line
	2000 2900 2000 2800
Connection ~ 2000 3000
Wire Wire Line
	2000 3000 2000 2900
Wire Wire Line
	2000 3100 1900 3100
Connection ~ 2000 3100
Text Label 3000 3700 0    50   ~ 0
VCC
Text Label 3000 3800 0    50   ~ 0
GND
$EndSCHEMATC
