EESchema Schematic File Version 4
LIBS:Multimeter_Watch_DisplayBoardCapButtons-cache
EELAYER 26 0
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
Text Label 10700 1100 0    50   ~ 0
GND
Text Label 10700 1300 0    50   ~ 0
VCC_HALF
Text Label 10700 1600 0    50   ~ 0
DACout
Text Label 10700 1700 0    50   ~ 0
SWD
Text Label 10700 1500 0    50   ~ 0
ADC6
Text Label 10700 1400 0    50   ~ 0
ADC3
$Comp
L Multimeter_Watch_DisplayBoardCapButtons-rescue:51281-1294-eec J1
U 1 1 5F77100F
P 4350 1550
F 0 "J1" H 5050 2115 50  0000 C CNN
F 1 "51281-1294" H 5050 2024 50  0000 C CNN
F 2 "Multimeter_Watch_Custom_Footprints:Molex-51281-1294-Manufacturer_Recommended" H 4350 2250 50  0001 L CNN
F 3 "http://www.molex.com/webdocs/datasheets/pdf/en-us/0512811294_FFC_FPC_CONNECTORS.pdf" H 4350 2350 50  0001 L CNN
F 4 "12" H 4350 2450 50  0001 L CNN "Circuits Loaded"
F 5 "Manufacturer URL" H 4350 2550 50  0001 L CNN "Component Link 1 Description"
F 6 "http://www.molex.com/molex/index.jsp" H 4350 2650 50  0001 L CNN "Component Link 1 URL"
F 7 "Package Specification" H 4350 2750 50  0001 L CNN "Component Link 3 Description"
F 8 "http://www.molex.com/pdm_docs/sd/512811294_sd.pdf" H 4350 2850 50  0001 L CNN "Component Link 3 URL"
F 9 "Dual" H 4350 2950 50  0001 L CNN "Contact Position"
F 10 "0.5A" H 4350 3050 50  0001 L CNN "Current Max per Contact"
F 11 "20" H 4350 3150 50  0001 L CNN "Durability mating cycles max"
F 12 "90degrees Angle" H 4350 3250 50  0001 L CNN "Entry Angle"
F 13 "1.20mm" H 4350 3350 50  0001 L CNN "Mated Height"
F 14 "Phosphor Bronze" H 4350 3450 50  0001 L CNN "Material   Metal"
F 15 "Gold" H 4350 3550 50  0001 L CNN "Material   Plating Mating"
F 16 "Tin" H 4350 3650 50  0001 L CNN "Material   Plating Termination"
F 17 "Surface Mount" H 4350 3750 50  0001 L CNN "Mounting Technology"
F 18 "1" H 4350 3850 50  0001 L CNN "Number of Rows"
F 19 "Right Angle" H 4350 3950 50  0001 L CNN "Orientation"
F 20 "No" H 4350 4050 50  0001 L CNN "PCB Locator"
F 21 "Yes" H 4350 4150 50  0001 L CNN "PCB Retention"
F 22 "12-Lead FPC Connector, Pitch 0.5 mm" H 4350 4250 50  0001 L CNN "Package Description"
F 23 "Rev. J, 10/2010" H 4350 4350 50  0001 L CNN "Package Version"
F 24 "Tape and Reel" H 4350 4450 50  0001 L CNN "Packing"
F 25 "0.50mm" H 4350 4550 50  0001 L CNN "Pitch   Mating Interface"
F 26 "Yes" H 4350 4650 50  0001 L CNN "Polarized to PCB"
F 27 "No" H 4350 4750 50  0001 L CNN "Stackable"
F 28 "50V" H 4350 4850 50  0001 L CNN "Voltage Max"
F 29 "Conn" H 4350 4950 50  0001 L CNN "category"
F 30 "1130020" H 4350 5050 50  0001 L CNN "ciiva ids"
F 31 "38ce8664f5d5bbe6" H 4350 5150 50  0001 L CNN "library id"
F 32 "Molex" H 4350 5250 50  0001 L CNN "manufacturer"
F 33 "51281-1294" H 4350 5350 50  0001 L CNN "package"
F 34 "1411372361" H 4350 5450 50  0001 L CNN "release date"
F 35 "Yes" H 4350 5550 50  0001 L CNN "rohs"
F 36 "F2413D5A-E530-4996-972E-9EFD49FD3DF5" H 4350 5650 50  0001 L CNN "vault revision"
F 37 "yes" H 4350 5750 50  0001 L CNN "imported"
	1    4350 1550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x11_Female J3
