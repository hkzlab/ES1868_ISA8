EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
encoding utf-8
Sheet 1 1
Title "Quad Serial ISA Adapter"
Date ""
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Bus_ISA_8bit J1
U 1 1 60040338
P 3000 7950
F 0 "J1" H 3000 9717 50  0000 C CNN
F 1 "ISA BUS" H 3000 9626 50  0000 C CNN
F 2 "skiselev_footprints:Conn_Edge_PCB_ISA8" H 3000 7950 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/Industry_Standard_Architecture" H 3000 7950 50  0001 C CNN
	1    3000 7950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 6550 1600 6550
Wire Wire Line
	2300 6950 1600 6950
Wire Wire Line
	2300 7650 1600 7650
Wire Wire Line
	2300 7750 1600 7750
Wire Wire Line
	2300 8450 1600 8450
Wire Wire Line
	2300 8550 1600 8550
Wire Wire Line
	2300 8650 1600 8650
Wire Wire Line
	2300 8850 1600 8850
Wire Wire Line
	4400 6550 3700 6550
Wire Wire Line
	4400 6650 3700 6650
Wire Wire Line
	4400 6750 3700 6750
Wire Wire Line
	4400 6850 3700 6850
Wire Wire Line
	4400 6950 3700 6950
Wire Wire Line
	4400 7050 3700 7050
Wire Wire Line
	4400 7150 3700 7150
Wire Wire Line
	4400 7250 3700 7250
Wire Wire Line
	4400 7450 3700 7450
Wire Wire Line
	4400 7950 3700 7950
Wire Wire Line
	4400 8050 3700 8050
Wire Wire Line
	4400 8150 3700 8150
Wire Wire Line
	4400 8250 3700 8250
Wire Wire Line
	4400 8350 3700 8350
Wire Wire Line
	4400 8450 3700 8450
Wire Wire Line
	4400 8550 3700 8550
Wire Wire Line
	4400 8650 3700 8650
Wire Wire Line
	4400 8750 3700 8750
Wire Wire Line
	4400 8850 3700 8850
Wire Wire Line
	4400 8950 3700 8950
Wire Wire Line
	4400 9050 3700 9050
Wire Wire Line
	4400 9150 3700 9150
Wire Wire Line
	4400 9250 3700 9250
Wire Wire Line
	4400 9350 3700 9350
Wire Wire Line
	4400 9450 3700 9450
NoConn ~ 2300 6850
NoConn ~ 2300 7150
NoConn ~ 2300 8350
NoConn ~ 2300 9150
NoConn ~ 2300 9350
NoConn ~ 3700 6450
Text Label 4400 9450 2    50   ~ 0
A0
Text Label 4400 9350 2    50   ~ 0
A1
Text Label 4400 9250 2    50   ~ 0
A2
Text Label 4400 9150 2    50   ~ 0
A3
Text Label 4400 9050 2    50   ~ 0
A4
Text Label 4400 8950 2    50   ~ 0
A5
Text Label 4400 8850 2    50   ~ 0
A6
Text Label 4400 8750 2    50   ~ 0
A7
Text Label 4400 8650 2    50   ~ 0
A8
Text Label 4400 8550 2    50   ~ 0
A9
Text Label 4400 8450 2    50   ~ 0
A10
Text Label 4400 8350 2    50   ~ 0
A11
Text Label 4400 8250 2    50   ~ 0
A12
Text Label 4400 8150 2    50   ~ 0
A13
Text Label 4400 8050 2    50   ~ 0
A14
Text Label 4400 7950 2    50   ~ 0
A15
Text Label 4400 7450 2    50   ~ 0
AEN
Text Label 4400 7250 2    50   ~ 0
D0
Text Label 4400 7150 2    50   ~ 0
D1
Text Label 4400 7050 2    50   ~ 0
D2
Text Label 4400 6950 2    50   ~ 0
D3
Text Label 4400 6850 2    50   ~ 0
D4
Text Label 4400 6750 2    50   ~ 0
D5
Text Label 4400 6650 2    50   ~ 0
D6
Text Label 4400 6550 2    50   ~ 0
D7
Text Label 1600 6550 0    50   ~ 0
RESETDRV
$Comp
L power:GND #PWR0127
U 1 1 60E466E6
P 1500 6500
F 0 "#PWR0127" H 1500 6250 50  0001 C CNN
F 1 "GND" H 1350 6450 50  0000 C CNN
F 2 "" H 1500 6500 50  0001 C CNN
F 3 "" H 1500 6500 50  0001 C CNN
	1    1500 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 6450 1500 6500
