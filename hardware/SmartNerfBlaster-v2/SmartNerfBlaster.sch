EESchema Schematic File Version 4
LIBS:SmartNerfBlaster-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 1
Title "SmartNerfBlaster"
Date "2019-03-04"
Rev "v1"
Comp "Dan Kirkham"
Comment1 "github.com/dankirkham"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Microchip_ATmega:ATmega328P-PU U2
U 1 1 5C674D22
P 5050 3700
F 0 "U2" H 4409 3746 50  0000 R CNN
F 1 "ATmega328P-PU" H 4409 3655 50  0000 R CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 5050 3700 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 5050 3700 50  0001 C CNN
	1    5050 3700
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5C674DD0
P 2600 1050
F 0 "U1" H 2600 1292 50  0000 C CNN
F 1 "L7805" H 2600 1201 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 2625 900 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2600 1000 50  0001 C CNN
	1    2600 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5C674E53
P 2100 950
F 0 "#PWR0101" H 2100 800 50  0001 C CNN
F 1 "+BATT" H 2115 1123 50  0000 C CNN
F 2 "" H 2100 950 50  0001 C CNN
F 3 "" H 2100 950 50  0001 C CNN
	1    2100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 950  2100 1050
Wire Wire Line
	2100 1050 2300 1050
$Comp
L power:+5V #PWR0102
U 1 1 5C674EC7
P 3100 950
F 0 "#PWR0102" H 3100 800 50  0001 C CNN
F 1 "+5V" H 3115 1123 50  0000 C CNN
F 2 "" H 3100 950 50  0001 C CNN
F 3 "" H 3100 950 50  0001 C CNN
	1    3100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 950  3100 1050
Wire Wire Line
	3100 1050 2900 1050
$Comp
L power:GND #PWR0103
U 1 1 5C674F42
P 2600 1550
F 0 "#PWR0103" H 2600 1300 50  0001 C CNN
F 1 "GND" H 2605 1377 50  0000 C CNN
F 2 "" H 2600 1550 50  0001 C CNN
F 3 "" H 2600 1550 50  0001 C CNN
	1    2600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1550 2600 1350
$Comp
L power:+5V #PWR0104
U 1 1 5C674FE8
P 5050 1300
F 0 "#PWR0104" H 5050 1150 50  0001 C CNN
F 1 "+5V" H 5065 1473 50  0000 C CNN
F 2 "" H 5050 1300 50  0001 C CNN
F 3 "" H 5050 1300 50  0001 C CNN
	1    5050 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C675062
P 4550 1650
F 0 "C4" H 4665 1696 50  0000 L CNN
F 1 "100nF" H 4665 1605 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4588 1500 50  0001 C CNN
F 3 "~" H 4550 1650 50  0001 C CNN
	1    4550 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C6750F0
P 4550 1900
F 0 "#PWR0105" H 4550 1650 50  0001 C CNN
F 1 "GND" H 4555 1727 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1300 5050 1400
Wire Wire Line
	5050 1400 5050 2200
Connection ~ 5050 1400
Wire Wire Line
	5150 2200 5150 1400
Wire Wire Line
	5150 1400 5050 1400
Wire Wire Line
	4550 1900 4550 1800
Wire Wire Line
	4550 1500 4550 1400
Wire Wire Line
	4550 1400 5050 1400
Wire Wire Line
	5650 3100 6150 3100
Wire Wire Line
	6150 3200 5650 3200
$Comp
L Device:CP C5
U 1 1 5C675B0F
P 7000 2900
F 0 "C5" V 6748 2900 50  0000 C CNN
F 1 "22uF" V 6839 2900 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7038 2750 50  0001 C CNN
F 3 "~" H 7000 2900 50  0001 C CNN
	1    7000 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C6
U 1 1 5C675B91
P 7000 3400
F 0 "C6" V 7252 3400 50  0000 C CNN
F 1 "22uF" V 7161 3400 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7038 3250 50  0001 C CNN
F 3 "~" H 7000 3400 50  0001 C CNN
	1    7000 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 2900 6150 3100
Wire Wire Line
	6850 3400 6350 3400
Wire Wire Line
	6150 3200 6150 3400
Connection ~ 6350 3400
Wire Wire Line
	6350 3400 6150 3400
$Comp
L power:GND #PWR0106
U 1 1 5C67684C
P 7350 3500
F 0 "#PWR0106" H 7350 3250 50  0001 C CNN
F 1 "GND" H 7355 3327 50  0000 C CNN
F 2 "" H 7350 3500 50  0001 C CNN
F 3 "" H 7350 3500 50  0001 C CNN
	1    7350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 3400 7350 3400
Wire Wire Line
	7350 3400 7350 3500
Wire Wire Line
	7350 3400 7350 2900
Wire Wire Line
	7350 2900 7150 2900
Connection ~ 7350 3400
$Comp
L Device:C C3
U 1 1 5C676E29
P 4050 2750
F 0 "C3" H 4165 2796 50  0000 L CNN
F 1 "100nF" H 4165 2705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4088 2600 50  0001 C CNN
F 3 "~" H 4050 2750 50  0001 C CNN
	1    4050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2500 4050 2600
Wire Wire Line
	4050 2500 4450 2500
$Comp
L power:GND #PWR0107
U 1 1 5C6779EC
P 4050 3000
F 0 "#PWR0107" H 4050 2750 50  0001 C CNN
F 1 "GND" H 4055 2827 50  0000 C CNN
F 2 "" H 4050 3000 50  0001 C CNN
F 3 "" H 4050 3000 50  0001 C CNN
	1    4050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2900 4050 3000
