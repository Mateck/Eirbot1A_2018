EESchema Schematic File Version 2
LIBS:7_segments_encodeur-rescue
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:7_segments_encodeur-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Decodeur 3 digit 7 segments"
Date "2017-12-08"
Rev "v1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L 2N7000 Q2
U 1 1 5A2973FE
P 7150 3100
F 0 "Q2" H 7350 3175 50  0000 L CNN
F 1 "2N7000" H 7350 3100 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 7350 3025 50  0001 L CIN
F 3 "" H 7150 3100 50  0001 L CNN
	1    7150 3100
	0    -1   -1   0   
$EndComp
$Comp
L 2N7000 Q3
U 1 1 5A297416
P 7450 2000
F 0 "Q3" H 7650 2075 50  0000 L CNN
F 1 "2N7000" H 7650 2000 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 7650 1925 50  0001 L CIN
F 3 "" H 7450 2000 50  0001 L CNN
	1    7450 2000
	0    -1   -1   0   
$EndComp
$Comp
L 2N7000 Q1
U 1 1 5A29742F
P 6850 4200
F 0 "Q1" H 7050 4275 50  0000 L CNN
F 1 "2N7000" H 7050 4200 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Wide" H 7050 4125 50  0001 L CIN
F 3 "" H 6850 4200 50  0001 L CNN
	1    6850 4200
	0    -1   -1   0   
$EndComp
$Comp
L CD74HC194E-RESCUE-7_segments_encodeur U2
U 1 1 5A297E51
P 4050 5500
F 0 "U2" H 3750 5950 60  0000 C CNN
F 1 "CD74HC194E" H 4400 5000 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 4050 5450 60  0001 C CNN
F 3 "" H 4050 5450 60  0001 C CNN
	1    4050 5500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A29E3E5
P 4050 6250
F 0 "#PWR01" H 4050 6000 50  0001 C CNN
F 1 "GND" H 4050 6100 50  0000 C CNN
F 2 "" H 4050 6250 50  0001 C CNN
F 3 "" H 4050 6250 50  0001 C CNN
	1    4050 6250
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05_Female J1
U 1 1 5A29B372
P 2350 3250
F 0 "J1" H 2350 3550 50  0000 C CNN
F 1 "Conn_01x05_Female" H 2350 2950 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Angled_1x05_Pitch2.54mm" H 2350 3250 50  0001 C CNN
F 3 "" H 2350 3250 50  0001 C CNN
	1    2350 3250
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A29C807
P 7750 4200
F 0 "#PWR02" H 7750 3950 50  0001 C CNN
F 1 "GND" H 7750 4050 50  0000 C CNN
F 2 "" H 7750 4200 50  0001 C CNN
F 3 "" H 7750 4200 50  0001 C CNN
	1    7750 4200
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5A29DB99
P 5500 5800
F 0 "R2" V 5580 5800 50  0000 C CNN
F 1 "100k" V 5500 5800 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 5430 5800 50  0001 C CNN
F 3 "" H 5500 5800 50  0001 C CNN
	1    5500 5800
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_01x02 J3
U 1 1 5A29E72E
P 3400 1750
F 0 "J3" H 3400 1850 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3400 1550 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_2pol" H 3400 1750 50  0001 C CNN
F 3 "" H 3400 1750 50  0001 C CNN
	1    3400 1750
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR03
U 1 1 5A29E7C5
P 3500 2050
F 0 "#PWR03" H 3500 1800 50  0001 C CNN
F 1 "GND" H 3550 1900 50  0000 C CNN
F 2 "" H 3500 2050 50  0001 C CNN
F 3 "" H 3500 2050 50  0001 C CNN
	1    3500 2050
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02_Male J2
U 1 1 5A2AEDDB
P 2350 3800
F 0 "J2" H 2350 3900 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2350 3600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x02_Pitch2.54mm" H 2350 3800 50  0001 C CNN
F 3 "" H 2350 3800 50  0001 C CNN
	1    2350 3800
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5A2AFA5D
P 3250 5100
F 0 "C1" H 3275 5200 50  0000 L CNN
F 1 "22nF" H 3275 5000 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 3288 4950 50  0001 C CNN
F 3 "" H 3250 5100 50  0001 C CNN
	1    3250 5100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A2AFDAC