Wire Wire Line
	1500 6450 2300 6450
$Comp
L power:VCC #PWR0128
U 1 1 60E645D9
P 1200 6600
F 0 "#PWR0128" H 1200 6450 50  0001 C CNN
F 1 "VCC" H 1215 6773 50  0000 C CNN
F 2 "" H 1200 6600 50  0001 C CNN
F 3 "" H 1200 6600 50  0001 C CNN
	1    1200 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6600 1200 6650
Wire Wire Line
	1200 6650 2300 6650
Text Label 1600 6950 0    50   ~ 0
DRQ2
$Comp
L power:-12V #PWR0129
U 1 1 60E8203A
P 1500 7000
F 0 "#PWR0129" H 1500 7100 50  0001 C CNN
F 1 "-12V" H 1350 7050 50  0000 C CNN
F 2 "" H 1500 7000 50  0001 C CNN
F 3 "" H 1500 7000 50  0001 C CNN
	1    1500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7000 1500 7050
Wire Wire Line
	1500 7050 2300 7050
$Comp
L power:+12V #PWR0130
U 1 1 60E9FB3E
P 1500 7200
F 0 "#PWR0130" H 1500 7050 50  0001 C CNN
F 1 "+12V" H 1350 7250 50  0000 C CNN
F 2 "" H 1500 7200 50  0001 C CNN
F 3 "" H 1500 7200 50  0001 C CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7200 1500 7250
Wire Wire Line
	1500 7250 2300 7250
$Comp
L power:GND #PWR0131
U 1 1 60EBDD4D
P 1500 7400
F 0 "#PWR0131" H 1500 7150 50  0001 C CNN
F 1 "GND" H 1505 7227 50  0000 C CNN
F 2 "" H 1500 7400 50  0001 C CNN
F 3 "" H 1500 7400 50  0001 C CNN
	1    1500 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7350 1500 7400
Wire Wire Line
	1500 7350 2300 7350
Text Label 1600 7650 0    50   ~ 0
~IOW
Text Label 1600 7750 0    50   ~ 0
~IOR
Text Label 1600 8450 0    50   ~ 0
IRQ7
Text Label 1600 8550 0    50   ~ 0
IRQ6
Text Label 1600 8650 0    50   ~ 0
IRQ5
Wire Wire Line
	2300 8750 1600 8750
Text Label 1600 8750 0    50   ~ 0
IRQ4
Text Label 1600 8850 0    50   ~ 0
IRQ3
Text Label 1600 8950 0    50   ~ 0
~DACK2
$Comp
L power:GND #PWR0132
U 1 1 60EFBC43
P 1500 9500
F 0 "#PWR0132" H 1500 9250 50  0001 C CNN
F 1 "GND" H 1505 9327 50  0000 C CNN
F 2 "" H 1500 9500 50  0001 C CNN
F 3 "" H 1500 9500 50  0001 C CNN
	1    1500 9500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 9500 1500 9450
Wire Wire Line
	1500 9450 2300 9450
$Comp
L power:VCC #PWR0133
U 1 1 60F1A67C
P 1500 9150
F 0 "#PWR0133" H 1500 9000 50  0001 C CNN
F 1 "VCC" H 1515 9323 50  0000 C CNN
F 2 "" H 1500 9150 50  0001 C CNN
F 3 "" H 1500 9150 50  0001 C CNN
	1    1500 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 9150 1500 9250