$Comp
L power:GND #PWR0108
U 1 1 5C677E0E
P 5050 5400
F 0 "#PWR0108" H 5050 5150 50  0001 C CNN
F 1 "GND" H 5055 5227 50  0000 C CNN
F 2 "" H 5050 5400 50  0001 C CNN
F 3 "" H 5050 5400 50  0001 C CNN
	1    5050 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5200 5050 5400
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C6782F7
P 800 2150
F 0 "J1" H 906 2328 50  0000 C CNN
F 1 "Conn_01x02_Male" H 906 2237 50  0000 C CNN
F 2 "SmartNerfBlasterFootprints:PowerPads" H 800 2150 50  0001 C CNN
F 3 "~" H 800 2150 50  0001 C CNN
	1    800  2150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 5C67841D
P 8550 5700
F 0 "J8" H 8656 5978 50  0000 C CNN
F 1 "Conn_01x04_Male" H 8656 5887 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 8550 5700 50  0001 C CNN
F 3 "~" H 8550 5700 50  0001 C CNN
	1    8550 5700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5C6784E3
P 800 3050
F 0 "J2" H 906 3428 50  0000 C CNN
F 1 "Conn_01x06_Male" H 906 3337 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B06B-XH-A_06x2.50mm_Straight" H 800 3050 50  0001 C CNN
F 3 "~" H 800 3050 50  0001 C CNN
	1    800  3050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C678774
P 800 5050
F 0 "J4" H 720 5267 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 720 5176 50  0000 C CNN
F 2 "SmartNerfBlasterFootprints:PowerPads" H 800 5050 50  0001 C CNN
F 3 "~" H 800 5050 50  0001 C CNN
	1    800  5050
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5C6787E1
P 800 5600
F 0 "J5" H 720 5817 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 720 5726 50  0000 C CNN
F 2 "SmartNerfBlasterFootprints:PowerPads" H 800 5600 50  0001 C CNN
F 3 "~" H 800 5600 50  0001 C CNN
	1    800  5600
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0109
U 1 1 5C678985
P 1500 2050
F 0 "#PWR0109" H 1500 1900 50  0001 C CNN
F 1 "+BATT" H 1515 2223 50  0000 C CNN
F 2 "" H 1500 2050 50  0001 C CNN
F 3 "" H 1500 2050 50  0001 C CNN
	1    1500 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C678A11
P 1500 2350
F 0 "#PWR0110" H 1500 2100 50  0001 C CNN
F 1 "GND" H 1505 2177 50  0000 C CNN
F 2 "" H 1500 2350 50  0001 C CNN
F 3 "" H 1500 2350 50  0001 C CNN
	1    1500 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2150 1500 2150
Wire Wire Line
	1500 2150 1500 2050
Wire Wire Line
	1000 2250 1500 2250
Wire Wire Line
	1500 2250 1500 2350
Text Label 1500 2950 0    50   ~ 0
Trigger
Text Label 1500 3150 0    50   ~ 0
Flywheel_Button
Text Label 1500 3350 0    50   ~ 0
Pusher_Reset
Wire Wire Line
	1000 2950 1500 2950
Wire Wire Line
	1000 3150 1500 3150
Wire Wire Line
	1000 3350 1500 3350
$Comp
L power:GND #PWR0111
U 1 1 5C67A87A
P 2200 3450
F 0 "#PWR0111" H 2200 3200 50  0001 C CNN
F 1 "GND" H 2205 3277 50  0000 C CNN
F 2 "" H 2200 3450 50  0001 C CNN
F 3 "" H 2200 3450 50  0001 C CNN
	1    2200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 3250 2200 3250
Wire Wire Line
	2200 3250 2200 3450
Wire Wire Line
	1000 3050 2200 3050
Wire Wire Line
	2200 3050 2200 3250
Connection ~ 2200 3250
Wire Wire Line
	1000 2850 2200 2850
Wire Wire Line
	2200 2850 2200 3050
Connection ~ 2200 3050
Wire Wire Line
	8750 5900 9250 5900
$Comp
L power:GND #PWR0112
U 1 1 5C67D91C
P 9950 6000
F 0 "#PWR0112" H 9950 5750 50  0001 C CNN
F 1 "GND" H 9955 5827 50  0000 C CNN
F 2 "" H 9950 6000 50  0001 C CNN
F 3 "" H 9950 6000 50  0001 C CNN
	1    9950 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 5050 1000 5050
Wire Wire Line
	1000 5150 1500 5150
Wire Wire Line
	1500 5600 1000 5600
Wire Wire Line
	1000 5700 1500 5700
Text Label 7700 4400 0    50   ~ 0
Trigger
Text Label 7700 4500 0    50   ~ 0
Flywheel_Button
Text Label 7700 4600 0    50   ~ 0
Pusher_Reset
Text Label 7700 4700 0    50   ~ 0
Door
Text Label 7700 4800 0    50   ~ 0
Magazine
$Comp
L Device:R R4
U 1 1 5C682447
P 6150 4150
F 0 "R4" H 6220 4196 50  0000 L CNN
F 1 "10k" H 6220 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 4150 50  0001 C CNN
F 3 "~" H 6150 4150 50  0001 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C682556
P 6500 4150
F 0 "R5" H 6570 4196 50  0000 L CNN
F 1 "10k" H 6570 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6430 4150 50  0001 C CNN
F 3 "~" H 6500 4150 50  0001 C CNN
	1    6500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C682590
