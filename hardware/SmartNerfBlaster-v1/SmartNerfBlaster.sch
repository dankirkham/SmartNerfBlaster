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
P 6200 3900
F 0 "U2" H 5559 3946 50  0000 R CNN
F 1 "ATmega328P-PU" H 5559 3855 50  0000 R CNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 6200 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6200 3900 50  0001 C CNN
	1    6200 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5C674DD0
P 3300 1600
F 0 "U1" H 3300 1842 50  0000 C CNN
F 1 "L7805" H 3300 1751 50  0000 C CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 3325 1450 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 3300 1550 50  0001 C CNN
	1    3300 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0101
U 1 1 5C674E53
P 2800 1500
F 0 "#PWR0101" H 2800 1350 50  0001 C CNN
F 1 "+BATT" H 2815 1673 50  0000 C CNN
F 2 "" H 2800 1500 50  0001 C CNN
F 3 "" H 2800 1500 50  0001 C CNN
	1    2800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1500 2800 1600
Wire Wire Line
	2800 1600 3000 1600
$Comp
L power:+5V #PWR0102
U 1 1 5C674EC7
P 3800 1500
F 0 "#PWR0102" H 3800 1350 50  0001 C CNN
F 1 "+5V" H 3815 1673 50  0000 C CNN
F 2 "" H 3800 1500 50  0001 C CNN
F 3 "" H 3800 1500 50  0001 C CNN
	1    3800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 1500 3800 1600
Wire Wire Line
	3800 1600 3600 1600
$Comp
L power:GND #PWR0103
U 1 1 5C674F42
P 3300 2100
F 0 "#PWR0103" H 3300 1850 50  0001 C CNN
F 1 "GND" H 3305 1927 50  0000 C CNN
F 2 "" H 3300 2100 50  0001 C CNN
F 3 "" H 3300 2100 50  0001 C CNN
	1    3300 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2100 3300 1900
$Comp
L power:+5V #PWR0104
U 1 1 5C674FE8
P 6200 1500
F 0 "#PWR0104" H 6200 1350 50  0001 C CNN
F 1 "+5V" H 6215 1673 50  0000 C CNN
F 2 "" H 6200 1500 50  0001 C CNN
F 3 "" H 6200 1500 50  0001 C CNN
	1    6200 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5C675062
P 5700 1850
F 0 "C4" H 5815 1896 50  0000 L CNN
F 1 "100nF" H 5815 1805 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5738 1700 50  0001 C CNN
F 3 "~" H 5700 1850 50  0001 C CNN
	1    5700 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5C6750F0
P 5700 2100
F 0 "#PWR0105" H 5700 1850 50  0001 C CNN
F 1 "GND" H 5705 1927 50  0000 C CNN
F 2 "" H 5700 2100 50  0001 C CNN
F 3 "" H 5700 2100 50  0001 C CNN
	1    5700 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1500 6200 1600
Wire Wire Line
	6200 1600 6200 2400
Connection ~ 6200 1600
Wire Wire Line
	6300 2400 6300 1600
Wire Wire Line
	6300 1600 6200 1600
Wire Wire Line
	5700 2100 5700 2000
Wire Wire Line
	5700 1700 5700 1600
Wire Wire Line
	5700 1600 6200 1600
$Comp
L Device:Crystal Y1
U 1 1 5C67581B
P 7500 3350
F 0 "Y1" V 7454 3481 50  0000 L CNN
F 1 "Crystal" V 7545 3481 50  0000 L CNN
F 2 "Crystals:Crystal_HC49-U_Vertical" H 7500 3350 50  0001 C CNN
F 3 "~" H 7500 3350 50  0001 C CNN
	1    7500 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6800 3300 7300 3300
Wire Wire Line
	7300 3400 6800 3400
$Comp
L Device:CP C5
U 1 1 5C675B0F
P 8150 3100
F 0 "C5" V 7898 3100 50  0000 C CNN
F 1 "22uF" V 7989 3100 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 8188 2950 50  0001 C CNN
F 3 "~" H 8150 3100 50  0001 C CNN
	1    8150 3100
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C6
U 1 1 5C675B91
P 8150 3600
F 0 "C6" V 8402 3600 50  0000 C CNN
F 1 "22uF" V 8311 3600 50  0000 C CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 8188 3450 50  0001 C CNN
F 3 "~" H 8150 3600 50  0001 C CNN
	1    8150 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8000 3100 7500 3100
