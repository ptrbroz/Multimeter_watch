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
F 1 "R" V 7066 950 50  0000 C CNN
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
F 1 "R" V 6666 950 50  0000 C CNN
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
F 1 "R" V 6266 950 50  0000 C CNN
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
F 1 "R" V 5466 950 50  0000 C CNN
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
F 1 "R" V 5866 950 50  0000 C CNN
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
Text Label 8300 6000 2    47   ~ 0
PD3
Text Label 8300 5900 2    47   ~ 0
PD2
Text Label 5050 1800 1    47   ~ 0
ADC11
Text Label 10500 900  1    47   ~ 0
ADC2
Text Label 10800 900  1    47   ~ 0
ADC3
Text Notes 5200 1650 0    118  ~ 0
R/L/C/Universal\n
$Comp
L Multimeter_Watch_Custom_Symbols:AudioJack3_Ground_renamedPins J2
U 1 1 5F1EA8B7
P 8050 2250
F 0 "J2" H 7770 2126 50  0000 R CNN
F 1 "AudioJack3_Ground_renamedPins" H 8800 2550 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:Jack_3.5mm_PJ320D_Horizontal_renamedPins" H 8050 2250 50  0001 C CNN
F 3 "~" H 8050 2250 50  0001 C CNN
	1    8050 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	7100 2150 7100 2250
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
F 1 "R_shunt" V 7200 2150 50  0000 C CNN
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
P 7900 3450
F 0 "R11" H 7970 3496 50  0000 L CNN
F 1 "R" H 7970 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7830 3450 50  0001 C CNN
F 3 "~" H 7900 3450 50  0001 C CNN
	1    7900 3450
	1    0    0    -1  
$EndComp
Connection ~ 7900 3300
Wire Wire Line
	7900 3300 8150 3300
$Comp
L Device:R R12
U 1 1 5F2353C3
P 8150 3450
F 0 "R12" H 8220 3496 50  0000 L CNN
F 1 "R" H 8220 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8080 3450 50  0001 C CNN
F 3 "~" H 8150 3450 50  0001 C CNN
	1    8150 3450
	1    0    0    -1  
$EndComp
Connection ~ 8150 3300
Wire Wire Line
	7450 3500 7750 3500
Wire Wire Line
	7750 3500 7750 3700
Wire Wire Line
	7750 3700 7900 3700
Wire Wire Line
	8150 3300 8400 3300
Wire Wire Line
	7450 3600 7650 3600
Wire Wire Line
	7650 3600 7650 3800
Wire Wire Line
	7650 3800 8150 3800
Wire Wire Line
	7900 3600 7900 3700
Connection ~ 7900 3700
Wire Wire Line
	7900 3700 8400 3700
Wire Wire Line
	8150 3600 8150 3800
Connection ~ 8150 3800
Wire Wire Line
	8150 3800 8400 3800
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
F 1 "R" V 10534 1150 50  0000 C CNN
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
	4900 500  4900 4050
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
F 0 "F1" V 7800 2150 50  0000 C CNN
F 1 "Fuse" V 7850 2150 50  0000 C CNN
F 2 "Fuse:Fuse_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7630 2150 50  0001 C CNN
F 3 "~" H 7700 2150 50  0001 C CNN
	1    7700 2150
	0    1    1    0   
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 5F40C910
P 5250 3600
F 0 "BT1" H 5368 3696 50  0000 L CNN
F 1 "Some Li-Po?" H 5368 3605 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0210_1x02_P1.25mm_Vertical" V 5250 3660 50  0001 C CNN
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
GND
Text Label 5500 3300 0    50   ~ 0
VCC
Wire Wire Line
	5250 3700 5250 3800
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
Text Notes 9550 3100 0    118  ~ 0
BUZZER
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
	7550 3300 7900 3300
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
Text Notes 8900 3550 0    78   Italic 0
Has been moved to DisplayBoard
Wire Notes Line
	7000 6500 11200 6500