P 6850 4150
F 0 "R6" H 6920 4196 50  0000 L CNN
F 1 "10k" H 6920 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6780 4150 50  0001 C CNN
F 3 "~" H 6850 4150 50  0001 C CNN
	1    6850 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C6825C1
P 7200 4150
F 0 "R7" H 7270 4196 50  0000 L CNN
F 1 "10k" H 7270 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7130 4150 50  0001 C CNN
F 3 "~" H 7200 4150 50  0001 C CNN
	1    7200 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C6825F4
P 7550 4150
F 0 "R8" H 7620 4196 50  0000 L CNN
F 1 "10k" H 7620 4105 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7480 4150 50  0001 C CNN
F 3 "~" H 7550 4150 50  0001 C CNN
	1    7550 4150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5C682665
P 7550 3900
F 0 "#PWR0113" H 7550 3750 50  0001 C CNN
F 1 "+5V" H 7565 4073 50  0000 C CNN
F 2 "" H 7550 3900 50  0001 C CNN
F 3 "" H 7550 3900 50  0001 C CNN
	1    7550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3900 7550 3950
Wire Wire Line
	7550 3950 7200 3950
Wire Wire Line
	6150 3950 6150 4000
Connection ~ 7550 3950
Wire Wire Line
	7550 3950 7550 4000
Wire Wire Line
	6500 3950 6500 4000
Connection ~ 6500 3950
Wire Wire Line
	6500 3950 6150 3950
Wire Wire Line
	6850 3950 6850 4000
Connection ~ 6850 3950
Wire Wire Line
	6850 3950 6500 3950
Wire Wire Line
	7200 3950 7200 4000
Connection ~ 7200 3950
Wire Wire Line
	7200 3950 6850 3950
Wire Wire Line
	5650 4400 6150 4400
Wire Wire Line
	5650 4500 6500 4500
Wire Wire Line
	5650 4700 7200 4700
Wire Wire Line
	7700 4800 7550 4800
Wire Wire Line
	6150 4300 6150 4400
Connection ~ 6150 4400
Wire Wire Line
	6150 4400 7700 4400
Wire Wire Line
	6500 4300 6500 4500
Connection ~ 6500 4500
Wire Wire Line
	6500 4500 7700 4500
Wire Wire Line
	6850 4300 6850 4600
Wire Wire Line
	5650 4600 6850 4600
Connection ~ 6850 4600
Wire Wire Line
	6850 4600 7700 4600
Wire Wire Line
	7200 4300 7200 4700
Connection ~ 7200 4700
Wire Wire Line
	7200 4700 7700 4700
Wire Wire Line
	7550 4300 7550 4800
Connection ~ 7550 4800
Wire Wire Line
	7550 4800 5650 4800
$Comp
L Device:R R3
U 1 1 5C694D97
P 5250 1350
F 0 "R3" H 5320 1396 50  0000 L CNN
F 1 "10k" H 5320 1305 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5180 1350 50  0001 C CNN
F 3 "~" H 5250 1350 50  0001 C CNN
	1    5250 1350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5C694E10
P 5250 1100
F 0 "#PWR0114" H 5250 950 50  0001 C CNN
F 1 "+5V" H 5265 1273 50  0000 C CNN
F 2 "" H 5250 1100 50  0001 C CNN
F 3 "" H 5250 1100 50  0001 C CNN
	1    5250 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4000 5850 4000
Text Label 6150 2800 0    50   ~ 0
Flywheel
Text Label 6150 2700 0    50   ~ 0
Pusher
Wire Wire Line
	6150 2700 5650 2700
Wire Wire Line
	5650 2800 6050 2800
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 5C69BBDF
P 6150 1500
F 0 "J6" H 6200 1817 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 6200 1726 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 6150 1500 50  0001 C CNN
F 3 "~" H 6150 1500 50  0001 C CNN
	1    6150 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2800 6050 2200
Wire Wire Line
	6050 2200 6750 2200
Wire Wire Line
	6750 2200 6750 1500
Wire Wire Line
	6750 1500 6450 1500
Connection ~ 6050 2800
Wire Wire Line
	6050 2800 6150 2800
Wire Wire Line
	5950 1400 5750 1400
Wire Wire Line
	5750 1400 5750 2200
Wire Wire Line
	5750 2200 5950 2200
Wire Wire Line
	5950 2900 5650 2900
Wire Wire Line
	5950 1500 5850 1500
Wire Wire Line
	5850 1500 5850 3000
Wire Wire Line
	5850 3000 5650 3000
$Comp
L power:+5V #PWR0115
U 1 1 5C6A238D
P 6750 1200
F 0 "#PWR0115" H 6750 1050 50  0001 C CNN
F 1 "+5V" H 6765 1373 50  0000 C CNN
F 2 "" H 6750 1200 50  0001 C CNN
F 3 "" H 6750 1200 50  0001 C CNN
	1    6750 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1400 6750 1400
Wire Wire Line
	6750 1400 6750 1200
$Comp
L power:GND #PWR0116
U 1 1 5C6A4AFE
P 6550 1700
F 0 "#PWR0116" H 6550 1450 50  0001 C CNN
F 1 "GND" H 6555 1527 50  0000 C CNN
F 2 "" H 6550 1700 50  0001 C CNN
F 3 "" H 6550 1700 50  0001 C CNN
	1    6550 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1700 6550 1600