P 3250 5400
F 0 "#PWR04" H 3250 5150 50  0001 C CNN
F 1 "GND" H 3250 5250 50  0000 C CNN
F 2 "" H 3250 5400 50  0001 C CNN
F 3 "" H 3250 5400 50  0001 C CNN
	1    3250 5400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x04_Male J4
U 1 1 5A2AF93C
P 4300 1750
F 0 "J4" H 4300 1950 50  0000 C CNN
F 1 "Conn_01x04_Male" H 4300 1450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 4300 1750 50  0001 C CNN
F 3 "" H 4300 1750 50  0001 C CNN
	1    4300 1750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR05
U 1 1 5A2AFC0E
P 4250 2100
F 0 "#PWR05" H 4250 1850 50  0001 C CNN
F 1 "GND" H 4250 1950 50  0000 C CNN
F 2 "" H 4250 2100 50  0001 C CNN
F 3 "" H 4250 2100 50  0001 C CNN
	1    4250 2100
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A2C3744
P 5000 6000
F 0 "SW1" H 5050 6100 50  0000 L CNN
F 1 "SW_Push" H 5000 5940 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 5000 6200 50  0001 C CNN
F 3 "" H 5000 6200 50  0001 C CNN
	1    5000 6000
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5A2C3909
P 5050 6200
F 0 "R1" V 5130 6200 50  0000 C CNN
F 1 "100k" V 5050 6200 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 4980 6200 50  0001 C CNN
F 3 "" H 5050 6200 50  0001 C CNN
	1    5050 6200
	0    1    1    0   
$EndComp
$Comp
L 4511 U1
U 1 1 5A2CEBD4
P 3950 3250
F 0 "U1" H 3950 3200 60  0000 C CNN
F 1 "4511" H 3950 3300 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 3950 3250 60  0001 C CNN
F 3 "" H 3950 3250 60  0001 C CNN
	1    3950 3250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5A2CFBD6
P 3950 4000
F 0 "#PWR06" H 3950 3750 50  0001 C CNN
F 1 "GND" H 3950 3850 50  0000 C CNN
F 2 "" H 3950 4000 50  0001 C CNN
F 3 "" H 3950 4000 50  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5A2D1132
P 4700 2700
F 0 "C2" H 4725 2800 50  0000 L CNN
F 1 "22nF" H 4725 2600 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4738 2550 50  0001 C CNN
F 3 "" H 4700 2700 50  0001 C CNN
	1    4700 2700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR07
U 1 1 5A2D12CA
P 4950 2750
F 0 "#PWR07" H 4950 2500 50  0001 C CNN
F 1 "GND" H 4950 2600 50  0000 C CNN
F 2 "" H 4950 2750 50  0001 C CNN
F 3 "" H 4950 2750 50  0001 C CNN
	1    4950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1900 7250 1900
Wire Wire Line
	2600 5350 3500 5350
Wire Wire Line
	3400 5350 3400 6400
Wire Wire Line
	3400 6400 5700 6400
Wire Wire Line
	4050 4850 4050 4950
Wire Wire Line
	4050 6150 4050 6250
Wire Wire Line
	3100 3450 3100 6500
Wire Wire Line
	3100 3450 2550 3450
Wire Wire Line
	3400 5200 3500 5200
Wire Wire Line
	3400 4900 3400 5200
Wire Wire Line
	3250 4900 4800 4900
Connection ~ 4050 4900
Wire Wire Line
	4600 5800 4800 5800
Wire Wire Line
	4600 5700 5300 5700
Connection ~ 4050 6200
Wire Wire Line
	5350 5600 4600 5600
Wire Wire Line
	3100 6500 5350 6500
Wire Wire Line
	3450 5900 3500 5900
Wire Wire Line
	3450 5450 3500 5450
Connection ~ 3450 5900
Wire Wire Line
	3450 5750 3500 5750
Connection ~ 3450 5750
Wire Wire Line
	3500 5650 3450 5650
Connection ~ 3450 5650
Wire Wire Line
	3500 5550 3450 5550
Connection ~ 3450 5550
Wire Wire Line
	3450 5550 3450 6200