Wire Notes Line
	11200 500  11200 6500
Wire Notes Line
	7000 6500 7000 4050
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
Text Label 9800 4800 0    50   ~ 0
GND
Text Label 9800 5400 0    50   ~ 0
SCL
Text Label 9800 5500 0    50   ~ 0
SDA
Wire Wire Line
	9800 4800 9700 4800
Wire Wire Line
	9800 4900 9700 4900
Wire Wire Line
	9800 5000 9700 5000
Wire Wire Line
	9800 5100 9700 5100
Wire Wire Line
	9800 5200 9700 5200
Wire Wire Line
	9800 5300 9700 5300
Wire Wire Line
	9800 5400 9700 5400
Wire Wire Line
	9800 5500 9700 5500
Wire Wire Line
	9800 5600 9700 5600
Wire Wire Line
	9800 5700 9700 5700
Text Label 9800 5100 0    50   ~ 0
RESET
Text Label 9800 4900 0    50   ~ 0
VCC_HALF
Text Label 9800 5000 0    50   ~ 0
DACout
Text Label 9800 5700 0    50   ~ 0
SWC
Text Label 9800 5600 0    50   ~ 0
SWD
Text Label 9800 5300 0    50   ~ 0
ADC6
Text Label 9800 5200 0    50   ~ 0
ADC11
Wire Wire Line
	9700 4700 9900 4700
Wire Wire Line
	9700 4600 9900 4600
Wire Wire Line
	9900 4500 9700 4500
Wire Wire Line
	9900 5800 9700 5800
Wire Wire Line
	9700 5900 9900 5900
Wire Wire Line
	9900 6000 9700 6000
Text Label 9900 5900 0    50   ~ 0
SCL
Text Label 9900 5800 0    50   ~ 0
PE5
Text Label 9900 4700 0    50   ~ 0
PB6
Text Label 9900 4600 0    50   ~ 0
PB7
$Comp
L Connector:Conn_01x16_Female J4
U 1 1 5F46892E
P 9500 5200
F 0 "J4" H 9300 4200 50  0000 C CNN
F 1 "Conn_01x16_Female" H 9300 4300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 9500 5200 50  0001 C CNN
F 3 "~" H 9500 5200 50  0001 C CNN
	1    9500 5200
	-1   0    0    -1  
$EndComp
Text Notes 7900 4700 3    50   Italic 0
Charger/Comm shield outline
Wire Notes Line style dotted
	7950 4900 8250 4900
Wire Notes Line style dotted
	7950 5600 7950 4900
Wire Notes Line style dotted
	8250 5600 7950 5600
Connection ~ 8500 4900
Wire Wire Line
	8500 4900 8500 4800
Wire Wire Line
	8500 5000 8500 4900
Connection ~ 8500 5000
Wire Wire Line
	8500 5000 8500 5100
Wire Wire Line
	8400 5000 8500 5000
Connection ~ 8500 5600
Wire Wire Line
	8500 5600 8500 5700
Wire Wire Line
	8500 5500 8500 5600
Wire Wire Line
	8500 5400 8500 5500
Connection ~ 8500 5500
Wire Wire Line
	8400 5500 8500 5500
Wire Wire Line
	8400 5300 8500 5300
Wire Wire Line
	8400 5200 8500 5200
Text Label 8400 5300 2    50   ~ 0
D1
Text Label 8400 5200 2    50   ~ 0
D0
Text Label 8400 5500 2    50   ~ 0
GND
Text Label 8400 5000 2    50   ~ 0
VCC
Wire Wire Line
	8500 4700 8300 4700
Wire Wire Line
	8500 4600 8300 4600
Wire Wire Line
	8500 4500 8300 4500
Wire Wire Line
	8500 6000 8300 6000
Wire Wire Line
	8300 5900 8500 5900
Wire Wire Line
	8500 5800 8300 5800
