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
F 2 "Package_SO:SOIC-8-1EP_3.9x4.9mm_P1.27mm_EP2.29x3mm" H 6900 3400 47  0001 C CNN
F 3 "" H 6900 3400 47  0001 C CNN
	1    7000 3450
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
	6550 3300 6450 3300
Wire Wire Line
	6450 3300 6450 3050
Wire Wire Line
	6150 3050 6150 3400
Wire Wire Line
	6150 3400 6550 3400
Text Label 5300 1400 0    47   ~ 0
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
	10100 1150 10250 1150
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
	10550 1150 10650 1150
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
L Connector:Conn_01x16_Female J5
U 1 1 5F44F8AA
P 10250 5200
F 0 "J5" H 10100 4200 50  0000 L CNN
F 1 "Conn_01x16_Female" H 9750 4300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 10250 5200 50  0001 C CNN
F 3 "~" H 10250 5200 50  0001 C CNN
	1    10250 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J4
U 1 1 5F46892E
P 7850 5200
F 0 "J4" H 7650 4200 50  0000 C CNN
F 1 "Conn_01x16_Female" H 7650 4300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical" H 7850 5200 50  0001 C CNN
F 3 "~" H 7850 5200 50  0001 C CNN
	1    7850 5200
	-1   0    0    -1  
$EndComp
Text Label 8250 4600 0    50   ~ 0
BUTT1
Text Label 8250 4700 0    50   ~ 0
BUTT2
Text Label 8250 5800 0    50   ~ 0
BUTT3
Text Label 9850 4600 2    50   ~ 0
BUTT4
Text Label 9850 4700 2    50   ~ 0
BUTT5
Text Label 9850 5800 2    50   ~ 0
BUTT6
Text Label 9850 4500 2    50   ~ 0
SDA
Text Label 8250 4500 0    50   ~ 0
SCL
Text Label 8250 5900 0    50   ~ 0
PE4
Wire Wire Line
	10050 5800 9850 5800
Wire Wire Line
	9850 5900 10050 5900
Wire Wire Line
	10050 6000 9850 6000
Wire Wire Line
	8250 6000 8050 6000
Wire Wire Line
	8050 5900 8250 5900
Wire Wire Line
	8250 5800 8050 5800
Wire Wire Line
	8250 4500 8050 4500
Wire Wire Line
	8050 4600 8250 4600
Wire Wire Line
	10050 4500 9850 4500
Wire Wire Line
	10050 4600 9850 4600
Text Label 9850 6000 2    50   ~ 0
GND
Wire Wire Line
	10050 4700 9850 4700
Text Label 8250 6000 0    50   ~ 0
VCC
Wire Wire Line
	8050 4700 8250 4700
Text Label 9950 5000 2    50   ~ 0
VCC
Text Label 9950 5500 2    50   ~ 0
GND
Text Label 9950 5200 2    50   ~ 0
D0
Text Label 9950 5300 2    50   ~ 0
D1
Text Label 8150 5000 0    50   ~ 0
ADC6
Text Label 8150 4900 0    50   ~ 0
ADC7
Text Label 8150 5600 0    50   ~ 0
SWD
Text Label 8150 5500 0    50   ~ 0
SWC
Text Label 8150 5100 0    50   ~ 0
DACout
Text Label 8150 5400 0    50   ~ 0
VCC_HALF
Text Label 8150 5700 0    50   ~ 0
RESET
Wire Wire Line
	9950 5200 10050 5200
Wire Wire Line
	9950 5300 10050 5300
Wire Wire Line
	9950 5500 10050 5500
Connection ~ 10050 5500
Wire Wire Line
	10050 5400 10050 5500
Wire Wire Line
	10050 5500 10050 5600
Wire Wire Line
	10050 5600 10050 5700
Connection ~ 10050 5600
Wire Wire Line
	9950 5000 10050 5000
Wire Wire Line
	10050 5000 10050 5100
Connection ~ 10050 5000
Wire Wire Line
	10050 5000 10050 4900
Wire Wire Line
	10050 4900 10050 4800
Connection ~ 10050 4900
Wire Wire Line
	8150 5700 8050 5700
Text Label 9850 5900 2    50   ~ 0
PB0
Wire Wire Line
	8150 5600 8050 5600
Wire Wire Line
	8150 5500 8050 5500
Wire Wire Line
	8150 5400 8050 5400
Wire Wire Line
	8150 5300 8050 5300
Wire Wire Line
	8150 5200 8050 5200
Wire Wire Line
	8150 5100 8050 5100
Wire Wire Line
	8150 5000 8050 5000
Wire Wire Line
	8150 4900 8050 4900
Wire Wire Line
	8150 4800 8050 4800
Text Label 8150 5300 0    50   ~ 0
SDA
Text Label 8150 5200 0    50   ~ 0
SCL
Text Label 8150 4800 0    50   ~ 0
TODO_GND
Wire Notes Line style dotted
	10200 5600 10200 4900
Wire Notes Line style dotted
	10200 4900 10500 4900
Wire Notes Line style dotted
	10500 4900 10500 5600
Wire Notes Line style dotted
	10500 5600 10200 5600