U 1 1 5F85E8C6
P 10500 1600
F 0 "J3" H 10400 900 50  0000 C CNN
F 1 "Conn_01x11_Female" H 10400 1000 50  0000 C CNN
F 2 "" H 10500 1600 50  0001 C CNN
F 3 "~" H 10500 1600 50  0001 C CNN
	1    10500 1600
	-1   0    0    -1  
$EndComp
Text Label 9650 1800 2    50   ~ 0
GND
Text Label 9650 1400 2    50   ~ 0
VCC
Wire Wire Line
	9650 1800 9750 1800
Wire Wire Line
	9750 1400 9650 1400
Text Label 10700 2000 0    50   ~ 0
VCC
Text Label 10700 2100 0    50   ~ 0
GND
Text Label 9750 1600 2    50   ~ 0
D0
Text Label 9750 1700 2    50   ~ 0
D1
Text Label 9750 1500 2    50   ~ 0
RESET
Text Label 10700 1800 0    50   ~ 0
SCL
Text Label 10700 1900 0    50   ~ 0
SDA
Text Notes 4600 800  0    118  ~ 0
Connector
Wire Notes Line rgb(194, 0, 0)
	9750 2000 9450 2000
Wire Notes Line rgb(194, 0, 0)
	9450 2000 9450 1200
Wire Notes Line rgb(194, 0, 0)
	9450 1200 9750 1200
Text Notes 9400 1900 1    50   ~ 0
Charger outline
Text Notes 700  800  0    118  ~ 0
2.1 mm screw holes
$Comp
L Mechanical:MountingHole H4
U 1 1 5F718882
P 1900 1450
F 0 "H4" H 2000 1496 50  0000 L CNN
F 1 "MountingHole" H 2000 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 1900 1450 50  0001 C CNN
F 3 "~" H 1900 1450 50  0001 C CNN
	1    1900 1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5F718878
P 850 1450
F 0 "H2" H 950 1496 50  0000 L CNN
F 1 "MountingHole" H 950 1405 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 850 1450 50  0001 C CNN
F 3 "~" H 850 1450 50  0001 C CNN
	1    850  1450
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5F70B240
P 1900 1150
F 0 "H3" H 2000 1196 50  0000 L CNN
F 1 "MountingHole" H 2000 1105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 1900 1150 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H1
U 1 1 5F70AA51
P 850 1150
F 0 "H1" H 950 1196 50  0000 L CNN
F 1 "MountingHole" H 950 1105 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.1mm" H 850 1150 50  0001 C CNN
F 3 "~" H 850 1150 50  0001 C CNN
	1    850  1150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J_1
U 1 1 5F234314
P 3400 1500
F 0 "J_1" V 3554 1212 50  0000 R CNN
F 1 "Conn_01x04_Male" V 3250 1750 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 3400 1500 50  0001 C CNN
F 3 "~" H 3400 1500 50  0001 C CNN
	1    3400 1500
	0    -1   -1   0   
$EndComp
Text Label 3300 1300 1    50   ~ 0
GND
Text Label 3500 1300 1    50   ~ 0
SCL
Text Label 3600 1300 1    50   ~ 0
SDA
Text Notes 3150 800  0    118  ~ 0
Display
Wire Notes Line
	500  1950 6000 1950
Wire Notes Line
	500  500  6000 500 
Wire Notes Line
	2750 1950 2750 500 
Text Label 3400 1300 1    47   ~ 0
PB5
Text Label 7800 900  1    47   ~ 0
PE4
Text Label 8800 900  1    47   ~ 0
PE5
Text Label 8300 900  1    47   ~ 0
PB6
Text Label 7300 900  1    47   ~ 0
PB7
Text Label 6800 900  1    47   ~ 0
PD5
Text Label 6300 900  1    47   ~ 0
PD6
Text Label 4950 1450 3    47   ~ 0
PB5
Text Label 5350 1450 3    50   ~ 0
PE4
Text Label 4450 1450 3    50   ~ 0
SCL
Text Label 4350 1450 3    50   ~ 0
SDA
Text Label 5250 1450 3    50   ~ 0
PE5
Text Label 5150 1750 3    50   ~ 0
VCC
Text Label 5050 1450 3    50   ~ 0
PB7
Text Label 5150 1450 3    50   ~ 0
PB6
Text Label 4550 1450 3    50   ~ 0
GND
Text Label 4850 1450 3    50   ~ 0
PD5
Text Label 4750 1450 3    50   ~ 0
PD6
$Comp
L Connector:Conn_01x11_Female J2
U 1 1 5F85C19E
P 9950 1600
F 0 "J2" H 9800 900 50  0000 L CNN
F 1 "Conn_01x11_Female" H 9400 1000 50  0000 L CNN
F 2 "" H 9950 1600 50  0001 C CNN
F 3 "~" H 9950 1600 50  0001 C CNN
	1    9950 1600
	1    0    0    -1  