Text Label 9900 6000 0    50   ~ 0
SDA
Text Label 5950 1300 0    50   ~ 0
PD7
Text Label 8300 4600 2    50   ~ 0
PD6
Text Label 8300 4700 2    50   ~ 0
PD5
$Comp
L Connector:Conn_01x16_Female J5
U 1 1 5F44F8AA
P 8700 5200
F 0 "J5" H 8550 4200 50  0000 L CNN
F 1 "Conn_01x16_Female" H 8200 4300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 8700 5200 50  0001 C CNN
F 3 "~" H 8700 5200 50  0001 C CNN
	1    8700 5200
	1    0    0    -1  
$EndComp
Wire Notes Line
	8250 4900 8750 4900
Wire Notes Line
	8750 4900 8750 5600
Wire Notes Line
	8750 5600 8250 5600
Wire Wire Line
	7550 2150 7500 2150
Wire Wire Line
	7500 2150 7500 2050
Connection ~ 7500 2150
Wire Wire Line
	7500 2150 7450 2150
Wire Wire Line
	7100 2250 7850 2250
Text Label 9900 4500 0    50   ~ 0
VCC
Text Label 8300 5800 2    50   ~ 0
PE4
Text Label 8300 4500 2    50   ~ 0
GND
Text Label 6350 1300 0    50   ~ 0
PB0
Wire Wire Line
	5200 1050 7350 1050
Wire Wire Line
	7350 950  7100 950 
Text Notes 3650 7200 1    31   ~ 0
voltage\n
Text Notes 5250 5850 0    50   ~ 0
voltage\n
Wire Notes Line rgb(194, 0, 184)
	4900 5700 5600 5700
Wire Notes Line rgb(194, 0, 184)
	5600 7250 5600 5700
Wire Notes Line rgb(194, 0, 184)
	3550 7250 5600 7250
Wire Notes Line rgb(194, 0, 184)
	3550 6850 3550 7250
Wire Notes Line rgb(194, 0, 184)
	3750 6850 3550 6850
Wire Notes Line rgb(194, 0, 184)
	3750 7200 3750 6850
Wire Notes Line rgb(194, 0, 184)
	5400 7200 3750 7200
Wire Notes Line rgb(194, 0, 184)
	5400 5950 5400 7200
Wire Notes Line rgb(194, 0, 184)
	4900 5950 5400 5950
Wire Notes Line rgb(194, 0, 184)
	4900 5900 4900 5950
Wire Notes Line rgb(194, 0, 184)
	5000 5900 4900 5900
Wire Notes Line rgb(194, 0, 184)
	5000 5800 5000 5900
Wire Notes Line rgb(194, 0, 184)
	4900 5800 5000 5800
Wire Notes Line rgb(194, 0, 184)
	4900 5700 4900 5800
Text Notes 4900 6750 0    50   ~ 0
RLC\n
Text Notes 5050 5450 0    50   ~ 0
current\n
Wire Notes Line rgb(194, 0, 10)
	4900 6200 4900 6550
Wire Notes Line rgb(194, 0, 10)
	4550 6550 4900 6550
Wire Notes Line rgb(194, 0, 10)
	4550 7100 4550 6550
Wire Notes Line rgb(194, 0, 10)
	5200 7100 4550 7100
Wire Notes Line rgb(194, 0, 10)
	5200 6000 5200 7100
Wire Notes Line rgb(194, 0, 10)
	4900 6000 5200 6000
Wire Notes Line rgb(194, 0, 10)
	4900 6100 4900 6000
Wire Notes Line rgb(194, 0, 10)
	5100 6100 4900 6100
Wire Notes Line rgb(194, 0, 10)
	5100 6200 5100 6100
Wire Notes Line rgb(194, 0, 10)
	4900 6200 5100 6200
Wire Notes Line
	4900 5350 4900 5650
Wire Notes Line
	5450 5350 4900 5350
Wire Notes Line
	5450 5650 5450 5350
Wire Notes Line
	4900 5650 5450 5650