Wire Wire Line
	6550 1600 6450 1600
Wire Wire Line
	5950 2200 5950 2900
Text Label 5350 1600 0    50   ~ 0
Reset
Wire Wire Line
	5250 1050 5250 1100
Connection ~ 5250 1100
Wire Wire Line
	5250 1100 5250 1200
Wire Wire Line
	5250 1500 5250 1600
Wire Wire Line
	5250 1600 5950 1600
Text Label 5850 3700 0    50   ~ 0
Reset
Wire Wire Line
	5850 3700 5850 4000
Text Label 7150 1450 0    50   ~ 0
Pusher
Text Label 8550 1450 0    50   ~ 0
Flywheel
Wire Wire Line
	8550 1450 8850 1450
Wire Wire Line
	7150 1450 7450 1450
$Comp
L Device:R R1
U 1 1 5C6C5913
P 7450 1700
F 0 "R1" H 7520 1746 50  0000 L CNN
F 1 "6.8k" H 7520 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7380 1700 50  0001 C CNN
F 3 "~" H 7450 1700 50  0001 C CNN
	1    7450 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C6C5A39
P 8850 1700
F 0 "R2" H 8920 1746 50  0000 L CNN
F 1 "6.8k" H 8920 1655 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8780 1700 50  0001 C CNN
F 3 "~" H 8850 1700 50  0001 C CNN
	1    8850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1550 8850 1450
Connection ~ 8850 1450
Wire Wire Line
	8850 1450 8950 1450
Wire Wire Line
	7450 1550 7450 1450
Connection ~ 7450 1450
Wire Wire Line
	7450 1450 7550 1450
$Comp
L power:GND #PWR0117
U 1 1 5C6CB944
P 7450 1950
F 0 "#PWR0117" H 7450 1700 50  0001 C CNN
F 1 "GND" H 7455 1777 50  0000 C CNN
F 2 "" H 7450 1950 50  0001 C CNN
F 3 "" H 7450 1950 50  0001 C CNN
	1    7450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C6CB9B2
P 8850 1950
F 0 "#PWR0118" H 8850 1700 50  0001 C CNN
F 1 "GND" H 8855 1777 50  0000 C CNN
F 2 "" H 8850 1950 50  0001 C CNN
F 3 "" H 8850 1950 50  0001 C CNN
	1    8850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1950 8850 1850
Wire Wire Line
	7450 1850 7450 1950
$Comp
L power:GND #PWR0119
U 1 1 5C6D203D
P 9250 1950
F 0 "#PWR0119" H 9250 1700 50  0001 C CNN
F 1 "GND" H 9255 1777 50  0000 C CNN
F 2 "" H 9250 1950 50  0001 C CNN
F 3 "" H 9250 1950 50  0001 C CNN
	1    9250 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5C6D20AB
P 7850 1950
F 0 "#PWR0120" H 7850 1700 50  0001 C CNN
F 1 "GND" H 7855 1777 50  0000 C CNN
F 2 "" H 7850 1950 50  0001 C CNN
F 3 "" H 7850 1950 50  0001 C CNN
	1    7850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1950 7850 1650
Wire Wire Line
	9250 1950 9250 1650
$Comp
L power:+BATT #PWR0121
U 1 1 5C6D8B4D
P 1500 5400
F 0 "#PWR0121" H 1500 5250 50  0001 C CNN
F 1 "+BATT" H 1515 5573 50  0000 C CNN
F 2 "" H 1500 5400 50  0001 C CNN
F 3 "" H 1500 5400 50  0001 C CNN
	1    1500 5400
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0122
U 1 1 5C6D8BBB
P 1500 4850
F 0 "#PWR0122" H 1500 4700 50  0001 C CNN
F 1 "+BATT" H 1515 5023 50  0000 C CNN
F 2 "" H 1500 4850 50  0001 C CNN
F 3 "" H 1500 4850 50  0001 C CNN
	1    1500 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 4850 1500 5050
Wire Wire Line
	1500 5400 1500 5600
Text Label 1500 5150 0    50   ~ 0
Pusher_Power
Text Label 1500 5700 0    50   ~ 0
Flywheel_Power
Text Label 7850 1050 0    50   ~ 0
Pusher_Power
Wire Wire Line
	7850 1050 7850 1250
Text Label 9250 1050 0    50   ~ 0
Flywheel_Power
Wire Wire Line
	9250 1050 9250 1250
$Comp
L Device:CP C1
U 1 1 5C70A413
P 2100 1300
F 0 "C1" H 2215 1346 50  0000 L CNN
F 1 "100uF" H 2215 1255 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 2138 1150 50  0001 C CNN
F 3 "~" H 2100 1300 50  0001 C CNN
	1    2100 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C70A59C
P 3100 1300
F 0 "C2" H 3215 1346 50  0000 L CNN
F 1 "270uF" H 3215 1255 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 3138 1150 50  0001 C CNN
F 3 "~" H 3100 1300 50  0001 C CNN
	1    3100 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5C70A651
P 2100 1550
F 0 "#PWR0123" H 2100 1300 50  0001 C CNN
F 1 "GND" H 2105 1377 50  0000 C CNN
F 2 "" H 2100 1550 50  0001 C CNN
F 3 "" H 2100 1550 50  0001 C CNN
	1    2100 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5C70A6C5
P 3100 1550
F 0 "#PWR0124" H 3100 1300 50  0001 C CNN
F 1 "GND" H 3105 1377 50  0000 C CNN
F 2 "" H 3100 1550 50  0001 C CNN
F 3 "" H 3100 1550 50  0001 C CNN
	1    3100 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1550 3100 1450