Wire Wire Line
	7300 3100 7300 3300
Wire Wire Line
	8000 3600 7500 3600
Wire Wire Line
	7300 3400 7300 3600
Wire Wire Line
	7500 3500 7500 3600
Connection ~ 7500 3600
Wire Wire Line
	7500 3600 7300 3600
Wire Wire Line
	7500 3200 7500 3100
Connection ~ 7500 3100
Wire Wire Line
	7500 3100 7300 3100
$Comp
L power:GND #PWR0106
U 1 1 5C67684C
P 8500 3700
F 0 "#PWR0106" H 8500 3450 50  0001 C CNN
F 1 "GND" H 8505 3527 50  0000 C CNN
F 2 "" H 8500 3700 50  0001 C CNN
F 3 "" H 8500 3700 50  0001 C CNN
	1    8500 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 3600 8500 3600
Wire Wire Line
	8500 3600 8500 3700
Wire Wire Line
	8500 3600 8500 3100
Wire Wire Line
	8500 3100 8300 3100
Connection ~ 8500 3600
$Comp
L Device:C C3
U 1 1 5C676E29
P 5200 2950
F 0 "C3" H 5315 2996 50  0000 L CNN
F 1 "100nF" H 5315 2905 50  0000 L CNN
F 2 "Capacitors_THT:C_Rect_L4.6mm_W2.0mm_P2.50mm_MKS02_FKP02" H 5238 2800 50  0001 C CNN
F 3 "~" H 5200 2950 50  0001 C CNN
	1    5200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 2700 5200 2800
Wire Wire Line
	5200 2700 5600 2700
$Comp
L power:GND #PWR0107
U 1 1 5C6779EC
P 5200 3200
F 0 "#PWR0107" H 5200 2950 50  0001 C CNN
F 1 "GND" H 5205 3027 50  0000 C CNN
F 2 "" H 5200 3200 50  0001 C CNN
F 3 "" H 5200 3200 50  0001 C CNN
	1    5200 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3100 5200 3200
$Comp
L power:GND #PWR0108
U 1 1 5C677E0E
P 6200 5600
F 0 "#PWR0108" H 6200 5350 50  0001 C CNN
F 1 "GND" H 6205 5427 50  0000 C CNN
F 2 "" H 6200 5600 50  0001 C CNN
F 3 "" H 6200 5600 50  0001 C CNN
	1    6200 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 5400 6200 5600
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5C6782F7
P 1400 2800
F 0 "J1" H 1506 2978 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1506 2887 50  0000 C CNN
F 2 "NerfPlasterFootprints:XT-60" H 1400 2800 50  0001 C CNN
F 3 "~" H 1400 2800 50  0001 C CNN
	1    1400 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5C67841D
P 1400 4800
F 0 "J3" H 1506 5078 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1506 4987 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B04B-XH-A_04x2.50mm_Straight" H 1400 4800 50  0001 C CNN
F 3 "~" H 1400 4800 50  0001 C CNN
	1    1400 4800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5C6784E3
P 1400 3700
F 0 "J2" H 1506 4078 50  0000 C CNN
F 1 "Conn_01x06_Male" H 1506 3987 50  0000 C CNN
F 2 "Connectors_JST:JST_XH_B06B-XH-A_06x2.50mm_Straight" H 1400 3700 50  0001 C CNN
F 3 "~" H 1400 3700 50  0001 C CNN
	1    1400 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5C678774
P 1400 5700
F 0 "J4" H 1320 5917 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1320 5826 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1400 5700 50  0001 C CNN
F 3 "~" H 1400 5700 50  0001 C CNN
	1    1400 5700
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5C6787E1
P 1400 6500
F 0 "J5" H 1320 6717 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1320 6626 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1400 6500 50  0001 C CNN
F 3 "~" H 1400 6500 50  0001 C CNN
	1    1400 6500
	-1   0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0109
U 1 1 5C678985
P 2100 2700
F 0 "#PWR0109" H 2100 2550 50  0001 C CNN
F 1 "+BATT" H 2115 2873 50  0000 C CNN
F 2 "" H 2100 2700 50  0001 C CNN
F 3 "" H 2100 2700 50  0001 C CNN
	1    2100 2700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5C678A11
