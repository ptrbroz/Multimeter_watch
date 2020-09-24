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
$Comp
L eec:51281-1294 J1
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
P 8550 5450
F 0 "J3" H 8450 4750 50  0000 C CNN
F 1 "Conn_01x11_Female" H 8450 4850 50  0000 C CNN
F 2 "" H 8550 5450 50  0001 C CNN
F 3 "~" H 8550 5450 50  0001 C CNN
	1    8550 5450
	-1   0    0    -1  
$EndComp
Text Label 7700 5650 2    50   ~ 0
GND
Text Label 7700 5250 2    50   ~ 0
VCC
Wire Wire Line
	7700 5650 7800 5650
Wire Wire Line
	7800 5250 7700 5250
Text Label 8750 5850 0    50   ~ 0
VCC
Text Label 8750 5950 0    50   ~ 0
GND
Text Label 7800 5450 2    50   ~ 0
D0
Text Label 7800 5550 2    50   ~ 0
D1
Text Label 7800 5350 2    50   ~ 0
RESET
Text Label 8750 5650 0    50   ~ 0
SCL
Text Label 8750 5750 0    50   ~ 0
SDA
Text Notes 4600 800  0    118  ~ 0
Connector
Wire Notes Line rgb(194, 0, 191)
	7800 5850 7500 5850
Wire Notes Line rgb(194, 0, 184)
	7500 5850 7500 5050
Wire Notes Line rgb(194, 0, 194)
	7500 5050 7800 5050
Text Notes 7450 5750 1    50   ~ 0
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
L Switch:SW_Push SW4
U 1 1 5F213BA8
P 2400 2850
F 0 "SW4" V 2354 2998 50  0000 L CNN
F 1 "SW_Push" V 2445 2998 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:TVCM04N" H 2400 3050 50  0001 C CNN
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
F 2 "Multimeter_Watch_Custom_Footprints:TVCM04N" H 1900 3050 50  0001 C CNN
F 3 "~" H 1900 3050 50  0001 C CNN
	1    1900 2850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F2149A0
P 900 2850
F 0 "SW1" V 854 2998 50  0000 L CNN
F 1 "SW_Push" V 945 2998 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:TVCM04N" H 900 3050 50  0001 C CNN
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
F 2 "Multimeter_Watch_Custom_Footprints:TVCM04N" H 3400 3050 50  0001 C CNN
F 3 "~" H 3400 3050 50  0001 C CNN
	1    3400 2850
	0    1    1    0   
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5F215EA6
P 1400 2850
F 0 "SW2" V 1354 2998 50  0000 L CNN
F 1 "SW_Push" V 1445 2998 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:TVCM04N" H 1400 3050 50  0001 C CNN
F 3 "~" H 1400 3050 50  0001 C CNN
	1    1400 2850
	0    1    1    0   
$EndComp
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
L Connector:Conn_01x04_Male J_1
U 1 1 5F234314
P 5000 3050
F 0 "J_1" V 5154 2762 50  0000 R CNN
F 1 "Conn_01x04_Male" V 4850 3300 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical" H 5000 3050 50  0001 C CNN
F 3 "~" H 5000 3050 50  0001 C CNN
	1    5000 3050
	0    -1   -1   0   
$EndComp
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
Text Label 5100 2850 1    50   ~ 0
SCL
Text Label 5200 2850 1    50   ~ 0
SDA
Text Notes 1800 2300 0    118  ~ 0
Buttons
Text Notes 4750 2350 0    118  ~ 0
Display
Wire Notes Line
	500  1950 6000 1950
Wire Notes Line
	500  3600 6000 3600
Connection ~ 2900 3050
Wire Wire Line
	2900 3050 3400 3050
Wire Wire Line
	2400 3050 2900 3050
$Comp
L Switch:SW_Push SW5
U 1 1 5F212C00
P 2900 2850
F 0 "SW5" V 2854 2998 50  0000 L CNN
F 1 "SW_Push" V 2945 2998 50  0000 L CNN
F 2 "Multimeter_Watch_Custom_Footprints:TVCM04N" H 2900 3050 50  0001 C CNN
F 3 "~" H 2900 3050 50  0001 C CNN
	1    2900 2850
	0    1    1    0   
$EndComp
Wire Notes Line
	500  500  500  3600
Wire Notes Line
	4100 500  4100 3600
Wire Notes Line
	6000 500  6000 3600
Wire Notes Line
	500  500  6000 500 
Wire Notes Line
	2750 1950 2750 500 
Text Notes 3250 800  0    118  ~ 0
LED
Text Label 5000 2850 1    47   ~ 0
PB5
Text Label 900  2650 1    47   ~ 0
PE4
Text Label 1400 2650 1    47   ~ 0
PE5
Text Label 1900 2650 1    47   ~ 0
PB6
Text Label 2400 2650 1    47   ~ 0
PB7
Text Label 2900 2650 1    47   ~ 0
PD5
Text Label 3400 2650 1    47   ~ 0
PD6
Text Label 4850 1450 3    47   ~ 0
PB5
Text Label 4450 1450 3    50   ~ 0
PE4
Text Label 5350 1450 3    50   ~ 0
SCL
Text Label 5450 1450 3    50   ~ 0
SDA
Text Label 4550 1450 3    50   ~ 0
PE5
Text Label 5150 1750 3    50   ~ 0
VCC
Text Label 4750 1450 3    50   ~ 0
PB7
Text Label 4650 1450 3    50   ~ 0
PB6
Text Label 5250 1450 3    50   ~ 0
GND
Text Label 4950 1450 3    50   ~ 0
PD5
Text Label 5050 1450 3    50   ~ 0
PD6
$Comp
L Connector:Conn_01x11_Female J2
U 1 1 5F85C19E
P 8000 5450
F 0 "J2" H 7850 4750 50  0000 L CNN
F 1 "Conn_01x11_Female" H 7450 4850 50  0000 L CNN
F 2 "" H 8000 5450 50  0001 C CNN
F 3 "~" H 8000 5450 50  0001 C CNN
	1    8000 5450
	1    0    0    -1  
$EndComp
Text Label 5150 1450 3    50   ~ 0
GND
Wire Wire Line
	7800 5650 7800 5750
Wire Wire Line
	7800 4950 7800 5050
Text Label 8750 5050 0    50   ~ 0
VCC
Connection ~ 7800 5050
Wire Wire Line
	7800 5050 7800 5150
Connection ~ 7800 5150
Wire Wire Line
	7800 5150 7800 5250
Connection ~ 7800 5250
Connection ~ 7800 5650
Connection ~ 7800 5750
Wire Wire Line
	7800 5750 7800 5850
Connection ~ 7800 5850
Wire Wire Line
	7800 5850 7800 5950
Text Notes 3250 1350 0    50   Italic 0
removed
Text Label 4350 1450 3    50   ~ 0
VCC
$EndSCHEMATC