Wire Wire Line
	3100 1150 3100 1050
Connection ~ 3100 1050
Wire Wire Line
	2100 1050 2100 1150
Connection ~ 2100 1050
NoConn ~ 5650 3700
NoConn ~ 5650 3600
Text Label 6150 2500 0    50   ~ 0
LED1
Text Label 6150 2600 0    50   ~ 0
LED2
Wire Wire Line
	5650 2500 6150 2500
Wire Wire Line
	6150 2600 5650 2600
Text Label 6150 4900 0    50   ~ 0
LED3
Wire Wire Line
	6150 4900 5650 4900
$Comp
L Device:LED D1
U 1 1 5C72AE44
P 8550 3000
F 0 "D1" V 8588 2883 50  0000 R CNN
F 1 "LED" V 8497 2883 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8550 3000 50  0001 C CNN
F 3 "~" H 8550 3000 50  0001 C CNN
	1    8550 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C72AF00
P 8950 3000
F 0 "D2" V 8988 2883 50  0000 R CNN
F 1 "LED" V 8897 2883 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8950 3000 50  0001 C CNN
F 3 "~" H 8950 3000 50  0001 C CNN
	1    8950 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C72AF4F
P 9350 3000
F 0 "D3" V 9388 2883 50  0000 R CNN
F 1 "LED" V 9297 2883 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 9350 3000 50  0001 C CNN
F 3 "~" H 9350 3000 50  0001 C CNN
	1    9350 3000
	0    -1   -1   0   
$EndComp
Text Label 8550 2650 0    50   ~ 0
LED1
Text Label 8950 2650 0    50   ~ 0
LED2
Text Label 9350 2650 0    50   ~ 0
LED3
$Comp
L Device:R R9
U 1 1 5C72B2C1
P 8550 3500
F 0 "R9" H 8620 3546 50  0000 L CNN
F 1 "330" H 8620 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8480 3500 50  0001 C CNN
F 3 "~" H 8550 3500 50  0001 C CNN
	1    8550 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C72B357
P 8950 3500
F 0 "R10" H 9020 3546 50  0000 L CNN
F 1 "330" H 9020 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8880 3500 50  0001 C CNN
F 3 "~" H 8950 3500 50  0001 C CNN
	1    8950 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C72B3EB
P 9350 3500
F 0 "R11" H 9420 3546 50  0000 L CNN
F 1 "330" H 9420 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9280 3500 50  0001 C CNN
F 3 "~" H 9350 3500 50  0001 C CNN
	1    9350 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3150 8550 3350
Wire Wire Line
	8550 2850 8550 2650
Wire Wire Line
	8950 2650 8950 2850
Wire Wire Line
	9350 2650 9350 2850
Wire Wire Line
	9350 3150 9350 3350
Wire Wire Line
	8950 3150 8950 3350
$Comp
L power:GND #PWR0125
U 1 1 5C751B84
P 8550 3800
F 0 "#PWR0125" H 8550 3550 50  0001 C CNN
F 1 "GND" H 8555 3627 50  0000 C CNN
F 2 "" H 8550 3800 50  0001 C CNN
F 3 "" H 8550 3800 50  0001 C CNN
	1    8550 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5C751C79
P 8950 3800
F 0 "#PWR0126" H 8950 3550 50  0001 C CNN
F 1 "GND" H 8955 3627 50  0000 C CNN
F 2 "" H 8950 3800 50  0001 C CNN
F 3 "" H 8950 3800 50  0001 C CNN
	1    8950 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5C751D08
P 9350 3800
F 0 "#PWR0127" H 9350 3550 50  0001 C CNN
F 1 "GND" H 9355 3627 50  0000 C CNN
F 2 "" H 9350 3800 50  0001 C CNN
F 3 "" H 9350 3800 50  0001 C CNN
	1    9350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 3800 9350 3650
Wire Wire Line
	8950 3650 8950 3800
Wire Wire Line
	8550 3800 8550 3650
$Comp
L SmartNerfBlasterSymbols:FQP30N06L Q1
U 1 1 5C82A233
P 7750 1450
F 0 "Q1" H 7956 1496 50  0000 L CNN
F 1 "FQP30N06L" H 7956 1405 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 8000 1375 50  0001 L CIN
F 3 "https://www.mouser.com/ds/2/149/FQP30N06L-1009543.pdf" H 7750 1450 50  0001 L CNN
	1    7750 1450
	1    0    0    -1  
$EndComp
$Comp
L SmartNerfBlasterSymbols:FQP30N06L Q2
U 1 1 5C82A2CE
P 9150 1450
F 0 "Q2" H 9356 1496 50  0000 L CNN
F 1 "FQP30N06L" H 9356 1405 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 9400 1375 50  0001 L CIN
F 3 "https://www.mouser.com/ds/2/149/FQP30N06L-1009543.pdf" H 9150 1450 50  0001 L CNN
	1    9150 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 1450 2100 1550
Text Label 5650 3400 0    50   ~ 0
Fire_Select
Text Label 5650 3500 0    50   ~ 0
Safety_Select
$Comp
L SmartNerfBlasterSymbols:1825910-6 SW1
U 1 1 5F0F3A08
P 2850 2350
F 0 "SW1" H 3378 1946 50  0000 L CNN
F 1 "1825910-6" H 3378 1855 50  0000 L CNN
F 2 "SmartNerfBlasterFootprints:1825910-6" H 2650 2350 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2650 2350 50  0001 C CNN
	1    2850 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5F0F3C91