Wire Wire Line
	1500 9250 2300 9250
$Comp
L Device:CP_Small C1
U 1 1 610853FE
P 1350 10250
F 0 "C1" H 1438 10296 50  0000 L CNN
F 1 "10uF" H 1438 10205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1350 10250 50  0001 C CNN
F 3 "~" H 1350 10250 50  0001 C CNN
	1    1350 10250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61086024
P 1750 10250
F 0 "C2" H 1842 10296 50  0000 L CNN
F 1 "100nF" H 1842 10205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 1750 10250 50  0001 C CNN
F 3 "~" H 1750 10250 50  0001 C CNN
	1    1750 10250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 6108687E
P 1100 10000
F 0 "#PWR0135" H 1100 9750 50  0001 C CNN
F 1 "GND" H 1105 9827 50  0000 C CNN
F 2 "" H 1100 10000 50  0001 C CNN
F 3 "" H 1100 10000 50  0001 C CNN
	1    1100 10000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 10000 1100 9950
Wire Wire Line
	1100 9950 1350 9950
Wire Wire Line
	1350 9950 1350 10150
Wire Wire Line
	1350 9950 1750 9950
Wire Wire Line
	1750 9950 1750 10150
Connection ~ 1350 9950
$Comp
L power:-12V #PWR0136
U 1 1 610C70C1
P 1100 10600
F 0 "#PWR0136" H 1100 10700 50  0001 C CNN
F 1 "-12V" H 1115 10773 50  0000 C CNN
F 2 "" H 1100 10600 50  0001 C CNN
F 3 "" H 1100 10600 50  0001 C CNN
	1    1100 10600
	-1   0    0    1   
$EndComp
Wire Wire Line
	1750 10500 1350 10500
Wire Wire Line
	1350 10500 1350 10350
Wire Wire Line
	1750 10350 1750 10500
Wire Wire Line
	1350 10500 1100 10500
Wire Wire Line
	1100 10500 1100 10600
Connection ~ 1350 10500
$Comp
L Device:CP_Small C3
U 1 1 6116AF87
P 2400 10250
F 0 "C3" H 2488 10296 50  0000 L CNN
F 1 "10uF" H 2488 10205 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 2400 10250 50  0001 C CNN
F 3 "~" H 2400 10250 50  0001 C CNN
	1    2400 10250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6116B0B7
P 2800 10250
F 0 "C4" H 2892 10296 50  0000 L CNN
F 1 "100nF" H 2892 10205 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 2800 10250 50  0001 C CNN
F 3 "~" H 2800 10250 50  0001 C CNN
	1    2800 10250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0137
U 1 1 6116B0C1
P 2150 10600
F 0 "#PWR0137" H 2150 10350 50  0001 C CNN
F 1 "GND" H 2155 10427 50  0000 C CNN
F 2 "" H 2150 10600 50  0001 C CNN
F 3 "" H 2150 10600 50  0001 C CNN
	1    2150 10600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 9950 2400 10150
Wire Wire Line
	2400 9950 2800 9950
Wire Wire Line
	2800 9950 2800 10150
Wire Wire Line
	2800 10500 2400 10500
Wire Wire Line
	2400 10500 2400 10350
Wire Wire Line
	2800 10350 2800 10500
Wire Wire Line
	2400 10500 2150 10500
Wire Wire Line
	2150 10500 2150 10600
Connection ~ 2400 10500
Wire Wire Line
	2400 9950 2150 9950
Connection ~ 2400 9950
Wire Wire Line
	2150 9850 2150 9950
$Comp
L power:+12V #PWR0138
U 1 1 61240CC5
P 2150 9850
F 0 "#PWR0138" H 2150 9700 50  0001 C CNN
F 1 "+12V" H 2165 10023 50  0000 C CNN
F 2 "" H 2150 9850 50  0001 C CNN
F 3 "" H 2150 9850 50  0001 C CNN
	1    2150 9850
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C5
U 1 1 61243061
P 1350 11500
F 0 "C5" H 1438 11546 50  0000 L CNN
F 1 "10uF" H 1438 11455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1350 11500 50  0001 C CNN
F 3 "~" H 1350 11500 50  0001 C CNN
	1    1350 11500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C7