Wire Wire Line
	2800 6100 2500 6100
Connection ~ 2800 6100
Wire Wire Line
	2800 6000 2800 6100
Wire Wire Line
	2800 5700 2500 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5800 2800 5700
$Comp
L Device:C_Small C3
U 1 1 5F284FFC
P 2800 5900
F 0 "C3" V 2600 5900 50  0000 C CNN
F 1 "100n" V 2700 5900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 5900 50  0001 C CNN
F 3 "~" H 2800 5900 50  0001 C CNN
	1    2800 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 5950 3500 5950
Wire Wire Line
	2950 6100 2800 6100
Wire Wire Line
	2950 5950 2950 6100
Wire Wire Line
	2950 5850 3500 5850
Wire Wire Line
	2950 5700 2800 5700
Wire Wire Line
	2950 5850 2950 5700
Wire Wire Line
	3800 5250 3800 5100
Wire Wire Line
	3800 5100 3700 5100
Text Label 3700 5100 2    47   ~ 0
PD2
Wire Wire Line
	3500 5550 3350 5550
Text Label 3350 5550 2    47   ~ 0
PD3
Wire Wire Line
	3900 5250 3900 5000
Wire Wire Line
	3900 5000 3700 5000
Wire Wire Line
	4000 5250 4000 4900
Wire Wire Line
	4000 4900 3700 4900
Wire Wire Line
	4100 5250 4100 4800
Wire Wire Line
	4100 4800 3700 4800
Wire Wire Line
	4500 5250 4500 5100
Wire Wire Line
	4500 5100 4600 5100
Wire Wire Line
	4400 5250 4400 5000
Wire Wire Line
	4400 5000 4600 5000
Wire Wire Line
	4300 5250 4300 4900
Wire Wire Line
	4300 4900 4600 4900
Wire Wire Line
	4200 5250 4200 4800
Wire Wire Line
	4200 4800 4600 4800
Text Label 4600 4900 0    47   ~ 0
SCL
Text Label 4600 4800 0    47   ~ 0
SDA
Wire Wire Line
	4500 6550 4500 6700
Wire Wire Line
	4500 6700 4600 6700
Wire Wire Line
	4400 6550 4400 6800
Wire Wire Line
	4400 6800 4600 6800
Wire Wire Line
	4300 6550 4300 6900
Wire Wire Line
	4300 6900 4600 6900
Wire Wire Line
	4200 6550 4200 7000
Wire Wire Line
	4200 7000 4600 7000
Wire Wire Line
	3800 6550 3800 6700
Wire Wire Line
	3800 6700 3700 6700
Wire Wire Line
	3900 6550 3900 6800
Wire Wire Line
	3900 6800 3700 6800
Wire Wire Line
	4000 6550 4000 6900
Wire Wire Line
	4000 6900 3700 6900
Wire Wire Line
	4100 6550 4100 7000
Wire Wire Line
	4100 7000 3700 7000
Text Label 4600 6800 0    50   ~ 0
PB3
Text Label 4600 6700 0    50   ~ 0
PB4
Text Label 4600 6900 0    50   ~ 0
PB2
Text Label 4600 7000 0    50   ~ 0
PB1
Text Label 4950 6050 0    50   ~ 0
ADC6
$Comp
L Multimeter_Watch_Custom_Symbols:LGT8F328P-QFP32L CPU1
U 1 1 5F1CAE43
P 4150 5900
F 0 "CPU1" H 4700 5400 50  0000 L CNN
F 1 "LGT8F328P-QFP32L" H 4700 5300 50  0000 L CNN
F 2 "Package_QFP:TQFP-32_7x7mm_P0.8mm" H 4200 5850 50  0001 C CNN
F 3 "" H 4250 5850 50  0001 C CNN
	1    4150 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6050 4950 6050
Wire Wire Line
	4800 6150 4950 6150
Wire Wire Line
	4800 6250 4950 6250