P 3250 2200
F 0 "R12" H 3320 2246 50  0000 L CNN
F 1 "10k" H 3320 2155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 2200 50  0001 C CNN
F 3 "~" H 3250 2200 50  0001 C CNN
	1    3250 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 2400 3850 2400
Wire Wire Line
	3850 2400 3850 3250
Wire Wire Line
	3850 3250 3250 3250
Wire Wire Line
	2850 2350 2500 2350
Wire Wire Line
	2500 2350 2500 3250
Wire Wire Line
	2500 3250 2850 3250
$Comp
L power:+5V #PWR0128
U 1 1 5F1025AD
P 3250 2050
F 0 "#PWR0128" H 3250 1900 50  0001 C CNN
F 1 "+5V" H 3265 2223 50  0000 C CNN
F 2 "" H 3250 2050 50  0001 C CNN
F 3 "" H 3250 2050 50  0001 C CNN
	1    3250 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0129
U 1 1 5F10265D
P 2500 3250
F 0 "#PWR0129" H 2500 3000 50  0001 C CNN
F 1 "GND" H 2505 3077 50  0000 C CNN
F 2 "" H 2500 3250 50  0001 C CNN
F 3 "" H 2500 3250 50  0001 C CNN
	1    2500 3250
	1    0    0    -1  
$EndComp
Connection ~ 2500 3250
Text Label 3850 2400 0    50   ~ 0
Fire_Select
$Comp
L SmartNerfBlasterSymbols:1825910-6 SW2
U 1 1 5F102890
P 2850 3900
F 0 "SW2" H 3378 3496 50  0000 L CNN
F 1 "1825910-6" H 3378 3405 50  0000 L CNN
F 2 "SmartNerfBlasterFootprints:1825910-6" H 2650 3900 50  0001 C CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=1825910&DocType=Customer+Drawing&DocLang=English" H 2650 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5F102896
P 3250 3750
F 0 "R13" H 3320 3796 50  0000 L CNN
F 1 "10k" H 3320 3705 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3180 3750 50  0001 C CNN
F 3 "~" H 3250 3750 50  0001 C CNN
	1    3250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3950 3850 3950
Wire Wire Line
	3850 3950 3850 4800
Wire Wire Line
	3850 4800 3250 4800
Wire Wire Line
	2850 3900 2500 3900
Wire Wire Line
	2500 3900 2500 4800
Wire Wire Line
	2500 4800 2850 4800
$Comp
L power:+5V #PWR0130
U 1 1 5F1028A2
P 3250 3600
F 0 "#PWR0130" H 3250 3450 50  0001 C CNN
F 1 "+5V" H 3265 3773 50  0000 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 5F1028A8
P 2500 4800
F 0 "#PWR0131" H 2500 4550 50  0001 C CNN
F 1 "GND" H 2505 4627 50  0000 C CNN
F 2 "" H 2500 4800 50  0001 C CNN
F 3 "" H 2500 4800 50  0001 C CNN
	1    2500 4800
	1    0    0    -1  
$EndComp
Connection ~ 2500 4800
Text Label 3850 3950 0    50   ~ 0
Safety_Select
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F0C0E90
P 800 750
F 0 "H1" V 754 900 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 900 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 800 750 50  0001 C CNN
F 3 "~" H 800 750 50  0001 C CNN
	1    800  750 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F0C13A3
P 800 950
F 0 "H2" V 754 1100 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 1100 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 800 950 50  0001 C CNN
F 3 "~" H 800 950 50  0001 C CNN
	1    800  950 
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F0C13FE
P 800 1150
F 0 "H3" V 754 1300 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 1300 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 800 1150 50  0001 C CNN
F 3 "~" H 800 1150 50  0001 C CNN
	1    800  1150
	0    1    1    0   
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F0C1558
P 800 1350
F 0 "H4" V 754 1500 50  0000 L CNN
F 1 "MountingHole_Pad" V 845 1500 50  0000 L CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad" H 800 1350 50  0001 C CNN
F 3 "~" H 800 1350 50  0001 C CNN
	1    800  1350
	0    1    1    0   
$EndComp
Wire Wire Line
	700  750  700  950 
Connection ~ 700  950 
Wire Wire Line
	700  950  700  1150
Connection ~ 700  1150
Wire Wire Line
	700  1150 700  1350
$Comp
L power:GND #PWR0132
U 1 1 5F0C7114
P 700 1350
F 0 "#PWR0132" H 700 1100 50  0001 C CNN
F 1 "GND" H 705 1177 50  0000 C CNN
F 2 "" H 700 1350 50  0001 C CNN
F 3 "" H 700 1350 50  0001 C CNN
	1    700  1350
	1    0    0    -1  
$EndComp
Connection ~ 700  1350
Text Label 5950 2900 0    50   ~ 0
LED4
$Comp
L Device:LED D4
U 1 1 5F0C73F9
P 9750 3000
F 0 "D4" V 9788 2883 50  0000 R CNN
F 1 "LED" V 9697 2883 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 9750 3000 50  0001 C CNN
F 3 "~" H 9750 3000 50  0001 C CNN
	1    9750 3000
	0    -1   -1   0   