P 2100 3000
F 0 "#PWR0110" H 2100 2750 50  0001 C CNN
F 1 "GND" H 2105 2827 50  0000 C CNN
F 2 "" H 2100 3000 50  0001 C CNN
F 3 "" H 2100 3000 50  0001 C CNN
	1    2100 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 2800 2100 2800
Wire Wire Line
	2100 2800 2100 2700
Wire Wire Line
	1600 2900 2100 2900
Wire Wire Line
	2100 2900 2100 3000
Text Label 2100 3600 0    50   ~ 0
Trigger
Text Label 2100 3800 0    50   ~ 0
Flywheel_Button
Text Label 2100 4000 0    50   ~ 0
Pusher_Reset
Wire Wire Line
	1600 3600 2100 3600
Wire Wire Line
	1600 3800 2100 3800
Wire Wire Line
	1600 4000 2100 4000
$Comp
L power:GND #PWR0111
U 1 1 5C67A87A
P 2800 4100
F 0 "#PWR0111" H 2800 3850 50  0001 C CNN
F 1 "GND" H 2805 3927 50  0000 C CNN
F 2 "" H 2800 4100 50  0001 C CNN
F 3 "" H 2800 4100 50  0001 C CNN
	1    2800 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 3900 2800 3900
Wire Wire Line
	2800 3900 2800 4100
Wire Wire Line
	1600 3700 2800 3700
Wire Wire Line
	2800 3700 2800 3900
Connection ~ 2800 3900
Wire Wire Line
	1600 3500 2800 3500
Wire Wire Line
	2800 3500 2800 3700
Connection ~ 2800 3700
Text Label 2100 4800 0    50   ~ 0
Door
Text Label 2100 5000 0    50   ~ 0
Magazine
Wire Wire Line
	1600 4800 2100 4800
Wire Wire Line
	1600 5000 2100 5000
$Comp
L power:GND #PWR0112
U 1 1 5C67D91C
P 2800 5100
F 0 "#PWR0112" H 2800 4850 50  0001 C CNN
F 1 "GND" H 2805 4927 50  0000 C CNN
F 2 "" H 2800 5100 50  0001 C CNN
F 3 "" H 2800 5100 50  0001 C CNN
	1    2800 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 5100 2800 4900
Wire Wire Line
	2800 4900 1600 4900
Wire Wire Line
	1600 4700 2800 4700
Wire Wire Line
	2800 4700 2800 4900
Connection ~ 2800 4900
Wire Wire Line
	2100 5700 1600 5700
Wire Wire Line
	1600 5800 2100 5800
Wire Wire Line
	2100 6500 1600 6500
Wire Wire Line
	1600 6600 2100 6600
Text Label 8850 4600 0    50   ~ 0
Trigger
Text Label 8850 4700 0    50   ~ 0
Flywheel_Button
Text Label 8850 4800 0    50   ~ 0
Pusher_Reset
Text Label 8850 4900 0    50   ~ 0
Door
Text Label 8850 5000 0    50   ~ 0
Magazine
$Comp
L Device:R R4
U 1 1 5C682447
P 7300 4350
F 0 "R4" H 7370 4396 50  0000 L CNN
F 1 "10k" H 7370 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7230 4350 50  0001 C CNN
F 3 "~" H 7300 4350 50  0001 C CNN
	1    7300 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5C682556
P 7650 4350
F 0 "R5" H 7720 4396 50  0000 L CNN
F 1 "10k" H 7720 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7580 4350 50  0001 C CNN
F 3 "~" H 7650 4350 50  0001 C CNN
	1    7650 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5C682590
P 8000 4350
F 0 "R6" H 8070 4396 50  0000 L CNN
F 1 "10k" H 8070 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 7930 4350 50  0001 C CNN
F 3 "~" H 8000 4350 50  0001 C CNN
	1    8000 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5C6825C1
P 8350 4350
F 0 "R7" H 8420 4396 50  0000 L CNN
F 1 "10k" H 8420 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8280 4350 50  0001 C CNN
F 3 "~" H 8350 4350 50  0001 C CNN
	1    8350 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5C6825F4
P 8700 4350
F 0 "R8" H 8770 4396 50  0000 L CNN
F 1 "10k" H 8770 4305 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8630 4350 50  0001 C CNN
F 3 "~" H 8700 4350 50  0001 C CNN
	1    8700 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5C682665