U 1 1 612431D5
P 2100 11500
F 0 "C7" H 2192 11546 50  0000 L CNN
F 1 "100nF" H 2192 11455 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 2100 11500 50  0001 C CNN
F 3 "~" H 2100 11500 50  0001 C CNN
	1    2100 11500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0139
U 1 1 612431DF
P 1100 11850
F 0 "#PWR0139" H 1100 11600 50  0001 C CNN
F 1 "GND" H 1105 11677 50  0000 C CNN
F 2 "" H 1100 11850 50  0001 C CNN
F 3 "" H 1100 11850 50  0001 C CNN
	1    1100 11850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 11200 1350 11400
Wire Wire Line
	1350 11200 1750 11200
Wire Wire Line
	1750 11200 1750 11400
Wire Wire Line
	1750 11750 1350 11750
Wire Wire Line
	1350 11750 1350 11600
Wire Wire Line
	1750 11600 1750 11750
Wire Wire Line
	1350 11750 1100 11750
Wire Wire Line
	1100 11750 1100 11850
Connection ~ 1350 11750
Wire Wire Line
	1350 11200 1100 11200
Connection ~ 1350 11200
Wire Wire Line
	1100 11100 1100 11200
$Comp
L power:VCC #PWR0140
U 1 1 6128FF67
P 1100 11100
F 0 "#PWR0140" H 1100 10950 50  0001 C CNN
F 1 "VCC" H 1115 11273 50  0000 C CNN
F 2 "" H 1100 11100 50  0001 C CNN
F 3 "" H 1100 11100 50  0001 C CNN
	1    1100 11100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C6
U 1 1 612911A6
P 1750 11500
F 0 "C6" H 1838 11546 50  0000 L CNN
F 1 "10uF" H 1838 11455 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 1750 11500 50  0001 C CNN
F 3 "~" H 1750 11500 50  0001 C CNN
	1    1750 11500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 11200 2100 11200
Connection ~ 1750 11200
Wire Wire Line
	1750 11750 2100 11750
Connection ~ 1750 11750
Wire Wire Line
	2100 11400 2100 11200
Wire Wire Line
	2100 11600 2100 11750
Wire Notes Line
	750  5350 750  15900
Wire Notes Line
	750  15900 4950 15900
Wire Notes Line
	4950 15900 4950 5350
Wire Notes Line
	4950 5350 750  5350
Text Notes 900  15700 0    197  ~ 0
ISA & Decoupling
NoConn ~ 2300 9050
Wire Wire Line
	2300 8950 1600 8950
Text Label 1600 7850 0    50   ~ 0
~DACK3
Wire Wire Line
	2300 7850 1600 7850
Text Label 1600 8050 0    50   ~ 0
~DACK1
Wire Wire Line
	2300 8050 1600 8050
Text Label 1600 8250 0    50   ~ 0
~DACK0
Wire Wire Line
	2300 8250 1600 8250
Wire Wire Line
	2300 8150 1600 8150
Text Label 1600 8150 0    50   ~ 0
DRQ1
Wire Wire Line
	2300 7950 1600 7950
Text Label 1600 7950 0    50   ~ 0
DRQ3
Wire Wire Line
	2300 6750 1600 6750
Text Label 1600 6750 0    50   ~ 0
IRQ9
NoConn ~ 2300 7450
NoConn ~ 2300 7550
NoConn ~ 3700 7550
NoConn ~ 3700 7650
NoConn ~ 3700 7750
NoConn ~ 3700 7850
Wire Wire Line
	3700 7350 4400 7350
Text Label 4400 7350 2    50   ~ 0
IOCHRDY
$EndSCHEMATC