$EndComp
Text Label 9750 2650 0    50   ~ 0
LED4
$Comp
L Device:R R16
U 1 1 5F0C7400
P 9750 3500
F 0 "R16" H 9820 3546 50  0000 L CNN
F 1 "330" H 9820 3455 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9680 3500 50  0001 C CNN
F 3 "~" H 9750 3500 50  0001 C CNN
	1    9750 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 2650 9750 2850
Wire Wire Line
	9750 3150 9750 3350
$Comp
L power:GND #PWR0133
U 1 1 5F0C7408
P 9750 3800
F 0 "#PWR0133" H 9750 3550 50  0001 C CNN
F 1 "GND" H 9755 3627 50  0000 C CNN
F 2 "" H 9750 3800 50  0001 C CNN
F 3 "" H 9750 3800 50  0001 C CNN
	1    9750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3800 9750 3650
Wire Wire Line
	6150 2900 6350 2900
Connection ~ 6350 2900
Wire Wire Line
	6350 2900 6850 2900
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5F10BF58
P 6350 3150
F 0 "Y1" H 6500 3250 50  0000 L CNN
F 1 "Crystal_GND24" H 6400 2950 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm_HandSoldering" H 6350 3150 50  0001 C CNN
F 3 "~" H 6350 3150 50  0001 C CNN
	1    6350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2950 6350 2900
Wire Wire Line
	6350 3350 6350 3400
$Comp
L power:GND #PWR0134
U 1 1 5F1186F5
P 6200 3150
F 0 "#PWR0134" H 6200 2900 50  0001 C CNN
F 1 "GND" V 6205 3022 50  0000 R CNN
F 2 "" H 6200 3150 50  0001 C CNN
F 3 "" H 6200 3150 50  0001 C CNN
	1    6200 3150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 5F1187C2
P 6500 3150
F 0 "#PWR0135" H 6500 2900 50  0001 C CNN
F 1 "GND" V 6505 3022 50  0000 R CNN
F 2 "" H 6500 3150 50  0001 C CNN
F 3 "" H 6500 3150 50  0001 C CNN
	1    6500 3150
	0    -1   -1   0   
$EndComp
$Comp
L Interface_USB:FT232RL U3
U 1 1 5F138292
P 4050 6650
F 0 "U3" H 4050 7828 50  0000 C CNN
F 1 "FT232RL" H 4050 7737 50  0000 C CNN
F 2 "SmartNerfBlasterFootprints:SSOP-28_5.3x10.2mm_P0.65mm" H 4050 6650 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT232RL.htm" H 4050 6650 50  0001 C CNN
	1    4050 6650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0136
U 1 1 5F138544
P 4250 7700
F 0 "#PWR0136" H 4250 7450 50  0001 C CNN
F 1 "GND" H 4255 7527 50  0000 C CNN
F 2 "" H 4250 7700 50  0001 C CNN
F 3 "" H 4250 7700 50  0001 C CNN
	1    4250 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 7650 4050 7650
Connection ~ 4050 7650
Wire Wire Line
	4050 7650 4150 7650
Connection ~ 4150 7650
Wire Wire Line
	4150 7650 4250 7650
Wire Wire Line
	4250 7700 4250 7650
Connection ~ 4250 7650
Wire Wire Line
	3250 7350 3250 7650
Wire Wire Line
	3250 7650 3850 7650
Connection ~ 3850 7650
$Comp
L Connector:USB_B J7
U 1 1 5F16C05C
P 1400 6250
F 0 "J7" H 1455 6717 50  0000 C CNN
F 1 "USB_B" H 1455 6626 50  0000 C CNN
F 2 "Connectors:USB_Mini-B" H 1550 6200 50  0001 C CNN
F 3 "~" H 1550 6200 50  0001 C CNN
	1    1400 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6250 1700 6250
Wire Wire Line
	1700 6350 3250 6350
$Comp
L power:GND #PWR0137
U 1 1 5F185DD9
P 1400 6750
F 0 "#PWR0137" H 1400 6500 50  0001 C CNN
F 1 "GND" H 1405 6577 50  0000 C CNN
F 2 "" H 1400 6750 50  0001 C CNN
F 3 "" H 1400 6750 50  0001 C CNN
	1    1400 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 6650 1400 6650
Wire Wire Line
	1400 6750 1400 6650
$Comp
L Device:Ferrite_Bead FB1
U 1 1 5F193947
P 2250 5950
F 0 "FB1" V 1976 5950 50  0000 C CNN
F 1 "Ferrite_Bead" V 2067 5950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2180 5950 50  0001 C CNN
F 3 "~" H 2250 5950 50  0001 C CNN
	1    2250 5950
	0    1    1    0   
$EndComp
Wire Wire Line
	1700 6050 1950 6050
Wire Wire Line
	1950 6050 1950 5950
Wire Wire Line
	1950 5950 2100 5950
Wire Wire Line
	2400 5950 2850 5950
Wire Wire Line
	2850 5950 2850 5400
Wire Wire Line
	3950 5400 3950 5650
Wire Wire Line
	3950 5400 4150 5400
Wire Wire Line
	4150 5400 4150 5650
Connection ~ 3950 5400
Wire Wire Line
	3250 6650 2850 6650
Wire Wire Line
	2850 6650 2850 5950
Connection ~ 2850 5950
$Comp
L Device:C C8
U 1 1 5F1B1EAD
P 3050 5550
F 0 "C8" H 3165 5596 50  0000 L CNN
F 1 "100n" H 3165 5505 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3088 5400 50  0001 C CNN
F 3 "~" H 3050 5550 50  0001 C CNN
	1    3050 5550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 5F1B1F87