P 8700 4100
F 0 "#PWR0113" H 8700 3950 50  0001 C CNN
F 1 "+5V" H 8715 4273 50  0000 C CNN
F 2 "" H 8700 4100 50  0001 C CNN
F 3 "" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4100 8700 4150
Wire Wire Line
	8700 4150 8350 4150
Wire Wire Line
	7300 4150 7300 4200
Connection ~ 8700 4150
Wire Wire Line
	8700 4150 8700 4200
Wire Wire Line
	7650 4150 7650 4200
Connection ~ 7650 4150
Wire Wire Line
	7650 4150 7300 4150
Wire Wire Line
	8000 4150 8000 4200
Connection ~ 8000 4150
Wire Wire Line
	8000 4150 7650 4150
Wire Wire Line
	8350 4150 8350 4200
Connection ~ 8350 4150
Wire Wire Line
	8350 4150 8000 4150
Wire Wire Line
	6800 4600 7300 4600
Wire Wire Line
	6800 4700 7650 4700
Wire Wire Line
	6800 4900 8350 4900
Wire Wire Line
	8850 5000 8700 5000
Wire Wire Line
	7300 4500 7300 4600
Connection ~ 7300 4600
Wire Wire Line
	7300 4600 8850 4600
Wire Wire Line
	7650 4500 7650 4700
Connection ~ 7650 4700
Wire Wire Line
	7650 4700 8850 4700
Wire Wire Line
	8000 4500 8000 4800
Wire Wire Line
	6800 4800 8000 4800
Connection ~ 8000 4800
Wire Wire Line
	8000 4800 8850 4800
Wire Wire Line
	8350 4500 8350 4900
Connection ~ 8350 4900
Wire Wire Line
	8350 4900 8850 4900
Wire Wire Line
	8700 4500 8700 5000
Connection ~ 8700 5000
Wire Wire Line
	8700 5000 6800 5000
$Comp
L Device:R R3
U 1 1 5C694D97
P 6400 1550
F 0 "R3" H 6470 1596 50  0000 L CNN
F 1 "10k" H 6470 1505 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 6330 1550 50  0001 C CNN
F 3 "~" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5C694E10
P 6400 1300
F 0 "#PWR0114" H 6400 1150 50  0001 C CNN
F 1 "+5V" H 6415 1473 50  0000 C CNN
F 2 "" H 6400 1300 50  0001 C CNN
F 3 "" H 6400 1300 50  0001 C CNN
	1    6400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4200 7000 4200
Text Label 7300 3000 0    50   ~ 0
Flywheel
Text Label 7300 2900 0    50   ~ 0
Pusher
Wire Wire Line
	7300 2900 6800 2900
Wire Wire Line
	6800 3000 7200 3000
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J6
U 1 1 5C69BBDF
P 7300 1700
F 0 "J6" H 7350 2017 50  0000 C CNN
F 1 "Conn_02x03_Odd_Even" H 7350 1926 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 7300 1700 50  0001 C CNN
F 3 "~" H 7300 1700 50  0001 C CNN
	1    7300 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3000 7200 2400
Wire Wire Line
	7200 2400 7900 2400
Wire Wire Line
	7900 2400 7900 1700
Wire Wire Line
	7900 1700 7600 1700
Connection ~ 7200 3000
Wire Wire Line
	7200 3000 7300 3000
Wire Wire Line
	7100 1600 6900 1600
Wire Wire Line
	6900 1600 6900 2400
Wire Wire Line
	6900 2400 7100 2400
Wire Wire Line
	7100 3100 6800 3100
Wire Wire Line
	7100 1700 7000 1700
Wire Wire Line
	7000 1700 7000 3200
Wire Wire Line
	7000 3200 6800 3200
$Comp
L power:+5V #PWR0115
U 1 1 5C6A238D
P 7900 1400
F 0 "#PWR0115" H 7900 1250 50  0001 C CNN
F 1 "+5V" H 7915 1573 50  0000 C CNN
F 2 "" H 7900 1400 50  0001 C CNN
F 3 "" H 7900 1400 50  0001 C CNN
	1    7900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1600 7900 1600
Wire Wire Line
	7900 1600 7900 1400
$Comp
L power:GND #PWR0116
U 1 1 5C6A4AFE
P 7700 1900
F 0 "#PWR0116" H 7700 1650 50  0001 C CNN
F 1 "GND" H 7705 1727 50  0000 C CNN
F 2 "" H 7700 1900 50  0001 C CNN
F 3 "" H 7700 1900 50  0001 C CNN
	1    7700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1900 7700 1800