Text Label 3700 5000 2    50   ~ 0
D1
Text Label 3700 4900 2    50   ~ 0
D0
Text Label 3700 4800 2    50   ~ 0
RESET
Text Label 4950 6150 0    50   ~ 0
SWC
Text Label 4950 5850 0    50   ~ 0
SWD
Text Label 2500 5700 2    50   ~ 0
VCC
Text Label 2500 6100 2    50   ~ 0
GND
Text Label 4600 5100 0    50   ~ 0
ADC2
Text Label 4600 5000 0    50   ~ 0
ADC3
Text Label 3700 6900 2    50   ~ 0
BUTT6
Text Label 3700 6800 2    50   ~ 0
BUTT5
Text Label 3700 6700 2    50   ~ 0
BUTT4
Text Label 3350 6250 2    50   ~ 0
BUTT3
Text Label 3350 6150 2    50   ~ 0
BUTT2
Text Label 3350 6050 2    50   ~ 0
BUTT1
Text Label 3350 5650 2    50   ~ 0
PD4
Text Label 3350 5750 2    50   ~ 0
PE4
Text Label 3700 7000 2    50   ~ 0
PB0
Text Label 4950 5550 0    50   ~ 0
ADC1
Text Label 4950 5650 0    50   ~ 0
ADC0
Text Label 4950 6250 0    50   ~ 0
AD11
Text Label 4950 5950 0    50   ~ 0
AD10
Text Label 4950 5750 0    50   ~ 0
ADC7
Wire Wire Line
	3500 6250 3350 6250
Wire Wire Line
	3500 6050 3350 6050
Wire Wire Line
	3500 6150 3350 6150
Wire Wire Line
	3500 5650 3350 5650
Wire Wire Line
	3500 5750 3350 5750
Wire Wire Line
	4800 5650 4950 5650
Wire Wire Line
	4800 5550 4950 5550
Wire Wire Line
	4800 5950 4950 5950
Wire Wire Line
	4800 5850 4950 5850
Wire Wire Line
	4800 5750 4950 5750
Wire Wire Line
	4800 6250 4950 6250
Wire Wire Line
	4800 6150 4950 6150
Wire Wire Line
	4800 6050 4950 6050
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
Text Label 4950 6050 0    50   ~ 0
ADC6
Text Label 4600 7000 0    50   ~ 0
PB1
Text Label 4600 6900 0    50   ~ 0
PB2
Text Label 4600 6700 0    50   ~ 0
PB4
Text Label 4600 6800 0    50   ~ 0
PB3
Wire Wire Line
	4100 7000 3700 7000
Wire Wire Line
	4100 6550 4100 7000
Wire Wire Line
	4000 6900 3700 6900
Wire Wire Line
	4000 6550 4000 6900
Wire Wire Line
	3900 6800 3700 6800
Wire Wire Line
	3900 6550 3900 6800
Wire Wire Line
	3800 6700 3700 6700
Wire Wire Line
	3800 6550 3800 6700
Wire Wire Line
	4200 7000 4600 7000
Wire Wire Line
	4200 6550 4200 7000
Wire Wire Line
	4300 6900 4600 6900
Wire Wire Line
	4300 6550 4300 6900
Wire Wire Line
	4400 6800 4600 6800
Wire Wire Line
	4400 6550 4400 6800
Wire Wire Line
	4500 6700 4600 6700
Wire Wire Line
	4500 6550 4500 6700
Text Label 4600 4800 0    47   ~ 0
SDA
Text Label 4600 4900 0    47   ~ 0
SCL
Wire Wire Line
	4200 4800 4600 4800
Wire Wire Line
	4200 5250 4200 4800
Wire Wire Line
	4300 4900 4600 4900
Wire Wire Line
	4300 5250 4300 4900
Wire Wire Line
	4400 5000 4600 5000
Wire Wire Line
	4400 5250 4400 5000
Wire Wire Line
	4500 5100 4600 5100
Wire Wire Line
	4500 5250 4500 5100
Wire Wire Line
	4100 4800 3700 4800
Wire Wire Line
	4100 5250 4100 4800
Wire Wire Line
	4000 4900 3700 4900
Wire Wire Line
	4000 5250 4000 4900
Wire Wire Line
	3900 5000 3700 5000
Wire Wire Line
	3900 5250 3900 5000
Text Label 3350 5550 2    47   ~ 0
PD3
Wire Wire Line
	3500 5550 3350 5550
Text Label 3700 5100 2    47   ~ 0
PD2
Wire Wire Line
	3800 5100 3700 5100
Wire Wire Line
	3800 5250 3800 5100
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
Wire Wire Line
	2950 5850 2950 5700
Wire Wire Line
	2950 5700 2800 5700
Wire Wire Line
	2950 5850 3500 5850
Wire Wire Line
	2950 5950 2950 6100
Wire Wire Line
	2950 6100 2800 6100
Wire Wire Line
	2950 5950 3500 5950
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
	2800 5800 2800 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5700 2500 5700
Wire Wire Line
	2800 6000 2800 6100
Connection ~ 2800 6100
Wire Wire Line
	2800 6100 2500 6100
Wire Notes Line
	8600 350  8600 4050
Text Notes 8900 3550 0    78   Italic 0
Has been moved to DisplayBoard
Text Notes 10600 5800 1    50   Italic 0
Charger/Comm shield outline
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
	10650 1500 10650 1150
Wire Wire Line
	9300 1500 10650 1500
Connection ~ 10650 1150
Wire Wire Line
	10650 1150 10750 1150
$EndSCHEMATC