$EndComp
Text Label 4650 1450 3    50   ~ 0
GND
Wire Wire Line
	9750 1800 9750 1900
Wire Wire Line
	9750 1100 9750 1200
Text Label 10700 1200 0    50   ~ 0
VCC
Connection ~ 9750 1200
Wire Wire Line
	9750 1200 9750 1300
Connection ~ 9750 1300
Wire Wire Line
	9750 1300 9750 1400
Connection ~ 9750 1400
Connection ~ 9750 1800
Connection ~ 9750 1900
Wire Wire Line
	9750 1900 9750 2000
Connection ~ 9750 2000
Wire Wire Line
	9750 2000 9750 2100
Text Label 5450 1450 3    50   ~ 0
VCC
Wire Notes Line
	4150 500  4150 1950
Text Notes 9500 850  0    50   ~ 0
         Not used in design\n(copied for board outline reference)
$Comp
L Multimeter_Watch_DisplayBoardCapButtons-rescue:AT42QT1070-S-Sensor_Touch U1
U 1 1 5F74E124
P 2500 3350
F 0 "U1" H 2850 2800 50  0000 C CNN
F 1 "AT42QT1070-S" H 2900 2700 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 2500 3350 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/Atmel-9596-AT42-QTouch-BSW-AT42QT1070_Datasheet.pdf" H 2500 3350 50  0001 C CNN
	1    2500 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3450 1400 3450
Text Label 1900 3150 2    50   ~ 0
SCL
Text Label 1900 3050 2    50   ~ 0
SDA
Wire Wire Line
	1900 3350 1500 3350
Wire Wire Line
	1500 3350 1500 3200
Wire Wire Line
	1400 3450 1400 3200
Connection ~ 1400 3450
Wire Wire Line
	1400 3450 1300 3450
$Comp
L Device:R R1
U 1 1 5F752F5A
P 1400 3050
F 0 "R1" H 1550 3000 50  0000 R CNN
F 1 "R" H 1500 3100 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1330 3050 50  0001 C CNN
F 3 "~" H 1400 3050 50  0001 C CNN
	1    1400 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5F753CE1
P 1500 3050
F 0 "R2" H 1570 3096 50  0000 L CNN
F 1 "R" H 1570 3005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1430 3050 50  0001 C CNN
F 3 "~" H 1500 3050 50  0001 C CNN
	1    1500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 2900 1400 2800
Wire Wire Line
	1500 2800 1500 2900
Wire Wire Line
	1400 2800 1450 2800
Wire Wire Line
	1450 2800 1450 2750
Wire Wire Line
	1450 2750 1300 2750
Connection ~ 1450 2800
Wire Wire Line
	1450 2800 1500 2800
Text Label 1300 2750 2    50   ~ 0
VCC
Text Label 1300 3450 2    50   ~ 0
PB6
Wire Wire Line
	2500 2750 2500 2300
Wire Wire Line
	2500 2300 2300 2300
$Comp
L Device:C_Small C1
U 1 1 5F757A39
P 2300 2450
F 0 "C1" H 2100 2450 50  0000 L CNN
F 1 "C_Small" H 1900 2400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2300 2450 50  0001 C CNN
F 3 "~" H 2300 2450 50  0001 C CNN
	1    2300 2450
	1    0    0    -1  
$EndComp
Connection ~ 2300 2300
Wire Wire Line
	2300 2300 2150 2300
Wire Wire Line
	2300 2350 2300 2300
Wire Wire Line
	2300 2550 2300 2600
Wire Wire Line
	2300 2600 2150 2600
Text Label 2150 2600 2    50   ~ 0
GND
Text Label 2150 2300 2    50   ~ 0
VCC
Wire Wire Line
	1900 3650 1750 3650
Wire Wire Line
	1750 3650 1750 4050
Wire Wire Line
	1750 4050 2100 4050