Wire Wire Line
	7700 1800 7600 1800
Wire Wire Line
	7100 2400 7100 3100
Text Label 6500 1800 0    50   ~ 0
Reset
Wire Wire Line
	6400 1250 6400 1300
Connection ~ 6400 1300
Wire Wire Line
	6400 1300 6400 1400
Wire Wire Line
	6400 1700 6400 1800
Wire Wire Line
	6400 1800 7100 1800
Text Label 7000 3900 0    50   ~ 0
Reset
Wire Wire Line
	7000 3900 7000 4200
Text Label 3300 6200 0    50   ~ 0
Pusher
Text Label 4700 6200 0    50   ~ 0
Flywheel
Wire Wire Line
	4700 6200 5000 6200
Wire Wire Line
	3300 6200 3600 6200
$Comp
L Device:R R1
U 1 1 5C6C5913
P 3600 6450
F 0 "R1" H 3670 6496 50  0000 L CNN
F 1 "6.8k" H 3670 6405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 3530 6450 50  0001 C CNN
F 3 "~" H 3600 6450 50  0001 C CNN
	1    3600 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C6C5A39
P 5000 6450
F 0 "R2" H 5070 6496 50  0000 L CNN
F 1 "6.8k" H 5070 6405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 4930 6450 50  0001 C CNN
F 3 "~" H 5000 6450 50  0001 C CNN
	1    5000 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6300 5000 6200
Connection ~ 5000 6200
Wire Wire Line
	5000 6200 5100 6200
Wire Wire Line
	3600 6300 3600 6200
Connection ~ 3600 6200
Wire Wire Line
	3600 6200 3700 6200
$Comp
L power:GND #PWR0117
U 1 1 5C6CB944
P 3600 6700
F 0 "#PWR0117" H 3600 6450 50  0001 C CNN
F 1 "GND" H 3605 6527 50  0000 C CNN
F 2 "" H 3600 6700 50  0001 C CNN
F 3 "" H 3600 6700 50  0001 C CNN
	1    3600 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 5C6CB9B2
P 5000 6700
F 0 "#PWR0118" H 5000 6450 50  0001 C CNN
F 1 "GND" H 5005 6527 50  0000 C CNN
F 2 "" H 5000 6700 50  0001 C CNN
F 3 "" H 5000 6700 50  0001 C CNN
	1    5000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6700 5000 6600
Wire Wire Line
	3600 6600 3600 6700
$Comp
L power:GND #PWR0119
U 1 1 5C6D203D
P 5400 6700
F 0 "#PWR0119" H 5400 6450 50  0001 C CNN
F 1 "GND" H 5405 6527 50  0000 C CNN
F 2 "" H 5400 6700 50  0001 C CNN
F 3 "" H 5400 6700 50  0001 C CNN
	1    5400 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5C6D20AB
P 4000 6700
F 0 "#PWR0120" H 4000 6450 50  0001 C CNN
F 1 "GND" H 4005 6527 50  0000 C CNN
F 2 "" H 4000 6700 50  0001 C CNN
F 3 "" H 4000 6700 50  0001 C CNN
	1    4000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6700 4000 6400
Wire Wire Line
	5400 6700 5400 6400
$Comp
L power:+BATT #PWR0121
U 1 1 5C6D8B4D
P 2100 6300
F 0 "#PWR0121" H 2100 6150 50  0001 C CNN
F 1 "+BATT" H 2115 6473 50  0000 C CNN
F 2 "" H 2100 6300 50  0001 C CNN
F 3 "" H 2100 6300 50  0001 C CNN
	1    2100 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0122
U 1 1 5C6D8BBB
P 2100 5500
F 0 "#PWR0122" H 2100 5350 50  0001 C CNN
F 1 "+BATT" H 2115 5673 50  0000 C CNN
F 2 "" H 2100 5500 50  0001 C CNN
F 3 "" H 2100 5500 50  0001 C CNN
	1    2100 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 5500 2100 5700
Wire Wire Line
	2100 6300 2100 6500
Text Label 2100 5800 0    50   ~ 0
Pusher_Power
Text Label 2100 6600 0    50   ~ 0
Flywheel_Power
Text Label 4000 5800 0    50   ~ 0
Pusher_Power
Wire Wire Line
	4000 5800 4000 6000