Wire Wire Line
	4800 5750 4950 5750
Wire Wire Line
	4800 5850 4950 5850
Wire Wire Line
	4800 5950 4950 5950
Wire Wire Line
	4800 5550 4950 5550
Wire Wire Line
	4800 5650 4950 5650
Wire Wire Line
	3500 5750 3350 5750
Wire Wire Line
	3500 5650 3350 5650
Wire Wire Line
	3500 6150 3350 6150
Wire Wire Line
	3500 6050 3350 6050
Wire Wire Line
	3500 6250 3350 6250
Text Label 4950 5750 0    50   ~ 0
ADC7
Text Label 4950 5950 0    50   ~ 0
ADC10
Text Label 4950 6250 0    50   ~ 0
ADC11
Text Label 4950 5650 0    50   ~ 0
ADC0
Text Label 4950 5550 0    50   ~ 0
ADC1
Text Label 3700 7000 2    50   ~ 0
PB0
Text Label 3350 5750 2    50   ~ 0
PE4
Text Label 3350 5650 2    50   ~ 0
PD4
Text Label 3350 6050 2    50   ~ 0
PE5
Text Label 3350 6150 2    50   ~ 0
PB6
Text Label 3350 6250 2    50   ~ 0
PB7
Text Label 3700 6700 2    50   ~ 0
PD5
Text Label 3700 6800 2    50   ~ 0
PD6
Text Label 3700 6900 2    50   ~ 0
PD7
Text Label 4600 5000 0    50   ~ 0
ADC3
Text Label 4600 5100 0    50   ~ 0
ADC2
Text Label 2500 6100 2    50   ~ 0
GND
Text Label 2500 5700 2    50   ~ 0
VCC
Text Label 4950 5850 0    50   ~ 0
SWD
Text Label 4950 6150 0    50   ~ 0
SWC
Text Label 3700 4800 2    50   ~ 0
RESET
Text Label 3700 4900 2    50   ~ 0
D0
Text Label 3700 5000 2    50   ~ 0
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
F 1 "C_Small" V 10312 1350 50  0000 C CNN
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
F 1 "R_Small" V 10145 1350 50  0000 C CNN
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
F 1 "C_Small" V 10012 2450 50  0000 C CNN
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
F 1 "R_Small" V 10045 2250 50  0000 C CNN
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
	4550 4950 4550 5150
Wire Notes Line
	4550 5150 4900 5150
Wire Notes Line
	4900 5150 4900 4950
Wire Notes Line
	4900 4950 4550 4950
Text Notes 4950 5050 0    50   ~ 0
dacout\n
Wire Notes Line
	3400 5500 3400 5700
Wire Notes Line
	3400 5700 3100 5700
Wire Notes Line
	3100 5700 3100 5500
Wire Notes Line
	3100 5500 3400 5500
Text Notes 2850 5650 0    50   ~ 0
dacout
Wire Notes Line
	3750 6800 3450 6800
Wire Notes Line
	3450 6800 3450 6600
Wire Notes Line
	3450 6600 3750 6600
Wire Notes Line
	3750 6600 3750 6800
Wire Notes Line
	3150 5750 3150 6300
Wire Notes Line
	3150 6300 3450 6300
Wire Notes Line
	3450 6300 3450 5750
Wire Notes Line
	3150 5750 3450 5750
Wire Notes Line
	3350 6300 3350 6700
Wire Notes Line
	3350 6700 3450 6700
Wire Notes Line
	3450 6650 3400 6650
Wire Notes Line
	3400 6650 3400 6300
Text Notes 3050 6550 0    50   ~ 0
buttons\n
Wire Notes Line
	3750 5050 3750 5150
Wire Notes Line
	3750 5150 3400 5150
Wire Notes Line
	3400 5150 3400 5050
Wire Notes Line
	3400 5050 3750 5050
Text Notes 3200 5050 0    50   ~ 0
buzzer
$EndSCHEMATC