Wire Wire Line
	2500 4050 2500 3950
Wire Wire Line
	2100 4050 2100 4150
Connection ~ 2100 4050
Wire Wire Line
	2100 4050 2500 4050
Text Label 2100 4150 3    50   ~ 0
GND
$Comp
L Device:R_Small R3
U 1 1 5F764747
P 3450 3050
F 0 "R3" V 3400 3200 20  0000 C CNN
F 1 "R" V 3400 3150 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 3050 50  0001 C CNN
F 3 "~" H 3450 3050 50  0001 C CNN
	1    3450 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F7684C5
P 3450 3150
F 0 "R4" V 3400 3300 20  0000 C CNN
F 1 "R" V 3400 3250 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 3150 50  0001 C CNN
F 3 "~" H 3450 3150 50  0001 C CNN
	1    3450 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F768B92
P 3450 3250
F 0 "R5" V 3400 3400 20  0000 C CNN
F 1 "R" V 3400 3350 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 3250 50  0001 C CNN
F 3 "~" H 3450 3250 50  0001 C CNN
	1    3450 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F768B9C
P 3450 3350
F 0 "R6" V 3400 3500 20  0000 C CNN
F 1 "R" V 3400 3450 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 3350 50  0001 C CNN
F 3 "~" H 3450 3350 50  0001 C CNN
	1    3450 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5F769466
P 3450 3450
F 0 "R7" V 3400 3600 20  0000 C CNN
F 1 "R" V 3400 3550 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 3450 50  0001 C CNN
F 3 "~" H 3450 3450 50  0001 C CNN
	1    3450 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5F769470
P 3450 3550
F 0 "R8" V 3400 3700 20  0000 C CNN
F 1 "R" V 3400 3650 20  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3450 3550 50  0001 C CNN
F 3 "~" H 3450 3550 50  0001 C CNN
	1    3450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3050 3100 3050
Wire Wire Line
	3100 3150 3350 3150
Wire Wire Line
	3350 3250 3100 3250
Wire Wire Line
	3100 3350 3350 3350
Wire Wire Line
	3350 3450 3100 3450
Wire Wire Line
	3100 3550 3350 3550
Text Notes 2750 2350 0    118  ~ 0
Touch buttons
Wire Notes Line
	500  4500 6000 4500
Wire Notes Line
	500  500  500  4500
Wire Notes Line
	6000 500  6000 4500
$Comp
L Multimeter_Watch_Custom_Symbols:CapButtons_Directional DIRPAD1
U 1 1 5F7511E5
P 4350 2750
F 0 "DIRPAD1" V 4416 2372 50  0000 R CNN
F 1 "CapButtons_Directional" V 4325 2372 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:CapButtons_Directional" H 4350 3000 50  0001 C CNN
F 3 "" H 4350 3000 50  0001 C CNN
	1    4350 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3550 3250 3700 3250
Wire Wire Line
	3700 3250 3700 2850
Wire Wire Line
	4650 3350 4650 2950
Wire Wire Line
	3550 3350 4650 3350
Wire Wire Line
	4350 3450 4350 2950
Wire Wire Line
	3550 3450 4350 3450
Wire Wire Line
	4550 3550 4550 2950
Wire Wire Line
	3550 3550 4550 3550
Wire Wire Line
	4450 3150 4450 2950
Wire Wire Line
	3550 3150 4450 3150
Wire Wire Line
	4000 2850 4000 3050
Wire Wire Line
	3550 3050 4000 3050
$Comp
L Multimeter_Watch_Custom_Symbols:Touch_Pad PAD1
U 1 1 5F9B02FC
P 3700 2650
F 0 "PAD1" V 3750 3100 50  0000 R CNN
F 1 "Touch_Pad" V 3650 3200 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:CapButton_Left" H 3700 2650 50  0001 C CNN
F 3 "" H 3700 2650 50  0001 C CNN
	1    3700 2650
	0    -1   -1   0   
$EndComp
$Comp
L Multimeter_Watch_Custom_Symbols:Touch_Pad PAD2
U 1 1 5F9B0B06
P 4000 2650
F 0 "PAD2" V 3988 2572 50  0000 R CNN
F 1 "Touch_Pad" V 3897 2572 50  0000 R CNN
F 2 "Multimeter_Watch_Custom_Footprints:CapButton_Right" H 4000 2650 50  0001 C CNN
F 3 "" H 4000 2650 50  0001 C CNN
	1    4000 2650
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