Text Label 5400 5800 0    50   ~ 0
Flywheel_Power
Wire Wire Line
	5400 5800 5400 6000
$Comp
L Device:CP C1
U 1 1 5C70A413
P 2800 1850
F 0 "C1" H 2915 1896 50  0000 L CNN
F 1 "100uF" H 2915 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 2838 1700 50  0001 C CNN
F 3 "~" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5C70A59C
P 3800 1850
F 0 "C2" H 3915 1896 50  0000 L CNN
F 1 "270uF" H 3915 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 3838 1700 50  0001 C CNN
F 3 "~" H 3800 1850 50  0001 C CNN
	1    3800 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 5C70A651
P 2800 2100
F 0 "#PWR0123" H 2800 1850 50  0001 C CNN
F 1 "GND" H 2805 1927 50  0000 C CNN
F 2 "" H 2800 2100 50  0001 C CNN
F 3 "" H 2800 2100 50  0001 C CNN
	1    2800 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0124
U 1 1 5C70A6C5
P 3800 2100
F 0 "#PWR0124" H 3800 1850 50  0001 C CNN
F 1 "GND" H 3805 1927 50  0000 C CNN
F 2 "" H 3800 2100 50  0001 C CNN
F 3 "" H 3800 2100 50  0001 C CNN
	1    3800 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2100 3800 2000
Wire Wire Line
	3800 1700 3800 1600
Connection ~ 3800 1600
Wire Wire Line
	2800 1600 2800 1700
Connection ~ 2800 1600
Wire Wire Line
	2800 2000 2800 2050
NoConn ~ 6800 4500
NoConn ~ 6800 4400
NoConn ~ 6800 4100
NoConn ~ 6800 4000
NoConn ~ 6800 3900
NoConn ~ 6800 3800
NoConn ~ 6800 3700
NoConn ~ 6800 3600
$Comp
L Device:CP C9
U 1 1 5C6CF1C3
P 2300 1850
F 0 "C9" H 2415 1896 50  0000 L CNN
F 1 "100uF" H 2415 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 2338 1700 50  0001 C CNN
F 3 "~" H 2300 1850 50  0001 C CNN
	1    2300 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C8
U 1 1 5C6CF20F
P 1800 1850
F 0 "C8" H 1915 1896 50  0000 L CNN
F 1 "100uF" H 1915 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 1838 1700 50  0001 C CNN
F 3 "~" H 1800 1850 50  0001 C CNN
	1    1800 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C7
U 1 1 5C6CF25A
P 1300 1850
F 0 "C7" H 1415 1896 50  0000 L CNN
F 1 "100uF" H 1415 1805 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D5.0mm_P2.50mm" H 1338 1700 50  0001 C CNN
F 3 "~" H 1300 1850 50  0001 C CNN
	1    1300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1600 2300 1600
Wire Wire Line
	1300 1600 1300 1700
Wire Wire Line
	1800 1700 1800 1600
Connection ~ 1800 1600
Wire Wire Line
	1800 1600 1300 1600
Wire Wire Line
	2300 1700 2300 1600
Connection ~ 2300 1600
Wire Wire Line
	2300 1600 1800 1600
Wire Wire Line
	2800 2050 2300 2050
Wire Wire Line
	1300 2050 1300 2000
Connection ~ 2800 2050
Wire Wire Line
	2800 2050 2800 2100
Wire Wire Line
	1800 2000 1800 2050
Connection ~ 1800 2050
Wire Wire Line
	1800 2050 1300 2050
Wire Wire Line
	2300 2000 2300 2050
Connection ~ 2300 2050
Wire Wire Line
	2300 2050 1800 2050
Text Label 7300 2700 0    50   ~ 0
LED1
Text Label 7300 2800 0    50   ~ 0
LED2
Wire Wire Line
	6800 2700 7300 2700
Wire Wire Line
	7300 2800 6800 2800
Text Label 7300 5100 0    50   ~ 0
LED3
Wire Wire Line
	7300 5100 6800 5100
$Comp
L Device:LED D1
U 1 1 5C72AE44
P 8800 1950
F 0 "D1" V 8838 1833 50  0000 R CNN
F 1 "LED" V 8747 1833 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 8800 1950 50  0001 C CNN
F 3 "~" H 8800 1950 50  0001 C CNN
	1    8800 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C72AF00