P 3050 5700
F 0 "#PWR0138" H 3050 5450 50  0001 C CNN
F 1 "GND" H 3055 5527 50  0000 C CNN
F 2 "" H 3050 5700 50  0001 C CNN
F 3 "" H 3050 5700 50  0001 C CNN
	1    3050 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5F1B209E
P 1950 6900
F 0 "C7" H 2065 6946 50  0000 L CNN
F 1 "10n" H 2065 6855 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1988 6750 50  0001 C CNN
F 3 "~" H 1950 6900 50  0001 C CNN
	1    1950 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 5F1B215C
P 1950 7050
F 0 "#PWR0139" H 1950 6800 50  0001 C CNN
F 1 "GND" H 1955 6877 50  0000 C CNN
F 2 "" H 1950 7050 50  0001 C CNN
F 3 "" H 1950 7050 50  0001 C CNN
	1    1950 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 5400 3050 5400
Connection ~ 1950 6050
Connection ~ 3050 5400
Wire Wire Line
	3050 5400 3950 5400
Wire Wire Line
	1950 6050 1950 6750
Text Label 5650 4200 0    50   ~ 0
RX
Text Label 5650 4300 0    50   ~ 0
TX
$Comp
L Device:R R15
U 1 1 5F1ED9CC
P 5750 6150
F 0 "R15" V 5600 6050 50  0000 L CNN
F 1 "1k" V 5650 6100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 6150 50  0001 C CNN
F 3 "~" H 5750 6150 50  0001 C CNN
	1    5750 6150
	0    1    1    0   
$EndComp
$Comp
L Device:R R14
U 1 1 5F1F64A1
P 5750 5850
F 0 "R14" V 5600 5750 50  0000 L CNN
F 1 "1k" V 5650 5800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5680 5850 50  0001 C CNN
F 3 "~" H 5750 5850 50  0001 C CNN
	1    5750 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	5600 5850 5200 5850
Wire Wire Line
	5200 5850 5200 5950
Wire Wire Line
	5200 5950 4850 5950
Wire Wire Line
	4850 6050 5200 6050
Wire Wire Line
	5200 6050 5200 6150
Wire Wire Line
	5200 6150 5600 6150
Wire Wire Line
	5900 5850 6100 5850
Wire Wire Line
	5900 6150 6100 6150
Text Label 6100 5850 0    50   ~ 0
RX
Text Label 6100 6150 0    50   ~ 0
TX
Connection ~ 1400 6650
$Comp
L Device:C C9
U 1 1 5F223944
P 5800 6650
F 0 "C9" V 5548 6650 50  0000 C CNN
F 1 "100n" V 5639 6650 50  0000 C CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5838 6500 50  0001 C CNN
F 3 "~" H 5800 6650 50  0001 C CNN
	1    5800 6650
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 6350 5450 6350
Wire Wire Line
	5450 6350 5450 6650
Wire Wire Line
	5450 6650 5650 6650
Text Label 5950 6650 0    50   ~ 0
Reset
NoConn ~ 3250 5950
NoConn ~ 3250 6850
NoConn ~ 3250 7050
NoConn ~ 4850 7350
NoConn ~ 4850 7250
NoConn ~ 4850 7150
NoConn ~ 4850 7050
NoConn ~ 4850 6950
NoConn ~ 4850 6650
NoConn ~ 4850 6550
NoConn ~ 4850 6450
NoConn ~ 4850 6250
NoConn ~ 4850 6150
$Comp
L power:+5V #PWR0140
U 1 1 5F2DE294
P 9950 5500
F 0 "#PWR0140" H 9950 5350 50  0001 C CNN
F 1 "+5V" H 9965 5673 50  0000 C CNN
F 2 "" H 9950 5500 50  0001 C CNN
F 3 "" H 9950 5500 50  0001 C CNN
	1    9950 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 5700 9950 5700
Wire Wire Line
	9950 5700 9950 6000
Wire Wire Line
	9950 5600 9950 5500
Wire Wire Line
	8750 5600 9950 5600
Wire Wire Line
	8750 5800 9250 5800
Text Label 9250 5800 0    50   ~ 0
SCL
Text Label 9250 5900 0    50   ~ 0
SDA
Text Label 5650 3800 0    50   ~ 0
SDA
Text Label 5650 3900 0    50   ~ 0
SCL
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5F3207C6
P 800 4150
F 0 "J3" H 906 4428 50  0000 C CNN
F 1 "Conn_01x04_Male" H 906 4337 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 800 4150 50  0001 C CNN
F 3 "~" H 800 4150 50  0001 C CNN
	1    800  4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4350 1500 4350
$Comp
L power:GND #PWR0141
U 1 1 5F3207CE
P 2200 4450
F 0 "#PWR0141" H 2200 4200 50  0001 C CNN
F 1 "GND" H 2205 4277 50  0000 C CNN
F 2 "" H 2200 4450 50  0001 C CNN
F 3 "" H 2200 4450 50  0001 C CNN
	1    2200 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 4250 2200 4250
Connection ~ 2200 4250
Wire Wire Line
	2200 4250 2200 4450
Wire Wire Line
	1000 4050 2200 4050
Wire Wire Line
	2200 4050 2200 4250
Wire Wire Line
	1000 4150 1500 4150
Text Label 1500 4150 0    50   ~ 0
Door
Text Label 1500 4350 0    50   ~ 0
Magazine
$EndSCHEMATC