Wire Wire Line
	3450 5450 3450 5200
Connection ~ 3450 5200
Wire Wire Line
	4700 6200 4700 6300
Wire Wire Line
	3450 6200 4900 6200
Wire Wire Line
	5350 6500 5350 5600
Wire Wire Line
	7750 4100 7050 4100
Wire Wire Line
	7750 1900 7750 4200
Wire Wire Line
	7750 1900 7650 1900
Wire Wire Line
	7350 3000 7750 3000
Connection ~ 7750 3000
Connection ~ 7750 4100
Wire Wire Line
	4600 5500 5500 5500
Wire Wire Line
	5500 5500 5500 5650
Wire Wire Line
	5500 5950 5500 6300
Wire Wire Line
	3400 2050 3400 1950
Wire Wire Line
	3500 1950 3500 2050
Wire Wire Line
	2550 3250 3200 3250
Wire Wire Line
	2550 3150 2700 3150
Wire Wire Line
	6400 3000 6950 3000
Wire Wire Line
	6500 4100 6650 4100
Wire Wire Line
	2550 3800 2600 3800
Wire Wire Line
	2600 3800 2600 5350
Wire Wire Line
	2600 3900 2550 3900
Wire Wire Line
	7450 2200 7450 5200
Wire Wire Line
	7450 5200 4600 5200
Wire Wire Line
	4600 5300 7150 5300
Wire Wire Line
	7150 5300 7150 3300
Wire Wire Line
	6850 5400 6850 4400
Wire Wire Line
	4600 5400 6850 5400
Wire Wire Line
	5700 6400 5700 5400
Connection ~ 5700 5400
Connection ~ 2600 3900
Connection ~ 3400 5350
Wire Wire Line
	3250 4900 3250 4950
Connection ~ 3400 4900
Wire Wire Line
	3250 5250 3250 5400
Wire Wire Line
	4100 1950 4100 2000
Wire Wire Line
	4100 2000 4400 2000
Wire Wire Line
	4400 2000 4400 1950
Wire Wire Line
	4300 1950 4300 2000
Connection ~ 4300 2000
Wire Wire Line
	4200 1950 4200 2000
Connection ~ 4200 2000
Wire Wire Line
	4250 2000 4250 2100
Connection ~ 4250 2000
Wire Wire Line
	5500 1900 5500 3750
Wire Wire Line
	5400 2600 5400 3850
Wire Wire Line
	5400 2600 6400 2600
Wire Wire Line
	6400 2600 6400 3000
Wire Wire Line
	5300 2550 6500 2550
Wire Wire Line
	6500 2550 6500 4100
Wire Wire Line
	5300 2550 5300 3950
Wire Wire Line
	4800 5800 4800 4900
Wire Wire Line
	5300 5700 5300 6200
Wire Wire Line
	5300 6000 5200 6000
Wire Wire Line
	4800 6000 4700 6000
Wire Wire Line
	4700 6000 4700 5800
Connection ~ 4700 5800
Wire Wire Line
	5500 6300 4700 6300
Connection ~ 4700 6200
Wire Wire Line
	5300 6200 5200 6200
Connection ~ 5300 6000
Wire Wire Line
	3450 3550 3150 3550
Wire Wire Line
	3150 3550 3150 3350
Wire Wire Line
	3150 3350 2550 3350
Wire Wire Line
	3200 3250 3200 3450
Wire Wire Line
	3200 3450 3450 3450
Wire Wire Line
	3450 3050 2700 3050
Wire Wire Line
	2700 3050 2700 3150
Wire Wire Line
	2600 3050 2550 3050
Wire Wire Line
	2600 2950 2600 3050
Wire Wire Line
	2600 2950 3450 2950
Wire Wire Line
	3450 3650 3400 3650
Wire Wire Line
	3400 3350 3400 3950
Wire Wire Line
	3400 3950 3950 3950
Wire Wire Line
	3950 3950 3950 4000
Wire Wire Line
	3950 2700 3950 2650
Wire Wire Line
	3350 2700 4550 2700
Wire Wire Line
	4500 2700 4500 2950
Wire Wire Line
	4500 2950 4450 2950
Wire Wire Line
	3450 3150 3400 3150