P 9200 1950
F 0 "D2" V 9238 1833 50  0000 R CNN
F 1 "LED" V 9147 1833 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 9200 1950 50  0001 C CNN
F 3 "~" H 9200 1950 50  0001 C CNN
	1    9200 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5C72AF4F
P 9600 1950
F 0 "D3" V 9638 1833 50  0000 R CNN
F 1 "LED" V 9547 1833 50  0000 R CNN
F 2 "LEDs:LED_D3.0mm" H 9600 1950 50  0001 C CNN
F 3 "~" H 9600 1950 50  0001 C CNN
	1    9600 1950
	0    -1   -1   0   
$EndComp
Text Label 8800 1600 0    50   ~ 0
LED1
Text Label 9200 1600 0    50   ~ 0
LED2
Text Label 9600 1600 0    50   ~ 0
LED3
$Comp
L Device:R R9
U 1 1 5C72B2C1
P 8800 2450
F 0 "R9" H 8870 2496 50  0000 L CNN
F 1 "330" H 8870 2405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 8730 2450 50  0001 C CNN
F 3 "~" H 8800 2450 50  0001 C CNN
	1    8800 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5C72B357
P 9200 2450
F 0 "R10" H 9270 2496 50  0000 L CNN
F 1 "330" H 9270 2405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9130 2450 50  0001 C CNN
F 3 "~" H 9200 2450 50  0001 C CNN
	1    9200 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5C72B3EB
P 9600 2450
F 0 "R11" H 9670 2496 50  0000 L CNN
F 1 "330" H 9670 2405 50  0000 L CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P2.54mm_Vertical" V 9530 2450 50  0001 C CNN
F 3 "~" H 9600 2450 50  0001 C CNN
	1    9600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2100 8800 2300
Wire Wire Line
	8800 1800 8800 1600
Wire Wire Line
	9200 1600 9200 1800
Wire Wire Line
	9600 1600 9600 1800
Wire Wire Line
	9600 2100 9600 2300
Wire Wire Line
	9200 2100 9200 2300
$Comp
L power:GND #PWR0125
U 1 1 5C751B84
P 8800 2750
F 0 "#PWR0125" H 8800 2500 50  0001 C CNN
F 1 "GND" H 8805 2577 50  0000 C CNN
F 2 "" H 8800 2750 50  0001 C CNN
F 3 "" H 8800 2750 50  0001 C CNN
	1    8800 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5C751C79
P 9200 2750
F 0 "#PWR0126" H 9200 2500 50  0001 C CNN
F 1 "GND" H 9205 2577 50  0000 C CNN
F 2 "" H 9200 2750 50  0001 C CNN
F 3 "" H 9200 2750 50  0001 C CNN
	1    9200 2750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5C751D08
P 9600 2750
F 0 "#PWR0127" H 9600 2500 50  0001 C CNN
F 1 "GND" H 9605 2577 50  0000 C CNN
F 2 "" H 9600 2750 50  0001 C CNN
F 3 "" H 9600 2750 50  0001 C CNN
	1    9600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 2750 9600 2600
Wire Wire Line
	9200 2600 9200 2750
Wire Wire Line
	8800 2750 8800 2600
$Comp
L SmartNerfBlasterSymbols:FQP30N06L Q1
U 1 1 5C82A233
P 3900 6200
F 0 "Q1" H 4106 6246 50  0000 L CNN
F 1 "FQP30N06L" H 4106 6155 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 4150 6125 50  0001 L CIN
F 3 "https://www.mouser.com/ds/2/149/FQP30N06L-1009543.pdf" H 3900 6200 50  0001 L CNN
	1    3900 6200
	1    0    0    -1  
$EndComp
$Comp
L SmartNerfBlasterSymbols:FQP30N06L Q2
U 1 1 5C82A2CE
P 5300 6200
F 0 "Q2" H 5506 6246 50  0000 L CNN
F 1 "FQP30N06L" H 5506 6155 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-220-3_Vertical" H 5550 6125 50  0001 L CIN
F 3 "https://www.mouser.com/ds/2/149/FQP30N06L-1009543.pdf" H 5300 6200 50  0001 L CNN
	1    5300 6200
	1    0    0    -1  
$EndComp
$EndSCHEMATC