Connection ~ 3950 2700
Wire Wire Line
	3300 3250 3450 3250
Wire Wire Line
	3450 3350 3400 3350
Connection ~ 3400 3650
Connection ~ 4500 2700
Wire Wire Line
	4850 2700 4950 2700
Wire Wire Line
	4950 2700 4950 2750
Wire Wire Line
	5500 3750 5600 3750
Wire Wire Line
	5400 3850 5600 3850
Wire Wire Line
	5300 3950 5600 3950
Wire Wire Line
	4450 3050 5600 3050
Wire Wire Line
	4450 3150 5600 3150
Wire Wire Line
	4450 3250 5600 3250
Wire Wire Line
	4450 3350 5600 3350
Wire Wire Line
	4450 3450 5600 3450
Wire Wire Line
	4450 3650 5600 3650
Wire Wire Line
	4450 3550 5600 3550
$Comp
L SW_Push SW2
U 1 1 5A2D1BF0
P 2750 2700
F 0 "SW2" H 2800 2800 50  0000 L CNN
F 1 "SW_Push" H 2750 2640 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 2750 2900 50  0001 C CNN
F 3 "" H 2750 2900 50  0001 C CNN
	1    2750 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3150 3400 2700
$Comp
L R R10
U 1 1 5A2D1E6F
P 3200 2700
F 0 "R10" V 3280 2700 50  0000 C CNN
F 1 "100k" V 3200 2700 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3130 2700 50  0001 C CNN
F 3 "" H 3200 2700 50  0001 C CNN
	1    3200 2700
	0    1    1    0   
$EndComp
Connection ~ 3400 2700
Wire Wire Line
	3300 3250 3300 3150
Wire Wire Line
	3300 3150 3000 3150
Wire Wire Line
	3000 3150 3000 2700
Wire Wire Line
	2950 2700 3050 2700
Connection ~ 3000 2700
$Comp
L GND #PWR08
U 1 1 5A2D21ED
P 2500 2750
F 0 "#PWR08" H 2500 2500 50  0001 C CNN
F 1 "GND" H 2500 2600 50  0000 C CNN
F 2 "" H 2500 2750 50  0001 C CNN
F 3 "" H 2500 2750 50  0001 C CNN
	1    2500 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2750 2500 2700
Wire Wire Line
	2500 2700 2550 2700
$Comp
L Conn_01x11_Male J5
U 1 1 5A318350
P 5800 3450
F 0 "J5" H 5800 4050 50  0000 C CNN
F 1 "Conn_01x11_Male" H 5800 2850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x11_Pitch2.54mm" H 5800 3450 50  0001 C CNN
F 3 "" H 5800 3450 50  0001 C CNN
	1    5800 3450
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR09
U 1 1 5A318A4A
P 3950 2650
F 0 "#PWR09" H 3950 2500 50  0001 C CNN
F 1 "+5V" H 3950 2790 50  0000 C CNN
F 2 "" H 3950 2650 50  0001 C CNN
F 3 "" H 3950 2650 50  0001 C CNN
	1    3950 2650
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR010
U 1 1 5A318B06
P 3400 2050
F 0 "#PWR010" H 3400 1900 50  0001 C CNN
F 1 "+5V" H 3400 2190 50  0000 C CNN
F 2 "" H 3400 2050 50  0001 C CNN
F 3 "" H 3400 2050 50  0001 C CNN
	1    3400 2050
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR011
U 1 1 5A318B77
P 4050 4850
F 0 "#PWR011" H 4050 4700 50  0001 C CNN
F 1 "+5V" H 4050 4990 50  0000 C CNN
F 2 "" H 4050 4850 50  0001 C CNN
F 3 "" H 4050 4850 50  0001 C CNN
	1    4050 4850
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR012
U 1 1 5A318CB4
P 5200 2900
F 0 "#PWR012" H 5200 2750 50  0001 C CNN
F 1 "+5V" H 5200 3040 50  0000 C CNN
F 2 "" H 5200 2900 50  0001 C CNN
F 3 "" H 5200 2900 50  0001 C CNN
	1    5200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 2950 5200 2950
Wire Wire Line
	5200 2950 5200 2900
$EndSCHEMATC
