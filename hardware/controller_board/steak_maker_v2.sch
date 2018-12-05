EESchema Schematic File Version 4
LIBS:steak_maker_v2-cache
EELAYER 28 0
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
L steak_maker_v2-rescue:LPC1114FBD48-301-nxp_armmcu IC1
U 1 1 5A6F5572
P 4800 3250
F 0 "IC1" H 3850 4750 50  0000 C CNN
F 1 "LPC1114FBD48-301" H 4200 4650 50  0000 C CNN
F 2 "Housings_QFP:LQFP-48_7x7mm_Pitch0.5mm" H 3800 1800 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/LPC111X.pdf" H 6700 3850 50  0001 C CNN
	1    4800 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1750 4700 1550
Wire Wire Line
	4700 1550 4900 1550
Wire Wire Line
	4900 1550 4900 1750
Wire Wire Line
	4700 1550 4700 1400
Connection ~ 4700 1550
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR01
U 1 1 5A6F56B5
P 4700 1400
F 0 "#PWR01" H 4700 1250 50  0001 C CNN
F 1 "+3V3" H 4715 1573 50  0000 C CNN
F 2 "" H 4700 1400 50  0001 C CNN
F 3 "" H 4700 1400 50  0001 C CNN
	1    4700 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4350 5700 4350
Wire Wire Line
	5700 4350 5700 4300
Wire Wire Line
	5500 4450 5700 4450
Wire Wire Line
	5700 4450 5700 4500
Wire Wire Line
	5700 4500 6250 4500
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C1
U 1 1 5A6F8EE9
P 5400 1150
F 0 "C1" V 5504 1260 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 5400 890 60  0001 L CNN
F 2 "CAPC1608X90N" H 5400 80  60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 5400 710 60  0001 L CNN
F 4 "100nF" V 5595 1260 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 5400 620 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 5400 530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 5400 440 60  0001 L CNN "Library Path"
F 8 "=Value" H 5400 350 60  0001 L CNN "Comment"
F 9 "Standard" H 5400 260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 5400 170 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 5400 -10 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 5400 -100 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 5400 -190 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 5400 -280 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 5400 -370 60  0001 L CNN "Val"
F 16 "None" H 5400 -460 60  0001 L CNN "Status"
F 17 "~~" H 5400 -550 60  0001 L CNN "Status Comment"
F 18 "100V" H 5400 -640 60  0001 L CNN "Voltage"
F 19 "X7R" H 5400 -730 60  0001 L CNN "TC"
F 20 "±10%" H 5400 -820 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 5400 -910 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 5400 -1000 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 5400 -1090 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 5400 -1180 60  0001 L CNN "Case"
F 25 "Yes" H 5400 -1270 60  0001 L CNN "Mounted"
F 26 "No" H 5400 -1360 60  0001 L CNN "Socket"
F 27 "Yes" H 5400 -1450 60  0001 L CNN "SMD"
F 28 "~~" H 5400 -1540 60  0001 L CNN "PressFit"
F 29 "No" H 5400 -1630 60  0001 L CNN "Sense"
F 30 "~~" H 5400 -1720 60  0001 L CNN "Sense Comment"
F 31 "~~" H 5400 -1810 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 5400 -1900 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 5400 -1990 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 5400 -2080 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 5400 -2170 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 5400 -2260 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 5400 -2350 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 5400 -2440 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 5400 -2530 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 5400 -2620 60  0001 L CNN "License"
	1    5400 1150
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C3
U 1 1 5A6F9090
P 5900 1150
F 0 "C3" V 6004 1260 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 5900 890 60  0001 L CNN
F 2 "CAPC1608X90N" H 5900 80  60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 5900 710 60  0001 L CNN
F 4 "100nF" V 6095 1260 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 5900 620 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 5900 530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 5900 440 60  0001 L CNN "Library Path"
F 8 "=Value" H 5900 350 60  0001 L CNN "Comment"
F 9 "Standard" H 5900 260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 5900 170 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 5900 -10 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 5900 -100 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 5900 -190 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 5900 -280 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 5900 -370 60  0001 L CNN "Val"
F 16 "None" H 5900 -460 60  0001 L CNN "Status"
F 17 "~~" H 5900 -550 60  0001 L CNN "Status Comment"
F 18 "100V" H 5900 -640 60  0001 L CNN "Voltage"
F 19 "X7R" H 5900 -730 60  0001 L CNN "TC"
F 20 "±10%" H 5900 -820 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 5900 -910 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 5900 -1000 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 5900 -1090 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 5900 -1180 60  0001 L CNN "Case"
F 25 "Yes" H 5900 -1270 60  0001 L CNN "Mounted"
F 26 "No" H 5900 -1360 60  0001 L CNN "Socket"
F 27 "Yes" H 5900 -1450 60  0001 L CNN "SMD"
F 28 "~~" H 5900 -1540 60  0001 L CNN "PressFit"
F 29 "No" H 5900 -1630 60  0001 L CNN "Sense"
F 30 "~~" H 5900 -1720 60  0001 L CNN "Sense Comment"
F 31 "~~" H 5900 -1810 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 5900 -1900 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 5900 -1990 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 5900 -2080 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 5900 -2170 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 5900 -2260 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 5900 -2350 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 5900 -2440 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 5900 -2530 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 5900 -2620 60  0001 L CNN "License"
	1    5900 1150
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR02
U 1 1 5A6F913E
P 5400 1550
F 0 "#PWR02" H 5400 1300 50  0001 C CNN
F 1 "GND" H 5405 1377 50  0000 C CNN
F 2 "" H 5400 1550 50  0001 C CNN
F 3 "" H 5400 1550 50  0001 C CNN
	1    5400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1450 5400 1500
Wire Wire Line
	5400 1500 5900 1500
Wire Wire Line
	5900 1500 5900 1450
Connection ~ 5400 1500
Wire Wire Line
	5400 1500 5400 1550
Wire Wire Line
	5400 1150 5400 1050
Wire Wire Line
	5400 1050 5900 1050
Wire Wire Line
	5900 1050 5900 1150
Wire Wire Line
	5400 1050 5400 1000
Connection ~ 5400 1050
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR03
U 1 1 5A6F950D
P 5400 1000
F 0 "#PWR03" H 5400 850 50  0001 C CNN
F 1 "+3V3" H 5415 1173 50  0000 C CNN
F 2 "" H 5400 1000 50  0001 C CNN
F 3 "" H 5400 1000 50  0001 C CNN
	1    5400 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4300 5850 4300
$Comp
L steak_maker_v2-rescue:CC0603_18PF_50V_5%_NP0-Capacitors_SMD C2
U 1 1 5A6FDAC3
P 5850 4650
F 0 "C2" V 5954 4760 50  0000 L CNN
F 1 "CC0603_18PF_50V_5%_NP0" H 5850 4390 60  0001 L CNN
F 2 "CAPC1608X87N" H 5850 3580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 5850 4210 60  0001 L CNN
F 4 "18pF" V 6045 4760 50  0000 L CNN "~"
F 5 "CC0603_18PF_50V_5%_NP0" H 5850 4120 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 5850 4030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 5850 3940 60  0001 L CNN "Library Path"
F 8 "=Value" H 5850 3850 60  0001 L CNN "Comment"
F 9 "Standard" H 5850 3760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 5850 3670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 5850 3490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 5850 3400 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X87N" H 5850 3310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 5850 3220 60  0001 L CNN "PackageDescription"
F 15 "18pF" H 5850 3130 60  0001 L CNN "Val"
F 16 "Preferred" H 5850 3040 60  0001 L CNN "Status"
F 17 "~~" H 5850 2950 60  0001 L CNN "Status Comment"
F 18 "50V" H 5850 2860 60  0001 L CNN "Voltage"
F 19 "C0G/NP0" H 5850 2770 60  0001 L CNN "TC"
F 20 "±5%" H 5850 2680 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 5850 2590 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 5850 2500 60  0001 L CNN "Manufacturer"
F 23 "CC0603_18PF_50V_5%_NP0" H 5850 2410 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 5850 2320 60  0001 L CNN "Case"
F 25 "Yes" H 5850 2230 60  0001 L CNN "Mounted"
F 26 "No" H 5850 2140 60  0001 L CNN "Socket"
F 27 "Yes" H 5850 2050 60  0001 L CNN "SMD"
F 28 "~~" H 5850 1960 60  0001 L CNN "PressFit"
F 29 "No" H 5850 1870 60  0001 L CNN "Sense"
F 30 "~~" H 5850 1780 60  0001 L CNN "Sense Comment"
F 31 "~~" H 5850 1690 60  0001 L CNN "ComponentHeight"
F 32 "PHYCOMP" H 5850 1600 60  0001 L CNN "Manufacturer1 Example"
F 33 "223886715189" H 5850 1510 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.87mm" H 5850 1420 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 5850 1330 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 5850 1240 60  0001 L CNN "Author"
F 37 "12/03/07 00:00:00" H 5850 1150 60  0001 L CNN "CreateDate"
F 38 "12/03/07 00:00:00" H 5850 1060 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 5850 970 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 5850 880 60  0001 L CNN "License"
	1    5850 4650
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_18PF_50V_5%_NP0-Capacitors_SMD C4
U 1 1 5A6FDC87
P 6250 4650
F 0 "C4" V 6354 4760 50  0000 L CNN
F 1 "CC0603_18PF_50V_5%_NP0" H 6250 4390 60  0001 L CNN
F 2 "CAPC1608X87N" H 6250 3580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 6250 4210 60  0001 L CNN
F 4 "18pF" V 6445 4760 50  0000 L CNN "~"
F 5 "CC0603_18PF_50V_5%_NP0" H 6250 4120 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 6250 4030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 6250 3940 60  0001 L CNN "Library Path"
F 8 "=Value" H 6250 3850 60  0001 L CNN "Comment"
F 9 "Standard" H 6250 3760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 6250 3670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 6250 3490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 6250 3400 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X87N" H 6250 3310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 6250 3220 60  0001 L CNN "PackageDescription"
F 15 "18pF" H 6250 3130 60  0001 L CNN "Val"
F 16 "Preferred" H 6250 3040 60  0001 L CNN "Status"
F 17 "~~" H 6250 2950 60  0001 L CNN "Status Comment"
F 18 "50V" H 6250 2860 60  0001 L CNN "Voltage"
F 19 "C0G/NP0" H 6250 2770 60  0001 L CNN "TC"
F 20 "±5%" H 6250 2680 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 6250 2590 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 6250 2500 60  0001 L CNN "Manufacturer"
F 23 "CC0603_18PF_50V_5%_NP0" H 6250 2410 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 6250 2320 60  0001 L CNN "Case"
F 25 "Yes" H 6250 2230 60  0001 L CNN "Mounted"
F 26 "No" H 6250 2140 60  0001 L CNN "Socket"
F 27 "Yes" H 6250 2050 60  0001 L CNN "SMD"
F 28 "~~" H 6250 1960 60  0001 L CNN "PressFit"
F 29 "No" H 6250 1870 60  0001 L CNN "Sense"
F 30 "~~" H 6250 1780 60  0001 L CNN "Sense Comment"
F 31 "~~" H 6250 1690 60  0001 L CNN "ComponentHeight"
F 32 "PHYCOMP" H 6250 1600 60  0001 L CNN "Manufacturer1 Example"
F 33 "223886715189" H 6250 1510 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.87mm" H 6250 1420 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 6250 1330 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 6250 1240 60  0001 L CNN "Author"
F 37 "12/03/07 00:00:00" H 6250 1150 60  0001 L CNN "CreateDate"
F 38 "12/03/07 00:00:00" H 6250 1060 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 6250 970 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 6250 880 60  0001 L CNN "License"
	1    6250 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 4650 6250 4500
Connection ~ 6250 4500
Wire Wire Line
	5850 4650 5850 4300
Connection ~ 5850 4300
Wire Wire Line
	5850 4300 6350 4300
$Comp
L steak_maker_v2-rescue:GND-power #PWR05
U 1 1 5A6FE557
P 6250 4950
F 0 "#PWR05" H 6250 4700 50  0001 C CNN
F 1 "GND" H 6255 4777 50  0000 C CNN
F 2 "" H 6250 4950 50  0001 C CNN
F 3 "" H 6250 4950 50  0001 C CNN
	1    6250 4950
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR06
U 1 1 5A6FE58F
P 5850 4950
F 0 "#PWR06" H 5850 4700 50  0001 C CNN
F 1 "GND" H 5855 4777 50  0000 C CNN
F 2 "" H 5850 4950 50  0001 C CNN
F 3 "" H 5850 4950 50  0001 C CNN
	1    5850 4950
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR07
U 1 1 5A6FE5A8
P 4900 4950
F 0 "#PWR07" H 4900 4700 50  0001 C CNN
F 1 "GND" H 4905 4777 50  0000 C CNN
F 2 "" H 4900 4950 50  0001 C CNN
F 3 "" H 4900 4950 50  0001 C CNN
	1    4900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4750 4700 4850
Wire Wire Line
	4700 4850 4900 4850
Wire Wire Line
	4900 4850 4900 4950
Wire Wire Line
	4900 4850 4900 4750
Connection ~ 4900 4850
$Comp
L steak_maker_v2-rescue:LD1117DT33TR-Regulators IC3
U 1 1 5A6F6164
P 9250 5350
F 0 "IC3" H 9550 5515 50  0000 C CNN
F 1 "LD1117DT33TR" H 9550 5424 50  0000 C CNN
F 2 "ICs And Semiconductors SMD:TO228P972X240-3N-R540X510" H 9250 3790 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\LD1117DT33TR.pdf" H 9250 4510 60  0001 L CNN
F 4 "LD1117DT33TR" H 9250 4420 60  0001 L CNN "Part Number"
F 5 "REG3 1GND-2IN-3OUT" H 9250 4330 60  0001 L CNN "Library Ref"
F 6 "SchLib\\Regulators.SchLib" H 9250 4240 60  0001 L CNN "Library Path"
F 7 "=Device" H 9250 4150 60  0001 L CNN "Comment"
F 8 "Standard" H 9250 4060 60  0001 L CNN "Component Kind"
F 9 "Standard" H 9250 3970 60  0001 L CNN "Component Type"
F 10 "LD1117DT33TR" H 9250 3880 60  0001 L CNN "Device"
F 11 "DPAK TO-252, 2.28mm pitch; 2 pin, 9.725mm L X 6.10mm W X 2.40mm H body, IPC Medium Density" H 9250 3700 60  0001 L CNN "PackageDescription"
F 12 "~~" H 9250 3610 60  0001 L CNN "Status"
F 13 "3.3V 800mA Low drop fixed and adjustable positive voltage regulators" H 9250 3520 60  0001 L CNN "Part Description"
F 14 "ST MICROELECTRONICS" H 9250 3430 60  0001 L CNN "Manufacturer"
F 15 "LD1117DT33TR" H 9250 3340 60  0001 L CNN "Manufacturer Part Number"
F 16 "3" H 9250 3250 60  0001 L CNN "Pin Count"
F 17 "DPAK" H 9250 3160 60  0001 L CNN "Case"
F 18 "Yes" H 9250 3070 60  0001 L CNN "Mounted"
F 19 "No" H 9250 2980 60  0001 L CNN "Socket"
F 20 "Yes" H 9250 2890 60  0001 L CNN "SMD"
F 21 "No" H 9250 2800 60  0001 L CNN "PressFit"
F 22 "No" H 9250 2710 60  0001 L CNN "Sense"
F 23 "~~" H 9250 2620 60  0001 L CNN "Sense Comment"
F 24 "No" H 9250 2530 60  0001 L CNN "Bonding"
F 25 "~~" H 9250 2440 60  0001 L CNN "Status Comment"
F 26 "2.4mm" H 9250 2350 60  0001 L CNN "ComponentHeight"
F 27 "PcbLib\\ICs And Semiconductors SMD.PcbLib" H 9250 2260 60  0001 L CNN "Footprint Path"
F 28 "TO228P972X240-3N-R540X510" H 9250 2170 60  0001 L CNN "Footprint Ref"
F 29 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\LD1117DT33TR.pdf" H 9250 2080 60  0001 L CNN "HelpURL"
F 30 "~~" H 9250 1990 60  0001 L CNN "ComponentLink1URL"
F 31 "~~" H 9250 1900 60  0001 L CNN "ComponentLink1Description"
F 32 "~~" H 9250 1810 60  0001 L CNN "ComponentLink2URL"
F 33 "~~" H 9250 1720 60  0001 L CNN "ComponentLink2Description"
F 34 "CERN DEM JLC" H 9250 1630 60  0001 L CNN "Author"
F 35 "09/02/09 00:00:00" H 9250 1540 60  0001 L CNN "CreateDate"
F 36 "09/21/09 00:00:00" H 9250 1450 60  0001 L CNN "LatestRevisionDate"
F 37 "~~" H 9250 1360 60  0001 L CNN "SCEM"
F 38 "ICs And Semiconductors SMD" H 9250 1270 60  0001 L CNN "Library Name"
F 39 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 9250 1180 60  0001 L CNN "License"
	1    9250 5350
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C8
U 1 1 5A6F6304
P 8900 5650
F 0 "C8" V 9004 5760 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 8900 5390 60  0001 L CNN
F 2 "CAPC1608X90N" H 8900 4580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 8900 5210 60  0001 L CNN
F 4 "100nF" V 9095 5760 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 8900 5120 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 8900 5030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 8900 4940 60  0001 L CNN "Library Path"
F 8 "=Value" H 8900 4850 60  0001 L CNN "Comment"
F 9 "Standard" H 8900 4760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 8900 4670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 8900 4490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 8900 4400 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 8900 4310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 8900 4220 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 8900 4130 60  0001 L CNN "Val"
F 16 "None" H 8900 4040 60  0001 L CNN "Status"
F 17 "~~" H 8900 3950 60  0001 L CNN "Status Comment"
F 18 "100V" H 8900 3860 60  0001 L CNN "Voltage"
F 19 "X7R" H 8900 3770 60  0001 L CNN "TC"
F 20 "±10%" H 8900 3680 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 8900 3590 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 8900 3500 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 8900 3410 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 8900 3320 60  0001 L CNN "Case"
F 25 "Yes" H 8900 3230 60  0001 L CNN "Mounted"
F 26 "No" H 8900 3140 60  0001 L CNN "Socket"
F 27 "Yes" H 8900 3050 60  0001 L CNN "SMD"
F 28 "~~" H 8900 2960 60  0001 L CNN "PressFit"
F 29 "No" H 8900 2870 60  0001 L CNN "Sense"
F 30 "~~" H 8900 2780 60  0001 L CNN "Sense Comment"
F 31 "~~" H 8900 2690 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 8900 2600 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 8900 2510 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 8900 2420 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 8900 2330 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 8900 2240 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 8900 2150 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 8900 2060 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 8900 1970 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 8900 1880 60  0001 L CNN "License"
	1    8900 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	9050 5450 8900 5450
Wire Wire Line
	8900 5450 8900 5650
Wire Wire Line
	8900 5950 8900 6100
Wire Wire Line
	8900 6100 9550 6100
Wire Wire Line
	9550 6100 9550 5850
Wire Wire Line
	9550 6100 10200 6100
Wire Wire Line
	10200 5450 10050 5450
Connection ~ 9550 6100
Connection ~ 8900 5450
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C9
U 1 1 5A6F7B9D
P 10200 5650
F 0 "C9" V 10304 5760 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 10200 5390 60  0001 L CNN
F 2 "CAPC1608X90N" H 10200 4580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 10200 5210 60  0001 L CNN
F 4 "100nF" V 10395 5760 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 10200 5120 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 10200 5030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 10200 4940 60  0001 L CNN "Library Path"
F 8 "=Value" H 10200 4850 60  0001 L CNN "Comment"
F 9 "Standard" H 10200 4760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 10200 4670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 10200 4490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 10200 4400 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 10200 4310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 10200 4220 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 10200 4130 60  0001 L CNN "Val"
F 16 "None" H 10200 4040 60  0001 L CNN "Status"
F 17 "~~" H 10200 3950 60  0001 L CNN "Status Comment"
F 18 "100V" H 10200 3860 60  0001 L CNN "Voltage"
F 19 "X7R" H 10200 3770 60  0001 L CNN "TC"
F 20 "±10%" H 10200 3680 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 10200 3590 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 10200 3500 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 10200 3410 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 10200 3320 60  0001 L CNN "Case"
F 25 "Yes" H 10200 3230 60  0001 L CNN "Mounted"
F 26 "No" H 10200 3140 60  0001 L CNN "Socket"
F 27 "Yes" H 10200 3050 60  0001 L CNN "SMD"
F 28 "~~" H 10200 2960 60  0001 L CNN "PressFit"
F 29 "No" H 10200 2870 60  0001 L CNN "Sense"
F 30 "~~" H 10200 2780 60  0001 L CNN "Sense Comment"
F 31 "~~" H 10200 2690 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 10200 2600 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 10200 2510 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 10200 2420 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 10200 2330 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 10200 2240 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 10200 2150 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 10200 2060 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 10200 1970 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 10200 1880 60  0001 L CNN "License"
	1    10200 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	10200 5650 10200 5450
Wire Wire Line
	10200 5950 10200 6100
$Comp
L steak_maker_v2-rescue:GND-power #PWR08
U 1 1 5A6F89D8
P 9550 6200
F 0 "#PWR08" H 9550 5950 50  0001 C CNN
F 1 "GND" H 9555 6027 50  0000 C CNN
F 2 "" H 9550 6200 50  0001 C CNN
F 3 "" H 9550 6200 50  0001 C CNN
	1    9550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 6200 9550 6100
$Comp
L steak_maker_v2-rescue:CTE3528-21_22UF_10V_10%_LESR0700-Capacitors_SMD C7
U 1 1 5A6FB05C
P 8450 5650
F 0 "C7" V 8554 5767 50  0000 L CNN
F 1 "CTE3528-21_22UF_10V_10%_LESR0700" H 8450 5390 60  0001 L CNN
F 2 "Capacitors SMD:CAPMP3528X210N" H 8450 4580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CTE-LESR_AVX_TPS.pdf" H 8450 5210 60  0001 L CNN
F 4 "22uF" V 8645 5767 50  0000 L CNN "~"
F 5 "CTE3528-21_22UF_10V_10%_LESR0700" H 8450 5120 60  0001 L CNN "Part Number"
F 6 "Capacitor - polarized" H 8450 5030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 8450 4940 60  0001 L CNN "Library Path"
F 8 "=Value" H 8450 4850 60  0001 L CNN "Comment"
F 9 "Standard" H 8450 4760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 8450 4670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 8450 4490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 8450 4400 60  0001 L CNN "Footprint Path"
F 13 "CAPMP3528X210N" H 8450 4310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 8450 4220 60  0001 L CNN "PackageDescription"
F 15 "22uF" H 8450 4130 60  0001 L CNN "Val"
F 16 "Preferred" H 8450 4040 60  0001 L CNN "Status"
F 17 "~~" H 8450 3950 60  0001 L CNN "Status Comment"
F 18 "10V" H 8450 3860 60  0001 L CNN "Voltage"
F 19 "~~" H 8450 3770 60  0001 L CNN "TC"
F 20 "±10%" H 8450 3680 60  0001 L CNN "Tolerance"
F 21 "Low ESR 0R7 Solid Tantalum Chip Capacitor" H 8450 3590 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 8450 3500 60  0001 L CNN "Manufacturer"
F 23 "CTE3528-21_22UF_10V_10%_LESR0700" H 8450 3410 60  0001 L CNN "Manufacturer Part Number"
F 24 "B" H 8450 3320 60  0001 L CNN "Case"
F 25 "Yes" H 8450 3230 60  0001 L CNN "Mounted"
F 26 "No" H 8450 3140 60  0001 L CNN "Socket"
F 27 "Yes" H 8450 3050 60  0001 L CNN "SMD"
F 28 "~~" H 8450 2960 60  0001 L CNN "PressFit"
F 29 "No" H 8450 2870 60  0001 L CNN "Sense"
F 30 "~~" H 8450 2780 60  0001 L CNN "Sense Comment"
F 31 "~~" H 8450 2690 60  0001 L CNN "ComponentHeight"
F 32 "AVX" H 8450 2600 60  0001 L CNN "Manufacturer1 Example"
F 33 "TPSB226K010R0700" H 8450 2510 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "2.1mm" H 8450 2420 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CTE-LESR_AVX_TPS.pdf" H 8450 2330 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 8450 2240 60  0001 L CNN "Author"
F 37 "05/05/08 00:00:00" H 8450 2150 60  0001 L CNN "CreateDate"
F 38 "01/20/09 00:00:00" H 8450 2060 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 8450 1970 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 8450 1880 60  0001 L CNN "License"
	1    8450 5650
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:CTE3528-21_22UF_10V_10%_LESR0700-Capacitors_SMD C10
U 1 1 5A6FB289
P 10650 5650
F 0 "C10" V 10754 5767 50  0000 L CNN
F 1 "CTE3528-21_22UF_10V_10%_LESR0700" H 10650 5390 60  0001 L CNN
F 2 "Capacitors SMD:CAPMP3528X210N" H 10650 4580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CTE-LESR_AVX_TPS.pdf" H 10650 5210 60  0001 L CNN
F 4 "22uF" V 10845 5767 50  0000 L CNN "~"
F 5 "CTE3528-21_22UF_10V_10%_LESR0700" H 10650 5120 60  0001 L CNN "Part Number"
F 6 "Capacitor - polarized" H 10650 5030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 10650 4940 60  0001 L CNN "Library Path"
F 8 "=Value" H 10650 4850 60  0001 L CNN "Comment"
F 9 "Standard" H 10650 4760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 10650 4670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 10650 4490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 10650 4400 60  0001 L CNN "Footprint Path"
F 13 "CAPMP3528X210N" H 10650 4310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 10650 4220 60  0001 L CNN "PackageDescription"
F 15 "22uF" H 10650 4130 60  0001 L CNN "Val"
F 16 "Preferred" H 10650 4040 60  0001 L CNN "Status"
F 17 "~~" H 10650 3950 60  0001 L CNN "Status Comment"
F 18 "10V" H 10650 3860 60  0001 L CNN "Voltage"
F 19 "~~" H 10650 3770 60  0001 L CNN "TC"
F 20 "±10%" H 10650 3680 60  0001 L CNN "Tolerance"
F 21 "Low ESR 0R7 Solid Tantalum Chip Capacitor" H 10650 3590 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 10650 3500 60  0001 L CNN "Manufacturer"
F 23 "CTE3528-21_22UF_10V_10%_LESR0700" H 10650 3410 60  0001 L CNN "Manufacturer Part Number"
F 24 "B" H 10650 3320 60  0001 L CNN "Case"
F 25 "Yes" H 10650 3230 60  0001 L CNN "Mounted"
F 26 "No" H 10650 3140 60  0001 L CNN "Socket"
F 27 "Yes" H 10650 3050 60  0001 L CNN "SMD"
F 28 "~~" H 10650 2960 60  0001 L CNN "PressFit"
F 29 "No" H 10650 2870 60  0001 L CNN "Sense"
F 30 "~~" H 10650 2780 60  0001 L CNN "Sense Comment"
F 31 "~~" H 10650 2690 60  0001 L CNN "ComponentHeight"
F 32 "AVX" H 10650 2600 60  0001 L CNN "Manufacturer1 Example"
F 33 "TPSB226K010R0700" H 10650 2510 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "2.1mm" H 10650 2420 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CTE-LESR_AVX_TPS.pdf" H 10650 2330 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 10650 2240 60  0001 L CNN "Author"
F 37 "05/05/08 00:00:00" H 10650 2150 60  0001 L CNN "CreateDate"
F 38 "01/20/09 00:00:00" H 10650 2060 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 10650 1970 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 10650 1880 60  0001 L CNN "License"
	1    10650 5650
	0    1    1    0   
$EndComp
Wire Wire Line
	10650 5650 10650 5450
Wire Wire Line
	10650 5450 10200 5450
Connection ~ 10200 5450
Wire Wire Line
	10200 6100 10650 6100
Wire Wire Line
	10650 6100 10650 5950
Connection ~ 10200 6100
Wire Wire Line
	8900 6100 8450 6100
Wire Wire Line
	8450 6100 8450 5950
Connection ~ 8900 6100
Wire Wire Line
	8450 5450 8450 5650
Wire Wire Line
	8450 5450 8900 5450
Wire Wire Line
	8450 5350 8450 5450
Connection ~ 8450 5450
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR010
U 1 1 5A6FEDEE
P 10650 5350
F 0 "#PWR010" H 10650 5200 50  0001 C CNN
F 1 "+3V3" H 10665 5523 50  0000 C CNN
F 2 "" H 10650 5350 50  0001 C CNN
F 3 "" H 10650 5350 50  0001 C CNN
	1    10650 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 5350 10650 5450
Connection ~ 10650 5450
$Comp
L steak_maker_v2-rescue:MOLEX_500075-1517-MOLEX J3
U 1 1 5A701889
P 7550 2900
F 0 "J3" H 7745 1933 50  0000 C CNN
F 1 "MOLEX_500075-1517" H 7550 1910 60  0001 L CNN
F 2 "MOLEX_500075-1517" H 7550 1100 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\MOLEX_500075-1517.pdf" H 7550 1730 60  0001 L CNN
F 4 "USB" H 7745 2024 50  0000 C CNN "~"
F 5 "MOLEX_500075-1517" H 7550 1640 60  0001 L CNN "Part Number"
F 6 "Connector USB 5 Pin + 1Shield" H 7550 1550 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Connectors.SchLib" H 7550 1460 60  0001 L CNN "Library Path"
F 8 "~~" H 7550 1370 60  0001 L CNN "Comment"
F 9 "Standard" H 7550 1280 60  0001 L CNN "Component Kind"
F 10 "Standard" H 7550 1190 60  0001 L CNN "Component Type"
F 11 "~~" H 7550 1010 60  0001 L CNN "PackageDescription"
F 12 "6" H 7550 920 60  0001 L CNN "Pin Count"
F 13 "~~" H 7550 830 60  0001 L CNN "Case"
F 14 "PcbLib\\MOLEX THD.PcbLib" H 7550 740 60  0001 L CNN "Footprint Path"
F 15 "MOLEX_500075-1517" H 7550 650 60  0001 L CNN "Footprint Ref"
F 16 "USB" H 7550 560 60  0001 L CNN "Family"
F 17 "Yes" H 7550 470 60  0001 L CNN "Mounted"
F 18 "No" H 7550 380 60  0001 L CNN "Socket"
F 19 "No" H 7550 290 60  0001 L CNN "SMD"
F 20 "No" H 7550 200 60  0001 L CNN "PressFit"
F 21 "No" H 7550 110 60  0001 L CNN "Sense"
F 22 "~~" H 7550 20  60  0001 L CNN "Sense Comment"
F 23 "None" H 7550 -70 60  0001 L CNN "Status"
F 24 "~~" H 7550 -160 60  0001 L CNN "Status Comment"
F 25 "~~" H 7550 -250 60  0001 L CNN "SCEM"
F 26 "~~" H 7550 -340 60  0001 L CNN "Device"
F 27 "USB Mini-B Serie Type 2 Through Hole Straight Receptacle" H 7550 -430 60  0001 L CNN "Part Description"
F 28 "MOLEX" H 7550 -520 60  0001 L CNN "Manufacturer"
F 29 "500075-1517" H 7550 -610 60  0001 L CNN "Manufacturer Part Number"
F 30 "7.7mm" H 7550 -700 60  0001 L CNN "ComponentHeight"
F 31 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\MOLEX_500075-1517.pdf" H 7550 -790 60  0001 L CNN "HelpURL"
F 32 "~~" H 7550 -880 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 7550 -970 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 7550 -1060 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 7550 -1150 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 7550 -1240 60  0001 L CNN "Author"
F 37 "07/25/12 00:00:00" H 7550 -1330 60  0001 L CNN "CreateDate"
F 38 "07/25/12 00:00:00" H 7550 -1420 60  0001 L CNN "LatestRevisionDate"
F 39 "MOLEX THD" H 7550 -1510 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 7550 -1600 60  0001 L CNN "License"
	1    7550 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7750 2500 8200 2500
Wire Wire Line
	8200 2500 8200 2250
Wire Wire Line
	8200 2250 8600 2250
Wire Wire Line
	8600 2350 8300 2350
Wire Wire Line
	8300 2350 8300 2600
Wire Wire Line
	8300 2600 7750 2600
Wire Wire Line
	7750 2700 8100 2700
Wire Wire Line
	8100 2700 8100 1850
Wire Wire Line
	8100 1850 8400 1850
Wire Wire Line
	8600 2050 8400 2050
Wire Wire Line
	8400 2050 8400 1850
Connection ~ 8400 1850
Wire Wire Line
	8400 1850 8600 1850
Wire Wire Line
	8400 1850 8400 1650
$Comp
L steak_maker_v2-rescue:CTE3528-21_22UF_10V_10%_LESR0700-Capacitors_SMD C5
U 1 1 5A70738C
P 8400 1650
F 0 "C5" V 8596 1540 50  0000 R CNN
F 1 "CTE3528-21_22UF_10V_10%_LESR0700" H 8400 1390 60  0001 L CNN
F 2 "Capacitors SMD:CAPMP3528X210N" H 8400 580 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CTE-LESR_AVX_TPS.pdf" H 8400 1210 60  0001 L CNN
F 4 "22uF" V 8505 1540 50  0000 R CNN "~"
F 5 "CTE3528-21_22UF_10V_10%_LESR0700" H 8400 1120 60  0001 L CNN "Part Number"
F 6 "Capacitor - polarized" H 8400 1030 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 8400 940 60  0001 L CNN "Library Path"
F 8 "=Value" H 8400 850 60  0001 L CNN "Comment"
F 9 "Standard" H 8400 760 60  0001 L CNN "Component Kind"
F 10 "Standard" H 8400 670 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 8400 490 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 8400 400 60  0001 L CNN "Footprint Path"
F 13 "CAPMP3528X210N" H 8400 310 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 8400 220 60  0001 L CNN "PackageDescription"
F 15 "22uF" H 8400 130 60  0001 L CNN "Val"
F 16 "Preferred" H 8400 40  60  0001 L CNN "Status"
F 17 "~~" H 8400 -50 60  0001 L CNN "Status Comment"
F 18 "10V" H 8400 -140 60  0001 L CNN "Voltage"
F 19 "~~" H 8400 -230 60  0001 L CNN "TC"
F 20 "±10%" H 8400 -320 60  0001 L CNN "Tolerance"
F 21 "Low ESR 0R7 Solid Tantalum Chip Capacitor" H 8400 -410 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 8400 -500 60  0001 L CNN "Manufacturer"
F 23 "CTE3528-21_22UF_10V_10%_LESR0700" H 8400 -590 60  0001 L CNN "Manufacturer Part Number"
F 24 "B" H 8400 -680 60  0001 L CNN "Case"
F 25 "Yes" H 8400 -770 60  0001 L CNN "Mounted"
F 26 "No" H 8400 -860 60  0001 L CNN "Socket"
F 27 "Yes" H 8400 -950 60  0001 L CNN "SMD"
F 28 "~~" H 8400 -1040 60  0001 L CNN "PressFit"
F 29 "No" H 8400 -1130 60  0001 L CNN "Sense"
F 30 "~~" H 8400 -1220 60  0001 L CNN "Sense Comment"
F 31 "~~" H 8400 -1310 60  0001 L CNN "ComponentHeight"
F 32 "AVX" H 8400 -1400 60  0001 L CNN "Manufacturer1 Example"
F 33 "TPSB226K010R0700" H 8400 -1490 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "2.1mm" H 8400 -1580 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CTE-LESR_AVX_TPS.pdf" H 8400 -1670 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 8400 -1760 60  0001 L CNN "Author"
F 37 "05/05/08 00:00:00" H 8400 -1850 60  0001 L CNN "CreateDate"
F 38 "01/20/09 00:00:00" H 8400 -1940 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 8400 -2030 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 8400 -2120 60  0001 L CNN "License"
	1    8400 1650
	0    -1   -1   0   
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR011
U 1 1 5A707581
P 8400 1350
F 0 "#PWR011" H 8400 1100 50  0001 C CNN
F 1 "GND" H 8405 1177 50  0000 C CNN
F 2 "" H 8400 1350 50  0001 C CNN
F 3 "" H 8400 1350 50  0001 C CNN
	1    8400 1350
	-1   0    0    1   
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C6
U 1 1 5A707A35
P 8400 3150
F 0 "C6" V 8504 3260 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 8400 2890 60  0001 L CNN
F 2 "CAPC1608X90N" H 8400 2080 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 8400 2710 60  0001 L CNN
F 4 "100nF" V 8595 3260 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 8400 2620 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 8400 2530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 8400 2440 60  0001 L CNN "Library Path"
F 8 "=Value" H 8400 2350 60  0001 L CNN "Comment"
F 9 "Standard" H 8400 2260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 8400 2170 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 8400 1990 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 8400 1900 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 8400 1810 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 8400 1720 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 8400 1630 60  0001 L CNN "Val"
F 16 "None" H 8400 1540 60  0001 L CNN "Status"
F 17 "~~" H 8400 1450 60  0001 L CNN "Status Comment"
F 18 "100V" H 8400 1360 60  0001 L CNN "Voltage"
F 19 "X7R" H 8400 1270 60  0001 L CNN "TC"
F 20 "±10%" H 8400 1180 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 8400 1090 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 8400 1000 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 8400 910 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 8400 820 60  0001 L CNN "Case"
F 25 "Yes" H 8400 730 60  0001 L CNN "Mounted"
F 26 "No" H 8400 640 60  0001 L CNN "Socket"
F 27 "Yes" H 8400 550 60  0001 L CNN "SMD"
F 28 "~~" H 8400 460 60  0001 L CNN "PressFit"
F 29 "No" H 8400 370 60  0001 L CNN "Sense"
F 30 "~~" H 8400 280 60  0001 L CNN "Sense Comment"
F 31 "~~" H 8400 190 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 8400 100 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 8400 10  60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 8400 -80 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 8400 -170 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 8400 -260 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 8400 -350 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 8400 -440 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 8400 -530 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 8400 -620 60  0001 L CNN "License"
	1    8400 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8600 2550 8400 2550
Wire Wire Line
	8400 2550 8400 2850
$Comp
L steak_maker_v2-rescue:CP2102-GM-Analog_&_Interface IC2
U 1 1 5A70A4D2
P 8800 1750
F 0 "IC2" H 9300 1915 50  0000 C CNN
F 1 "CP2102-GM" H 9300 1824 50  0000 C CNN
F 2 "ICs And Semiconductors SMD:QFN50P500X500X100-29N-S335" H 8800 -1640 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CP2102-GM.pdf" H 8800 -920 60  0001 L CNN
F 4 "CP2102-GM" H 8800 -1010 60  0001 L CNN "Part Number"
F 5 "CP2102-GM" H 8800 -1100 60  0001 L CNN "Library Ref"
F 6 "SchLib\\Analog & Interface.SchLib" H 8800 -1190 60  0001 L CNN "Library Path"
F 7 "=Device" H 8800 -1280 60  0001 L CNN "Comment"
F 8 "Standard" H 8800 -1370 60  0001 L CNN "Component Kind"
F 9 "Standard" H 8800 -1460 60  0001 L CNN "Component Type"
F 10 "CP2102-GM" H 8800 -1550 60  0001 L CNN "Device"
F 11 "QFN, 0.50mm Pitch, Square; 28 pin, 5.00mm L X 5.00mm W X 1.00mm H body (w/thermal tab 3.35 X 3.35mm),  IPC Medium Density" H 8800 -1730 60  0001 L CNN "PackageDescription"
F 12 "~~" H 8800 -1820 60  0001 L CNN "Status"
F 13 "Single-Chip USB to UART Bridge" H 8800 -1910 60  0001 L CNN "Part Description"
F 14 "SILICON LABS" H 8800 -2000 60  0001 L CNN "Manufacturer"
F 15 "CP2102-GM" H 8800 -2090 60  0001 L CNN "Manufacturer Part Number"
F 16 "29" H 8800 -2180 60  0001 L CNN "Pin Count"
F 17 "QFN28" H 8800 -2270 60  0001 L CNN "Case"
F 18 "Yes" H 8800 -2360 60  0001 L CNN "Mounted"
F 19 "No" H 8800 -2450 60  0001 L CNN "Socket"
F 20 "Yes" H 8800 -2540 60  0001 L CNN "SMD"
F 21 "No" H 8800 -2630 60  0001 L CNN "PressFit"
F 22 "No" H 8800 -2720 60  0001 L CNN "Sense"
F 23 "~~" H 8800 -2810 60  0001 L CNN "Sense Comment"
F 24 "No" H 8800 -2900 60  0001 L CNN "Bonding"
F 25 "~~" H 8800 -2990 60  0001 L CNN "Status Comment"
F 26 "1.0mm" H 8800 -3080 60  0001 L CNN "ComponentHeight"
F 27 "PcbLib\\ICs And Semiconductors SMD.PcbLib" H 8800 -3170 60  0001 L CNN "Footprint Path"
F 28 "QFN50P500X500X100-29N-S335" H 8800 -3260 60  0001 L CNN "Footprint Ref"
F 29 "CERN DEM JLC" H 8800 -3350 60  0001 L CNN "Author"
F 30 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CP2102-GM.pdf" H 8800 -3440 60  0001 L CNN "HelpURL"
F 31 "~~" H 8800 -3530 60  0001 L CNN "ComponentLink1URL"
F 32 "~~" H 8800 -3620 60  0001 L CNN "ComponentLink2URL"
F 33 "~~" H 8800 -3710 60  0001 L CNN "ComponentLink2Description"
F 34 "~~" H 8800 -3800 60  0001 L CNN "ComponentLink1Description"
F 35 "03/03/11 00:00:00" H 8800 -3890 60  0001 L CNN "CreateDate"
F 36 "03/03/11 00:00:00" H 8800 -3980 60  0001 L CNN "LatestRevisionDate"
F 37 "ICs And Semiconductors SMD" H 8800 -4070 60  0001 L CNN "Library Name"
F 38 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 8800 -4160 60  0001 L CNN "License"
	1    8800 1750
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR012
U 1 1 5A70A6E9
P 8400 4100
F 0 "#PWR012" H 8400 3850 50  0001 C CNN
F 1 "GND" H 8405 3927 50  0000 C CNN
F 2 "" H 8400 4100 50  0001 C CNN
F 3 "" H 8400 4100 50  0001 C CNN
	1    8400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3850 8400 3850
Wire Wire Line
	8400 3850 8400 3150
Wire Wire Line
	8600 3950 8400 3950
Wire Wire Line
	8400 3950 8400 3850
Connection ~ 8400 3850
Wire Wire Line
	8400 3950 8400 4100
Connection ~ 8400 3950
Wire Wire Line
	10000 2950 10550 2950
Text Label 10100 2950 0    50   ~ 0
RESET_N
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R4
U 1 1 5A7141DB
P 10550 2950
F 0 "R4" H 10700 3147 50  0000 C CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 10550 2740 60  0001 L CNN
F 2 "RESC1608X55N" H 10550 1930 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10550 2560 60  0001 L CNN
F 4 "10k" H 10700 3056 50  0000 C CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 10550 2470 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 10550 2380 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 10550 2290 60  0001 L CNN "Library Path"
F 8 "=Value" H 10550 2200 60  0001 L CNN "Comment"
F 9 "Standard" H 10550 2110 60  0001 L CNN "Component Kind"
F 10 "Standard" H 10550 2020 60  0001 L CNN "Component Type"
F 11 "~~" H 10550 1840 60  0001 L CNN "PackageDescription"
F 12 "2" H 10550 1750 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 10550 1660 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 10550 1570 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 10550 1480 60  0001 L CNN "Val"
F 16 "Preferred" H 10550 1390 60  0001 L CNN "Status"
F 17 "0.1W" H 10550 1300 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 10550 1210 60  0001 L CNN "TC"
F 19 "~~" H 10550 1120 60  0001 L CNN "Voltage"
F 20 "±1%" H 10550 1030 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 10550 940 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 10550 850 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 10550 760 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 10550 670 60  0001 L CNN "Case"
F 25 "No" H 10550 580 60  0001 L CNN "PressFit"
F 26 "Yes" H 10550 490 60  0001 L CNN "Mounted"
F 27 "~~" H 10550 400 60  0001 L CNN "Sense Comment"
F 28 "No" H 10550 310 60  0001 L CNN "Sense"
F 29 "~~" H 10550 220 60  0001 L CNN "Status Comment"
F 30 "No" H 10550 130 60  0001 L CNN "Socket"
F 31 "Yes" H 10550 40  60  0001 L CNN "SMD"
F 32 "~~" H 10550 -50 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 10550 -140 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 10550 -230 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 10550 -320 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10550 -410 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 10550 -500 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 10550 -590 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 10550 -680 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 10550 -770 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 10550 -860 60  0001 L CNN "License"
	1    10550 2950
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R5
U 1 1 5A714364
P 10550 3750
F 0 "R5" H 10700 3947 50  0000 C CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 10550 3540 60  0001 L CNN
F 2 "RESC1608X55N" H 10550 2730 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10550 3360 60  0001 L CNN
F 4 "10k" H 10700 3856 50  0000 C CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 10550 3270 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 10550 3180 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 10550 3090 60  0001 L CNN "Library Path"
F 8 "=Value" H 10550 3000 60  0001 L CNN "Comment"
F 9 "Standard" H 10550 2910 60  0001 L CNN "Component Kind"
F 10 "Standard" H 10550 2820 60  0001 L CNN "Component Type"
F 11 "~~" H 10550 2640 60  0001 L CNN "PackageDescription"
F 12 "2" H 10550 2550 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 10550 2460 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 10550 2370 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 10550 2280 60  0001 L CNN "Val"
F 16 "Preferred" H 10550 2190 60  0001 L CNN "Status"
F 17 "0.1W" H 10550 2100 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 10550 2010 60  0001 L CNN "TC"
F 19 "~~" H 10550 1920 60  0001 L CNN "Voltage"
F 20 "±1%" H 10550 1830 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 10550 1740 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 10550 1650 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 10550 1560 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 10550 1470 60  0001 L CNN "Case"
F 25 "No" H 10550 1380 60  0001 L CNN "PressFit"
F 26 "Yes" H 10550 1290 60  0001 L CNN "Mounted"
F 27 "~~" H 10550 1200 60  0001 L CNN "Sense Comment"
F 28 "No" H 10550 1110 60  0001 L CNN "Sense"
F 29 "~~" H 10550 1020 60  0001 L CNN "Status Comment"
F 30 "No" H 10550 930 60  0001 L CNN "Socket"
F 31 "Yes" H 10550 840 60  0001 L CNN "SMD"
F 32 "~~" H 10550 750 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 10550 660 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 10550 570 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 10550 480 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10550 390 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 10550 300 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 10550 210 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 10550 120 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 10550 30  60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 10550 -60 60  0001 L CNN "License"
	1    10550 3750
	1    0    0    -1  
$EndComp
Text Label 10100 3750 0    50   ~ 0
BOOT_SEL_N
Wire Wire Line
	10550 3750 10000 3750
Wire Wire Line
	10850 2950 10950 2950
Wire Wire Line
	10950 2950 10950 3750
Wire Wire Line
	10950 3750 10850 3750
Connection ~ 10950 2950
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR013
U 1 1 5A71801C
P 10950 2750
F 0 "#PWR013" H 10950 2600 50  0001 C CNN
F 1 "+3V3" H 10965 2923 50  0000 C CNN
F 2 "" H 10950 2750 50  0001 C CNN
F 3 "" H 10950 2750 50  0001 C CNN
	1    10950 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10950 2750 10950 2950
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R3
U 1 1 5A719A2A
P 10150 1750
F 0 "R3" H 10300 1947 50  0000 C CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 10150 1540 60  0001 L CNN
F 2 "RESC1608X55N" H 10150 730 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10150 1360 60  0001 L CNN
F 4 "10k" H 10300 1856 50  0000 C CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 10150 1270 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 10150 1180 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 10150 1090 60  0001 L CNN "Library Path"
F 8 "=Value" H 10150 1000 60  0001 L CNN "Comment"
F 9 "Standard" H 10150 910 60  0001 L CNN "Component Kind"
F 10 "Standard" H 10150 820 60  0001 L CNN "Component Type"
F 11 "~~" H 10150 640 60  0001 L CNN "PackageDescription"
F 12 "2" H 10150 550 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 10150 460 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 10150 370 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 10150 280 60  0001 L CNN "Val"
F 16 "Preferred" H 10150 190 60  0001 L CNN "Status"
F 17 "0.1W" H 10150 100 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 10150 10  60  0001 L CNN "TC"
F 19 "~~" H 10150 -80 60  0001 L CNN "Voltage"
F 20 "±1%" H 10150 -170 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 10150 -260 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 10150 -350 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 10150 -440 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 10150 -530 60  0001 L CNN "Case"
F 25 "No" H 10150 -620 60  0001 L CNN "PressFit"
F 26 "Yes" H 10150 -710 60  0001 L CNN "Mounted"
F 27 "~~" H 10150 -800 60  0001 L CNN "Sense Comment"
F 28 "No" H 10150 -890 60  0001 L CNN "Sense"
F 29 "~~" H 10150 -980 60  0001 L CNN "Status Comment"
F 30 "No" H 10150 -1070 60  0001 L CNN "Socket"
F 31 "Yes" H 10150 -1160 60  0001 L CNN "SMD"
F 32 "~~" H 10150 -1250 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 10150 -1340 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 10150 -1430 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 10150 -1520 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10150 -1610 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 10150 -1700 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 10150 -1790 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 10150 -1880 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 10150 -1970 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 10150 -2060 60  0001 L CNN "License"
	1    10150 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	10150 1850 10000 1850
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR014
U 1 1 5A71AFEB
P 10150 1400
F 0 "#PWR014" H 10150 1250 50  0001 C CNN
F 1 "+3V3" H 10165 1573 50  0000 C CNN
F 2 "" H 10150 1400 50  0001 C CNN
F 3 "" H 10150 1400 50  0001 C CNN
	1    10150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1450 10150 1400
Wire Wire Line
	10150 1850 10150 1750
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR015
U 1 1 5A720B7A
P 10150 2550
F 0 "#PWR015" H 10150 2400 50  0001 C CNN
F 1 "+3V3" H 10165 2723 50  0000 C CNN
F 2 "" H 10150 2550 50  0001 C CNN
F 3 "" H 10150 2550 50  0001 C CNN
	1    10150 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	10000 2550 10150 2550
Wire Wire Line
	10000 3350 10550 3350
Wire Wire Line
	10000 3550 10550 3550
Text Label 10100 3350 0    50   ~ 0
CP_TXD
Text Label 10100 3550 0    50   ~ 0
CP_RXD
Wire Wire Line
	7750 2300 7850 2300
Wire Wire Line
	7850 2300 7850 2200
Wire Wire Line
	7750 2200 7850 2200
Connection ~ 7850 2200
Wire Wire Line
	7850 2200 7850 2050
$Comp
L steak_maker_v2-rescue:GND-power #PWR016
U 1 1 5A72A4F6
P 7850 2050
F 0 "#PWR016" H 7850 1800 50  0001 C CNN
F 1 "GND" H 7855 1877 50  0000 C CNN
F 2 "" H 7850 2050 50  0001 C CNN
F 3 "" H 7850 2050 50  0001 C CNN
	1    7850 2050
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 2050 3500 2050
Text Label 3500 2050 0    50   ~ 0
RESET_N
Wire Wire Line
	3500 2150 4100 2150
Text Label 3500 2150 0    50   ~ 0
BOOT_SEL_N
$Comp
L steak_maker_v2-rescue:LEMO_EPA.00.250.NTN-LEMO J1
U 1 1 5A732D6D
P 1550 1650
F 0 "J1" H 1426 1917 50  0000 C CNN
F 1 "LEMO_EPA.00.250.NTN" H 1550 1360 60  0001 L CNN
F 2 "LEMO_EPA.00.250.NTN" H 1550 550 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\LEMO_EPA.00.250.NTN.pdf" H 1550 1180 60  0001 L CNN
F 4 "=Family" H 1426 1826 50  0000 C CNN "~"
F 5 "LEMO_EPA.00.250.NTN" H 1550 1090 60  0001 L CNN "Part Number"
F 6 "Coax_1Female_1Shield" H 1550 1000 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Connectors.SchLib" H 1550 910 60  0001 L CNN "Library Path"
F 8 "=Family" H 1550 820 60  0001 L CNN "Comment"
F 9 "Standard" H 1550 730 60  0001 L CNN "Component Kind"
F 10 "Standard" H 1550 640 60  0001 L CNN "Component Type"
F 11 "~~" H 1550 460 60  0001 L CNN "PackageDescription"
F 12 "2" H 1550 370 60  0001 L CNN "Pin Count"
F 13 "~~" H 1550 280 60  0001 L CNN "Case"
F 14 "PcbLib\\LEMO THD.PcbLib" H 1550 190 60  0001 L CNN "Footprint Path"
F 15 "LEMO_EPA.00.250.NTN" H 1550 100 60  0001 L CNN "Footprint Ref"
F 16 "LEMO 00" H 1550 10  60  0001 L CNN "Family"
F 17 "Yes" H 1550 -80 60  0001 L CNN "Mounted"
F 18 "No" H 1550 -170 60  0001 L CNN "Socket"
F 19 "No" H 1550 -260 60  0001 L CNN "SMD"
F 20 "No" H 1550 -350 60  0001 L CNN "PressFit"
F 21 "No" H 1550 -440 60  0001 L CNN "Sense"
F 22 "~~" H 1550 -530 60  0001 L CNN "Sense Comment"
F 23 "None" H 1550 -620 60  0001 L CNN "Status"
F 24 "~~" H 1550 -710 60  0001 L CNN "Status Comment"
F 25 "09.46.11.184.2" H 1550 -800 60  0001 L CNN "SCEM"
F 26 "~~" H 1550 -890 60  0001 L CNN "Device"
F 27 "Size 00, 50 Ohms Coaxial Straight socket" H 1550 -980 60  0001 L CNN "Part Description"
F 28 "LEMO" H 1550 -1070 60  0001 L CNN "Manufacturer"
F 29 "EPA.00.250.NTN" H 1550 -1160 60  0001 L CNN "Manufacturer Part Number"
F 30 "14mm" H 1550 -1250 60  0001 L CNN "ComponentHeight"
F 31 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\LEMO_EPA.00.250.NTN.pdf" H 1550 -1340 60  0001 L CNN "HelpURL"
F 32 "~~" H 1550 -1430 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 1550 -1520 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 1550 -1610 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 1550 -1700 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 1550 -1790 60  0001 L CNN "Author"
F 37 "04/22/08 00:00:00" H 1550 -1880 60  0001 L CNN "CreateDate"
F 38 "04/22/08 00:00:00" H 1550 -1970 60  0001 L CNN "LatestRevisionDate"
F 39 "LEMO THD" H 1550 -2060 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 1550 -2150 60  0001 L CNN "License"
	1    1550 1650
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:LEMO_EPA.00.250.NTN-LEMO J2
U 1 1 5A732F1E
P 1550 2150
F 0 "J2" H 1426 2417 50  0000 C CNN
F 1 "LEMO_EPA.00.250.NTN" H 1550 1860 60  0001 L CNN
F 2 "LEMO_EPA.00.250.NTN" H 1550 1050 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\LEMO_EPA.00.250.NTN.pdf" H 1550 1680 60  0001 L CNN
F 4 "=Family" H 1426 2326 50  0000 C CNN "~"
F 5 "LEMO_EPA.00.250.NTN" H 1550 1590 60  0001 L CNN "Part Number"
F 6 "Coax_1Female_1Shield" H 1550 1500 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Connectors.SchLib" H 1550 1410 60  0001 L CNN "Library Path"
F 8 "=Family" H 1550 1320 60  0001 L CNN "Comment"
F 9 "Standard" H 1550 1230 60  0001 L CNN "Component Kind"
F 10 "Standard" H 1550 1140 60  0001 L CNN "Component Type"
F 11 "~~" H 1550 960 60  0001 L CNN "PackageDescription"
F 12 "2" H 1550 870 60  0001 L CNN "Pin Count"
F 13 "~~" H 1550 780 60  0001 L CNN "Case"
F 14 "PcbLib\\LEMO THD.PcbLib" H 1550 690 60  0001 L CNN "Footprint Path"
F 15 "LEMO_EPA.00.250.NTN" H 1550 600 60  0001 L CNN "Footprint Ref"
F 16 "LEMO 00" H 1550 510 60  0001 L CNN "Family"
F 17 "Yes" H 1550 420 60  0001 L CNN "Mounted"
F 18 "No" H 1550 330 60  0001 L CNN "Socket"
F 19 "No" H 1550 240 60  0001 L CNN "SMD"
F 20 "No" H 1550 150 60  0001 L CNN "PressFit"
F 21 "No" H 1550 60  60  0001 L CNN "Sense"
F 22 "~~" H 1550 -30 60  0001 L CNN "Sense Comment"
F 23 "None" H 1550 -120 60  0001 L CNN "Status"
F 24 "~~" H 1550 -210 60  0001 L CNN "Status Comment"
F 25 "09.46.11.184.2" H 1550 -300 60  0001 L CNN "SCEM"
F 26 "~~" H 1550 -390 60  0001 L CNN "Device"
F 27 "Size 00, 50 Ohms Coaxial Straight socket" H 1550 -480 60  0001 L CNN "Part Description"
F 28 "LEMO" H 1550 -570 60  0001 L CNN "Manufacturer"
F 29 "EPA.00.250.NTN" H 1550 -660 60  0001 L CNN "Manufacturer Part Number"
F 30 "14mm" H 1550 -750 60  0001 L CNN "ComponentHeight"
F 31 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\LEMO_EPA.00.250.NTN.pdf" H 1550 -840 60  0001 L CNN "HelpURL"
F 32 "~~" H 1550 -930 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 1550 -1020 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 1550 -1110 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 1550 -1200 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 1550 -1290 60  0001 L CNN "Author"
F 37 "04/22/08 00:00:00" H 1550 -1380 60  0001 L CNN "CreateDate"
F 38 "04/22/08 00:00:00" H 1550 -1470 60  0001 L CNN "LatestRevisionDate"
F 39 "LEMO THD" H 1550 -1560 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 1550 -1650 60  0001 L CNN "License"
	1    1550 2150
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_1K5_1%_0.1W_100PPM-Resistors_SMD R1
U 1 1 5A7342E6
P 1850 1100
F 0 "R1" V 1954 1160 50  0000 L CNN
F 1 "R0603_1K5_1%_0.1W_100PPM" H 1850 890 60  0001 L CNN
F 2 "RESC1608X55N" H 1850 80  60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 1850 710 60  0001 L CNN
F 4 "1k5" V 2045 1160 50  0000 L CNN "~"
F 5 "R0603_1K5_1%_0.1W_100PPM" H 1850 620 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 1850 530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 1850 440 60  0001 L CNN "Library Path"
F 8 "=Value" H 1850 350 60  0001 L CNN "Comment"
F 9 "Standard" H 1850 260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 1850 170 60  0001 L CNN "Component Type"
F 11 "~~" H 1850 -10 60  0001 L CNN "PackageDescription"
F 12 "2" H 1850 -100 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 1850 -190 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 1850 -280 60  0001 L CNN "Footprint Ref"
F 15 "1k5" H 1850 -370 60  0001 L CNN "Val"
F 16 "Preferred" H 1850 -460 60  0001 L CNN "Status"
F 17 "0.1W" H 1850 -550 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 1850 -640 60  0001 L CNN "TC"
F 19 "~~" H 1850 -730 60  0001 L CNN "Voltage"
F 20 "±1%" H 1850 -820 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 1850 -910 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 1850 -1000 60  0001 L CNN "Manufacturer"
F 23 "R0603_1K5_1%_0.1W_100PPM" H 1850 -1090 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 1850 -1180 60  0001 L CNN "Case"
F 25 "No" H 1850 -1270 60  0001 L CNN "PressFit"
F 26 "Yes" H 1850 -1360 60  0001 L CNN "Mounted"
F 27 "~~" H 1850 -1450 60  0001 L CNN "Sense Comment"
F 28 "No" H 1850 -1540 60  0001 L CNN "Sense"
F 29 "~~" H 1850 -1630 60  0001 L CNN "Status Comment"
F 30 "No" H 1850 -1720 60  0001 L CNN "Socket"
F 31 "Yes" H 1850 -1810 60  0001 L CNN "SMD"
F 32 "~~" H 1850 -1900 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 1850 -1990 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1501TRF" H 1850 -2080 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 1850 -2170 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 1850 -2260 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 1850 -2350 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 1850 -2440 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 1850 -2530 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 1850 -2620 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 1850 -2710 60  0001 L CNN "License"
	1    1850 1100
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_1K5_1%_0.1W_100PPM-Resistors_SMD R2
U 1 1 5A734473
P 2350 1100
F 0 "R2" V 2454 1160 50  0000 L CNN
F 1 "R0603_1K5_1%_0.1W_100PPM" H 2350 890 60  0001 L CNN
F 2 "RESC1608X55N" H 2350 80  60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 2350 710 60  0001 L CNN
F 4 "1k5" V 2545 1160 50  0000 L CNN "~"
F 5 "R0603_1K5_1%_0.1W_100PPM" H 2350 620 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 2350 530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 2350 440 60  0001 L CNN "Library Path"
F 8 "=Value" H 2350 350 60  0001 L CNN "Comment"
F 9 "Standard" H 2350 260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 2350 170 60  0001 L CNN "Component Type"
F 11 "~~" H 2350 -10 60  0001 L CNN "PackageDescription"
F 12 "2" H 2350 -100 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 2350 -190 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 2350 -280 60  0001 L CNN "Footprint Ref"
F 15 "1k5" H 2350 -370 60  0001 L CNN "Val"
F 16 "Preferred" H 2350 -460 60  0001 L CNN "Status"
F 17 "0.1W" H 2350 -550 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 2350 -640 60  0001 L CNN "TC"
F 19 "~~" H 2350 -730 60  0001 L CNN "Voltage"
F 20 "±1%" H 2350 -820 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 2350 -910 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 2350 -1000 60  0001 L CNN "Manufacturer"
F 23 "R0603_1K5_1%_0.1W_100PPM" H 2350 -1090 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 2350 -1180 60  0001 L CNN "Case"
F 25 "No" H 2350 -1270 60  0001 L CNN "PressFit"
F 26 "Yes" H 2350 -1360 60  0001 L CNN "Mounted"
F 27 "~~" H 2350 -1450 60  0001 L CNN "Sense Comment"
F 28 "No" H 2350 -1540 60  0001 L CNN "Sense"
F 29 "~~" H 2350 -1630 60  0001 L CNN "Status Comment"
F 30 "No" H 2350 -1720 60  0001 L CNN "Socket"
F 31 "Yes" H 2350 -1810 60  0001 L CNN "SMD"
F 32 "~~" H 2350 -1900 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 2350 -1990 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1501TRF" H 2350 -2080 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 2350 -2170 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 2350 -2260 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 2350 -2350 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 2350 -2440 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 2350 -2530 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 2350 -2620 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 2350 -2710 60  0001 L CNN "License"
	1    2350 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 1650 1850 1650
Wire Wire Line
	1850 1650 1850 1400
Wire Wire Line
	1850 1650 2550 1650
Connection ~ 1850 1650
Wire Wire Line
	1550 2150 2350 2150
Wire Wire Line
	2350 2150 2350 1400
Wire Wire Line
	2350 2150 2550 2150
Connection ~ 2350 2150
Wire Wire Line
	1850 1100 1850 1000
Wire Wire Line
	2350 1100 2350 1000
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR017
U 1 1 5A741165
P 2350 1000
F 0 "#PWR017" H 2350 850 50  0001 C CNN
F 1 "+3V3" H 2365 1173 50  0000 C CNN
F 2 "" H 2350 1000 50  0001 C CNN
F 3 "" H 2350 1000 50  0001 C CNN
	1    2350 1000
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR018
U 1 1 5A74119C
P 1850 1000
F 0 "#PWR018" H 1850 850 50  0001 C CNN
F 1 "+3V3" H 1865 1173 50  0000 C CNN
F 2 "" H 1850 1000 50  0001 C CNN
F 3 "" H 1850 1000 50  0001 C CNN
	1    1850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1750 1650 1750
Wire Wire Line
	1650 1750 1650 2250
Wire Wire Line
	1550 2250 1650 2250
Connection ~ 1650 2250
Wire Wire Line
	1650 2250 1650 2450
$Comp
L steak_maker_v2-rescue:GND-power #PWR019
U 1 1 5A7461A7
P 1650 2450
F 0 "#PWR019" H 1650 2200 50  0001 C CNN
F 1 "GND" H 1655 2277 50  0000 C CNN
F 2 "" H 1650 2450 50  0001 C CNN
F 3 "" H 1650 2450 50  0001 C CNN
	1    1650 2450
	1    0    0    -1  
$EndComp
Text Label 2450 1650 0    50   ~ 0
SENSOR1
Text Label 2450 2150 0    50   ~ 0
SENSOR2
Wire Wire Line
	4100 3950 3550 3950
Text Label 3550 3950 0    50   ~ 0
CP_TXD
Wire Wire Line
	4100 4050 3550 4050
Text Label 3550 4050 0    50   ~ 0
CP_RXD
Wire Wire Line
	5500 2050 6450 2050
Wire Wire Line
	5500 2150 6450 2150
Text Label 3600 3650 0    50   ~ 0
SCL
Text Label 3600 3750 0    50   ~ 0
SDA
Wire Wire Line
	5500 2250 6450 2250
Text Label 5900 2850 0    50   ~ 0
LCD_A0
Text Label 5900 5850 0    50   ~ 0
LCD_E1
Text Label 3600 4250 0    50   ~ 0
LCD_D3
Wire Wire Line
	5500 2350 6450 2350
Wire Wire Line
	5500 2450 6450 2450
Wire Wire Line
	5500 2550 6450 2550
Wire Wire Line
	5500 2650 6450 2650
Wire Wire Line
	5500 2750 6450 2750
Wire Wire Line
	5500 2850 6450 2850
Wire Wire Line
	5500 2950 6450 2950
Wire Wire Line
	5500 3050 6450 3050
Wire Wire Line
	5500 3150 6450 3150
Wire Wire Line
	5500 3350 6450 3350
$Comp
L steak_maker_v2-rescue:MAX31855-steak_maker IC5
U 1 1 5A760885
P 2050 5500
F 0 "IC5" H 2000 6215 50  0000 C CNN
F 1 "MAX31855" H 2000 6124 50  0000 C CNN
F 2 "ICs And Semiconductors SMD:SOIC127P600X175-8N" H 2050 5500 50  0001 C CNN
F 3 "" H 2050 5500 50  0001 C CNN
F 4 "Value" H 2050 5500 50  0001 C CNN "Fieldname"
	1    2050 5500
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:MAX31855-steak_maker IC6
U 1 1 5A760B5F
P 2050 6900
F 0 "IC6" H 2000 7615 50  0000 C CNN
F 1 "MAX31855" H 2000 7524 50  0000 C CNN
F 2 "ICs And Semiconductors SMD:SOIC127P600X175-8N" H 2050 6900 50  0001 C CNN
F 3 "" H 2050 6900 50  0001 C CNN
F 4 "Value" H 2050 6900 50  0001 C CNN "Fieldname"
	1    2050 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 5050 2700 5050
Wire Wire Line
	2700 5050 2700 4900
Wire Wire Line
	2550 5200 2700 5200
Wire Wire Line
	2700 5200 2700 5800
Wire Wire Line
	2700 6600 2550 6600
Wire Wire Line
	2550 6800 2800 6800
Wire Wire Line
	2800 6800 2800 5700
Wire Wire Line
	2800 5400 2550 5400
Wire Wire Line
	2550 5550 2600 5550
Wire Wire Line
	2600 5550 2600 5700
$Comp
L steak_maker_v2-rescue:GND-power #PWR09
U 1 1 5A771802
P 2600 5700
F 0 "#PWR09" H 2600 5450 50  0001 C CNN
F 1 "GND" H 2605 5527 50  0000 C CNN
F 2 "" H 2600 5700 50  0001 C CNN
F 3 "" H 2600 5700 50  0001 C CNN
	1    2600 5700
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR020
U 1 1 5A77192D
P 2700 4850
F 0 "#PWR020" H 2700 4700 50  0001 C CNN
F 1 "+3V3" H 2715 5023 50  0000 C CNN
F 2 "" H 2700 4850 50  0001 C CNN
F 3 "" H 2700 4850 50  0001 C CNN
	1    2700 4850
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C12
U 1 1 5A771B0D
P 3000 4900
F 0 "C12" H 2950 4650 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 3000 4640 60  0001 L CNN
F 2 "CAPC1608X90N" H 3000 3830 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 3000 4460 60  0001 L CNN
F 4 "100nF" H 2850 4750 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 3000 4370 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 3000 4280 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 3000 4190 60  0001 L CNN "Library Path"
F 8 "=Value" H 3000 4100 60  0001 L CNN "Comment"
F 9 "Standard" H 3000 4010 60  0001 L CNN "Component Kind"
F 10 "Standard" H 3000 3920 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 3000 3740 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 3000 3650 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 3000 3560 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 3000 3470 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 3000 3380 60  0001 L CNN "Val"
F 16 "None" H 3000 3290 60  0001 L CNN "Status"
F 17 "~~" H 3000 3200 60  0001 L CNN "Status Comment"
F 18 "100V" H 3000 3110 60  0001 L CNN "Voltage"
F 19 "X7R" H 3000 3020 60  0001 L CNN "TC"
F 20 "±10%" H 3000 2930 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 3000 2840 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 3000 2750 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 3000 2660 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 3000 2570 60  0001 L CNN "Case"
F 25 "Yes" H 3000 2480 60  0001 L CNN "Mounted"
F 26 "No" H 3000 2390 60  0001 L CNN "Socket"
F 27 "Yes" H 3000 2300 60  0001 L CNN "SMD"
F 28 "~~" H 3000 2210 60  0001 L CNN "PressFit"
F 29 "No" H 3000 2120 60  0001 L CNN "Sense"
F 30 "~~" H 3000 2030 60  0001 L CNN "Sense Comment"
F 31 "~~" H 3000 1940 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 3000 1850 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 3000 1760 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 3000 1670 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 3000 1580 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 3000 1490 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 3000 1400 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 3000 1310 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 3000 1220 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 3000 1130 60  0001 L CNN "License"
	1    3000 4900
	-1   0    0    1   
$EndComp
Connection ~ 2700 4900
Wire Wire Line
	2700 4900 2700 4850
$Comp
L steak_maker_v2-rescue:GND-power #PWR021
U 1 1 5A771CA2
P 3000 4900
F 0 "#PWR021" H 3000 4650 50  0001 C CNN
F 1 "GND" H 3005 4727 50  0000 C CNN
F 2 "" H 3000 4900 50  0001 C CNN
F 3 "" H 3000 4900 50  0001 C CNN
	1    3000 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 5300 3100 5300
Text Label 2950 5300 0    50   ~ 0
TH_CS1
Wire Wire Line
	2550 6700 3100 6700
Text Label 2950 6700 0    50   ~ 0
TH_CS2
Text Label 2950 5700 0    50   ~ 0
TH_SCK
Text Label 2950 5800 0    50   ~ 0
TH_SO
Wire Wire Line
	2800 5700 3200 5700
Connection ~ 2800 5700
Wire Wire Line
	2800 5700 2800 5400
Wire Wire Line
	2700 5800 3200 5800
Connection ~ 2700 5800
Wire Wire Line
	2700 5800 2700 6600
$Comp
L steak_maker_v2-rescue:GND-power #PWR022
U 1 1 5A785CA4
P 2600 7100
F 0 "#PWR022" H 2600 6850 50  0001 C CNN
F 1 "GND" H 2605 6927 50  0000 C CNN
F 2 "" H 2600 7100 50  0001 C CNN
F 3 "" H 2600 7100 50  0001 C CNN
	1    2600 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6950 2600 6950
Wire Wire Line
	2600 6950 2600 7100
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR023
U 1 1 5A79BBB6
P 3050 6450
F 0 "#PWR023" H 3050 6300 50  0001 C CNN
F 1 "+3V3" V 3050 6750 50  0000 C CNN
F 2 "" H 3050 6450 50  0001 C CNN
F 3 "" H 3050 6450 50  0001 C CNN
	1    3050 6450
	0    1    1    0   
$EndComp
Wire Wire Line
	2550 6450 3000 6450
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C13
U 1 1 5A7A142C
P 3000 6400
F 0 "C13" V 3200 6150 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 3000 6140 60  0001 L CNN
F 2 "CAPC1608X90N" H 3000 5330 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 3000 5960 60  0001 L CNN
F 4 "100nF" V 3100 6050 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 3000 5870 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 3000 5780 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 3000 5690 60  0001 L CNN "Library Path"
F 8 "=Value" H 3000 5600 60  0001 L CNN "Comment"
F 9 "Standard" H 3000 5510 60  0001 L CNN "Component Kind"
F 10 "Standard" H 3000 5420 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 3000 5240 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 3000 5150 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 3000 5060 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 3000 4970 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 3000 4880 60  0001 L CNN "Val"
F 16 "None" H 3000 4790 60  0001 L CNN "Status"
F 17 "~~" H 3000 4700 60  0001 L CNN "Status Comment"
F 18 "100V" H 3000 4610 60  0001 L CNN "Voltage"
F 19 "X7R" H 3000 4520 60  0001 L CNN "TC"
F 20 "±10%" H 3000 4430 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 3000 4340 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 3000 4250 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 3000 4160 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 3000 4070 60  0001 L CNN "Case"
F 25 "Yes" H 3000 3980 60  0001 L CNN "Mounted"
F 26 "No" H 3000 3890 60  0001 L CNN "Socket"
F 27 "Yes" H 3000 3800 60  0001 L CNN "SMD"
F 28 "~~" H 3000 3710 60  0001 L CNN "PressFit"
F 29 "No" H 3000 3620 60  0001 L CNN "Sense"
F 30 "~~" H 3000 3530 60  0001 L CNN "Sense Comment"
F 31 "~~" H 3000 3440 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 3000 3350 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 3000 3260 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 3000 3170 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 3000 3080 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 3000 2990 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 3000 2900 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 3000 2810 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 3000 2720 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 3000 2630 60  0001 L CNN "License"
	1    3000 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 6400 3000 6450
Connection ~ 3000 6450
Wire Wire Line
	3000 6450 3050 6450
$Comp
L steak_maker_v2-rescue:GND-power #PWR024
U 1 1 5A7A6C2C
P 3000 6100
F 0 "#PWR024" H 3000 5850 50  0001 C CNN
F 1 "GND" H 3005 5927 50  0000 C CNN
F 2 "" H 3000 6100 50  0001 C CNN
F 3 "" H 3000 6100 50  0001 C CNN
	1    3000 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 3450 6450 3450
Wire Wire Line
	5500 3550 6450 3550
Wire Wire Line
	5500 3650 6450 3650
Wire Wire Line
	5500 3750 6450 3750
Wire Wire Line
	5500 3850 6450 3850
Text Label 3600 2950 0    50   ~ 0
TH_CS1
Text Label 3600 3050 0    50   ~ 0
TH_CS2
Text Label 3600 2850 0    50   ~ 0
TH_SCK
Text Label 5900 3350 0    50   ~ 0
TRIAC1
Text Label 3600 3550 0    50   ~ 0
TRIAC2
Wire Wire Line
	4100 2250 3500 2250
Wire Wire Line
	4100 2350 3500 2350
Text Label 5900 2350 0    50   ~ 0
SENSOR1
Text Label 5900 3450 0    50   ~ 0
SENSOR2
Wire Wire Line
	4100 2450 3500 2450
$Comp
L steak_maker_v2-rescue:CONN_01X20-conn J5
U 1 1 5A7D5098
P 6550 6300
F 0 "J5" H 6627 6341 50  0000 L CNN
F 1 "LCD" H 6627 6250 50  0000 L CNN
F 2 "COMATEL THD:COMATEL_385.0334.1.20.400" H 6550 6300 50  0001 C CNN
F 3 "" H 6550 6300 50  0001 C CNN
F 4 "Value" H 6550 6300 50  0001 C CNN "Fieldname"
	1    6550 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5350 6300 5350
$Comp
L steak_maker_v2-rescue:GND-power #PWR025
U 1 1 5A7DB856
P 6100 5300
F 0 "#PWR025" H 6100 5050 50  0001 C CNN
F 1 "GND" V 6105 5127 50  0000 C CNN
F 2 "" H 6100 5300 50  0001 C CNN
F 3 "" H 6100 5300 50  0001 C CNN
	1    6100 5300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6350 5450 6150 5450
$Comp
L steak_maker_v2-rescue:+5V-power #PWR026
U 1 1 5A7E263B
P 8450 5350
F 0 "#PWR026" H 8450 5200 50  0001 C CNN
F 1 "+5V" H 8465 5523 50  0000 C CNN
F 2 "" H 8450 5350 50  0001 C CNN
F 3 "" H 8450 5350 50  0001 C CNN
	1    8450 5350
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:+5V-power #PWR027
U 1 1 5A7E26B9
P 6150 5450
F 0 "#PWR027" H 6150 5300 50  0001 C CNN
F 1 "+5V" V 6165 5578 50  0000 L CNN
F 2 "" H 6150 5450 50  0001 C CNN
F 3 "" H 6150 5450 50  0001 C CNN
	1    6150 5450
	0    -1   -1   0   
$EndComp
$Comp
L steak_maker_v2-rescue:+5V-power #PWR028
U 1 1 5A7E278B
P 6900 5200
F 0 "#PWR028" H 6900 5050 50  0001 C CNN
F 1 "+5V" H 6915 5373 50  0000 C CNN
F 2 "" H 6900 5200 50  0001 C CNN
F 3 "" H 6900 5200 50  0001 C CNN
	1    6900 5200
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C14
U 1 1 5A7E2893
P 6900 5200
F 0 "C14" V 7004 5310 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 6900 4940 60  0001 L CNN
F 2 "CAPC1608X90N" H 6900 4130 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 6900 4760 60  0001 L CNN
F 4 "100nF" V 7095 5310 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 6900 4670 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 6900 4580 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 6900 4490 60  0001 L CNN "Library Path"
F 8 "=Value" H 6900 4400 60  0001 L CNN "Comment"
F 9 "Standard" H 6900 4310 60  0001 L CNN "Component Kind"
F 10 "Standard" H 6900 4220 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 6900 4040 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 6900 3950 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 6900 3860 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 6900 3770 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 6900 3680 60  0001 L CNN "Val"
F 16 "None" H 6900 3590 60  0001 L CNN "Status"
F 17 "~~" H 6900 3500 60  0001 L CNN "Status Comment"
F 18 "100V" H 6900 3410 60  0001 L CNN "Voltage"
F 19 "X7R" H 6900 3320 60  0001 L CNN "TC"
F 20 "±10%" H 6900 3230 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 6900 3140 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 6900 3050 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 6900 2960 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 6900 2870 60  0001 L CNN "Case"
F 25 "Yes" H 6900 2780 60  0001 L CNN "Mounted"
F 26 "No" H 6900 2690 60  0001 L CNN "Socket"
F 27 "Yes" H 6900 2600 60  0001 L CNN "SMD"
F 28 "~~" H 6900 2510 60  0001 L CNN "PressFit"
F 29 "No" H 6900 2420 60  0001 L CNN "Sense"
F 30 "~~" H 6900 2330 60  0001 L CNN "Sense Comment"
F 31 "~~" H 6900 2240 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 6900 2150 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 6900 2060 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 6900 1970 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 6900 1880 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 6900 1790 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 6900 1700 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 6900 1610 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 6900 1520 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 6900 1430 60  0001 L CNN "License"
	1    6900 5200
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR029
U 1 1 5A7E2922
P 6900 5500
F 0 "#PWR029" H 6900 5250 50  0001 C CNN
F 1 "GND" V 6905 5327 50  0000 C CNN
F 2 "" H 6900 5500 50  0001 C CNN
F 3 "" H 6900 5500 50  0001 C CNN
	1    6900 5500
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:TRIM_12T_10K_BOURNS_3266W-1-103LF-Potentiometers_THD P1
U 1 1 5A7E404C
P 5500 5400
F 0 "P1" V 5604 5340 50  0000 R CNN
F 1 "TRIM_12T_10K_BOURNS_3266W-1-103LF" H 5500 5180 60  0001 L CNN
F 2 "TRIM_BOURNS_3266W" H 5500 4370 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\TRIM_BOURNS_3266W.pdf" H 5500 5000 60  0001 L CNN
F 4 "10k" V 5695 5340 50  0000 R CNN "~"
F 5 "TRIM_12T_10K_BOURNS_3266W-1-103LF" H 5500 4910 60  0001 L CNN "Part Number"
F 6 "Trimming Potentiometer" H 5500 4820 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 5500 4730 60  0001 L CNN "Library Path"
F 8 "=Value" H 5500 4640 60  0001 L CNN "Comment"
F 9 "Standard" H 5500 4550 60  0001 L CNN "Component Kind"
F 10 "Standard" H 5500 4460 60  0001 L CNN "Component Type"
F 11 "~~" H 5500 4280 60  0001 L CNN "PackageDescription"
F 12 "3" H 5500 4190 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Potentiometers THD.PcbLib" H 5500 4100 60  0001 L CNN "Footprint Path"
F 14 "TRIM_BOURNS_3266W" H 5500 4010 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 5500 3920 60  0001 L CNN "Val"
F 16 "~~" H 5500 3830 60  0001 L CNN "Status"
F 17 "0.25W" H 5500 3740 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 5500 3650 60  0001 L CNN "TC"
F 19 "±10%" H 5500 3560 60  0001 L CNN "Tolerance"
F 20 "12 Turn Trimming Potentiometer (Top Adjustement)" H 5500 3470 60  0001 L CNN "Part Description"
F 21 "BOURNS" H 5500 3380 60  0001 L CNN "Manufacturer"
F 22 "3266W-1-103LF" H 5500 3290 60  0001 L CNN "Manufacturer Part Number"
F 23 "3266W" H 5500 3200 60  0001 L CNN "Case"
F 24 "Yes" H 5500 3110 60  0001 L CNN "Mounted"
F 25 "No" H 5500 3020 60  0001 L CNN "Socket"
F 26 "No" H 5500 2930 60  0001 L CNN "PressFit"
F 27 "No" H 5500 2840 60  0001 L CNN "SMD"
F 28 "~~" H 5500 2750 60  0001 L CNN "Sense Comment"
F 29 "No" H 5500 2660 60  0001 L CNN "Sense"
F 30 "~~" H 5500 2570 60  0001 L CNN "Status Comment"
F 31 "7.75mm" H 5500 2480 60  0001 L CNN "ComponentHeight"
F 32 "~~" H 5500 2390 60  0001 L CNN "Manufacturer1 Example"
F 33 "~~" H 5500 2300 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "~~" H 5500 2210 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\TRIM_BOURNS_3266W.pdf" H 5500 2120 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 5500 2030 60  0001 L CNN "Author"
F 37 "06/10/08 00:00:00" H 5500 1940 60  0001 L CNN "CreateDate"
F 38 "11/28/12 00:00:00" H 5500 1850 60  0001 L CNN "LatestRevisionDate"
F 39 "Potentiometers THD" H 5500 1760 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 5500 1670 60  0001 L CNN "License"
	1    5500 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 5550 5600 5550
$Comp
L steak_maker_v2-rescue:+5V-power #PWR030
U 1 1 5A7EAAF6
P 5500 5400
F 0 "#PWR030" H 5500 5250 50  0001 C CNN
F 1 "+5V" H 5515 5573 50  0000 C CNN
F 2 "" H 5500 5400 50  0001 C CNN
F 3 "" H 5500 5400 50  0001 C CNN
	1    5500 5400
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR031
U 1 1 5A7EABCC
P 5500 5700
F 0 "#PWR031" H 5500 5450 50  0001 C CNN
F 1 "GND" V 5505 5527 50  0000 C CNN
F 2 "" H 5500 5700 50  0001 C CNN
F 3 "" H 5500 5700 50  0001 C CNN
	1    5500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5750 5850 5750
Wire Wire Line
	6350 5850 5850 5850
Wire Wire Line
	6350 5950 5850 5950
Wire Wire Line
	6350 6450 5850 6450
Wire Wire Line
	6350 6550 5850 6550
Wire Wire Line
	6350 6650 5850 6650
Wire Wire Line
	6350 6750 5850 6750
Wire Wire Line
	6350 6850 5850 6850
Wire Wire Line
	6350 6950 5850 6950
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR033
U 1 1 5A831D5E
P 1600 2800
F 0 "#PWR033" H 1600 2650 50  0001 C CNN
F 1 "+3V3" H 1615 2973 50  0000 C CNN
F 2 "" H 1600 2800 50  0001 C CNN
F 3 "" H 1600 2800 50  0001 C CNN
	1    1600 2800
	0    -1   -1   0   
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_100NF_100V_10%_X7R-Capacitors_SMD C11
U 1 1 5A831E24
P 1700 3150
F 0 "C11" H 1650 2900 50  0000 L CNN
F 1 "CC0603_100NF_100V_10%_X7R" H 1700 2890 60  0001 L CNN
F 2 "CAPC1608X90N" H 1700 2080 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 1700 2710 60  0001 L CNN
F 4 "100nF" H 1550 3000 50  0000 L CNN "~"
F 5 "CC0603_100NF_100V_10%_X7R" H 1700 2620 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 1700 2530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 1700 2440 60  0001 L CNN "Library Path"
F 8 "=Value" H 1700 2350 60  0001 L CNN "Comment"
F 9 "Standard" H 1700 2260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 1700 2170 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 1700 1990 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 1700 1900 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X90N" H 1700 1810 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 1700 1720 60  0001 L CNN "PackageDescription"
F 15 "100nF" H 1700 1630 60  0001 L CNN "Val"
F 16 "None" H 1700 1540 60  0001 L CNN "Status"
F 17 "~~" H 1700 1450 60  0001 L CNN "Status Comment"
F 18 "100V" H 1700 1360 60  0001 L CNN "Voltage"
F 19 "X7R" H 1700 1270 60  0001 L CNN "TC"
F 20 "±10%" H 1700 1180 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 1700 1090 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 1700 1000 60  0001 L CNN "Manufacturer"
F 23 "CC0603_100NF_100V_10%_X7R" H 1700 910 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 1700 820 60  0001 L CNN "Case"
F 25 "Yes" H 1700 730 60  0001 L CNN "Mounted"
F 26 "No" H 1700 640 60  0001 L CNN "Socket"
F 27 "Yes" H 1700 550 60  0001 L CNN "SMD"
F 28 "~~" H 1700 460 60  0001 L CNN "PressFit"
F 29 "No" H 1700 370 60  0001 L CNN "Sense"
F 30 "~~" H 1700 280 60  0001 L CNN "Sense Comment"
F 31 "~~" H 1700 190 60  0001 L CNN "ComponentHeight"
F 32 "MURATA" H 1700 100 60  0001 L CNN "Manufacturer1 Example"
F 33 "GRM188R72A104KA35D" H 1700 10  60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.9mm" H 1700 -80 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_MURATA_GRM188R72A104KA35D.pdf" H 1700 -170 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 1700 -260 60  0001 L CNN "Author"
F 37 "12/11/13 00:00:00" H 1700 -350 60  0001 L CNN "CreateDate"
F 38 "12/11/13 00:00:00" H 1700 -440 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 1700 -530 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 1700 -620 60  0001 L CNN "License"
	1    1700 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1700 2850 1700 2800
Connection ~ 1700 2800
Wire Wire Line
	1700 2800 1600 2800
$Comp
L steak_maker_v2-rescue:GND-power #PWR034
U 1 1 5A83AC54
P 1700 3150
F 0 "#PWR034" H 1700 2900 50  0001 C CNN
F 1 "GND" H 1705 2977 50  0000 C CNN
F 2 "" H 1700 3150 50  0001 C CNN
F 3 "" H 1700 3150 50  0001 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR035
U 1 1 5A83AD38
P 2050 4100
F 0 "#PWR035" H 2050 3850 50  0001 C CNN
F 1 "GND" H 2055 3927 50  0000 C CNN
F 2 "" H 2050 4100 50  0001 C CNN
F 3 "" H 2050 4100 50  0001 C CNN
	1    2050 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  3500 1350 3500
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R6
U 1 1 5A860AE5
P 1050 3050
F 0 "R6" V 1154 3110 50  0000 L CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 1050 2840 60  0001 L CNN
F 2 "RESC1608X55N" H 1050 2030 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 1050 2660 60  0001 L CNN
F 4 "10k" V 1245 3110 50  0000 L CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 1050 2570 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 1050 2480 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 1050 2390 60  0001 L CNN "Library Path"
F 8 "=Value" H 1050 2300 60  0001 L CNN "Comment"
F 9 "Standard" H 1050 2210 60  0001 L CNN "Component Kind"
F 10 "Standard" H 1050 2120 60  0001 L CNN "Component Type"
F 11 "~~" H 1050 1940 60  0001 L CNN "PackageDescription"
F 12 "2" H 1050 1850 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 1050 1760 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 1050 1670 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 1050 1580 60  0001 L CNN "Val"
F 16 "Preferred" H 1050 1490 60  0001 L CNN "Status"
F 17 "0.1W" H 1050 1400 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 1050 1310 60  0001 L CNN "TC"
F 19 "~~" H 1050 1220 60  0001 L CNN "Voltage"
F 20 "±1%" H 1050 1130 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 1050 1040 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 1050 950 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 1050 860 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 1050 770 60  0001 L CNN "Case"
F 25 "No" H 1050 680 60  0001 L CNN "PressFit"
F 26 "Yes" H 1050 590 60  0001 L CNN "Mounted"
F 27 "~~" H 1050 500 60  0001 L CNN "Sense Comment"
F 28 "No" H 1050 410 60  0001 L CNN "Sense"
F 29 "~~" H 1050 320 60  0001 L CNN "Status Comment"
F 30 "No" H 1050 230 60  0001 L CNN "Socket"
F 31 "Yes" H 1050 140 60  0001 L CNN "SMD"
F 32 "~~" H 1050 50  60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 1050 -40 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 1050 -130 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 1050 -220 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 1050 -310 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 1050 -400 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 1050 -490 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 1050 -580 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 1050 -670 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 1050 -760 60  0001 L CNN "License"
	1    1050 3050
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R7
U 1 1 5A860C7C
P 1350 3050
F 0 "R7" V 1454 3110 50  0000 L CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 1350 2840 60  0001 L CNN
F 2 "RESC1608X55N" H 1350 2030 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 1350 2660 60  0001 L CNN
F 4 "10k" V 1545 3110 50  0000 L CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 1350 2570 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 1350 2480 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 1350 2390 60  0001 L CNN "Library Path"
F 8 "=Value" H 1350 2300 60  0001 L CNN "Comment"
F 9 "Standard" H 1350 2210 60  0001 L CNN "Component Kind"
F 10 "Standard" H 1350 2120 60  0001 L CNN "Component Type"
F 11 "~~" H 1350 1940 60  0001 L CNN "PackageDescription"
F 12 "2" H 1350 1850 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 1350 1760 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 1350 1670 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 1350 1580 60  0001 L CNN "Val"
F 16 "Preferred" H 1350 1490 60  0001 L CNN "Status"
F 17 "0.1W" H 1350 1400 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 1350 1310 60  0001 L CNN "TC"
F 19 "~~" H 1350 1220 60  0001 L CNN "Voltage"
F 20 "±1%" H 1350 1130 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 1350 1040 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 1350 950 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 1350 860 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 1350 770 60  0001 L CNN "Case"
F 25 "No" H 1350 680 60  0001 L CNN "PressFit"
F 26 "Yes" H 1350 590 60  0001 L CNN "Mounted"
F 27 "~~" H 1350 500 60  0001 L CNN "Sense Comment"
F 28 "No" H 1350 410 60  0001 L CNN "Sense"
F 29 "~~" H 1350 320 60  0001 L CNN "Status Comment"
F 30 "No" H 1350 230 60  0001 L CNN "Socket"
F 31 "Yes" H 1350 140 60  0001 L CNN "SMD"
F 32 "~~" H 1350 50  60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 1350 -40 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 1350 -130 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 1350 -220 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 1350 -310 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 1350 -400 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 1350 -490 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 1350 -580 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 1350 -670 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 1350 -760 60  0001 L CNN "License"
	1    1350 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 3350 1350 3500
Connection ~ 1350 3500
Wire Wire Line
	1050 3350 1050 3600
Connection ~ 1050 3600
Wire Wire Line
	1050 3600 700  3600
Text Label 750  3500 0    50   ~ 0
SCL
Text Label 750  3600 0    50   ~ 0
SDA
Wire Wire Line
	1050 3050 1050 2950
Wire Wire Line
	1050 2950 1350 2950
Wire Wire Line
	1350 2950 1350 3050
Wire Wire Line
	1050 2950 1050 2850
Connection ~ 1050 2950
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR036
U 1 1 5A89D510
P 1050 2850
F 0 "#PWR036" H 1050 2700 50  0001 C CNN
F 1 "+3V3" H 1065 3023 50  0000 C CNN
F 2 "" H 1050 2850 50  0001 C CNN
F 3 "" H 1050 2850 50  0001 C CNN
	1    1050 2850
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:SW_ALPS_EC11B15242AE-Switches SW1
U 1 1 5A8A2C37
P 9200 4400
F 0 "SW1" H 9450 4565 50  0000 C CNN
F 1 "SW_ALPS_EC11B15242AE" H 9200 3910 60  0001 L CNN
F 2 "steak_maker:SW_ALPS_EC11E" H 9200 3100 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\SW_ALPS_EC11B15242AE.pdf" H 9200 3730 60  0001 L CNN
F 4 "Encoder" H 9200 3640 60  0001 L CNN "Field4"
F 5 "SW_ALPS_EC11B15242AE" H 9200 3640 60  0001 L CNN "Part Number"
F 6 "SW_ALPS_EC11B15242AE" H 9200 3550 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Switches.SchLib" H 9200 3460 60  0001 L CNN "Library Path"
F 8 "~~" H 9200 3370 60  0001 L CNN "Comment"
F 9 "Standard" H 9200 3280 60  0001 L CNN "Component Kind"
F 10 "Standard" H 9200 3190 60  0001 L CNN "Component Type"
F 11 "7" H 9200 3010 60  0001 L CNN "Pin Count"
F 12 "~~" H 9200 2920 60  0001 L CNN "Case"
F 13 "PcbLib\\Switches.PcbLib" H 9200 2830 60  0001 L CNN "Footprint Path"
F 14 "SW_ALPS_EC11B15242AE" H 9200 2740 60  0001 L CNN "Footprint Ref"
F 15 "Encoder, Horizontal With Push-on Switch, ALPS EC11 Series" H 9200 2650 60  0001 L CNN "PackageDescription"
F 16 "Encoder" H 9200 2560 60  0001 L CNN "Family"
F 17 "Yes" H 9200 2470 60  0001 L CNN "Mounted"
F 18 "No" H 9200 2380 60  0001 L CNN "Socket"
F 19 "No" H 9200 2290 60  0001 L CNN "SMD"
F 20 "No" H 9200 2200 60  0001 L CNN "PressFit"
F 21 "No" H 9200 2110 60  0001 L CNN "Sense"
F 22 "~~" H 9200 2020 60  0001 L CNN "Sense Comment"
F 23 "None" H 9200 1930 60  0001 L CNN "Status"
F 24 "~~" H 9200 1840 60  0001 L CNN "Status Comment"
F 25 "~~" H 9200 1750 60  0001 L CNN "SCEM"
F 26 "Encoder, 30-Detent, 15-Pulse, Horizontal With Push-on Switch" H 9200 1660 60  0001 L CNN "Part Description"
F 27 "ALPS" H 9200 1570 60  0001 L CNN "Manufacturer"
F 28 "EC11B15242AE" H 9200 1480 60  0001 L CNN "Manufacturer Part Number"
F 29 "13.8mm" H 9200 1390 60  0001 L CNN "ComponentHeight"
F 30 "~~" H 9200 1300 60  0001 L CNN "Manufacturer1 Example"
F 31 "~~" H 9200 1210 60  0001 L CNN "Manufacturer1 Part Number"
F 32 "~~" H 9200 1120 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 33 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\SW_ALPS_EC11B15242AE.pdf" H 9200 1030 60  0001 L CNN "HelpURL"
F 34 "~~" H 9200 940 60  0001 L CNN "ComponentLink1URL"
F 35 "~~" H 9200 850 60  0001 L CNN "ComponentLink1Description"
F 36 "~~" H 9200 760 60  0001 L CNN "ComponentLink2URL"
F 37 "~~" H 9200 670 60  0001 L CNN "ComponentLink2Description"
F 38 "CERN DEM JMW" H 9200 580 60  0001 L CNN "Author"
F 39 "08/18/15 00:00:00" H 9200 490 60  0001 L CNN "CreateDate"
F 40 "08/18/15 00:00:00" H 9200 400 60  0001 L CNN "LatestRevisionDate"
F 41 "Switches" H 9200 310 60  0001 L CNN "Library Name"
F 42 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 9200 220 60  0001 L CNN "License"
	1    9200 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 4600 8900 4600
Wire Wire Line
	9900 4500 10250 4500
$Comp
L steak_maker_v2-rescue:GND-power #PWR037
U 1 1 5A8D8DCB
P 10000 4850
F 0 "#PWR037" H 10000 4600 50  0001 C CNN
F 1 "GND" H 10005 4677 50  0000 C CNN
F 2 "" H 10000 4850 50  0001 C CNN
F 3 "" H 10000 4850 50  0001 C CNN
	1    10000 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 4700 10000 4700
Wire Wire Line
	10000 4700 10000 4850
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R11
U 1 1 5A8E3EA1
P 10250 4150
F 0 "R11" V 10354 4210 50  0000 L CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 10250 3940 60  0001 L CNN
F 2 "RESC1608X55N" H 10250 3130 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10250 3760 60  0001 L CNN
F 4 "10k" V 10445 4210 50  0000 L CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 10250 3670 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 10250 3580 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 10250 3490 60  0001 L CNN "Library Path"
F 8 "=Value" H 10250 3400 60  0001 L CNN "Comment"
F 9 "Standard" H 10250 3310 60  0001 L CNN "Component Kind"
F 10 "Standard" H 10250 3220 60  0001 L CNN "Component Type"
F 11 "~~" H 10250 3040 60  0001 L CNN "PackageDescription"
F 12 "2" H 10250 2950 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 10250 2860 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 10250 2770 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 10250 2680 60  0001 L CNN "Val"
F 16 "Preferred" H 10250 2590 60  0001 L CNN "Status"
F 17 "0.1W" H 10250 2500 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 10250 2410 60  0001 L CNN "TC"
F 19 "~~" H 10250 2320 60  0001 L CNN "Voltage"
F 20 "±1%" H 10250 2230 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 10250 2140 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 10250 2050 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 10250 1960 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 10250 1870 60  0001 L CNN "Case"
F 25 "No" H 10250 1780 60  0001 L CNN "PressFit"
F 26 "Yes" H 10250 1690 60  0001 L CNN "Mounted"
F 27 "~~" H 10250 1600 60  0001 L CNN "Sense Comment"
F 28 "No" H 10250 1510 60  0001 L CNN "Sense"
F 29 "~~" H 10250 1420 60  0001 L CNN "Status Comment"
F 30 "No" H 10250 1330 60  0001 L CNN "Socket"
F 31 "Yes" H 10250 1240 60  0001 L CNN "SMD"
F 32 "~~" H 10250 1150 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 10250 1060 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 10250 970 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 10250 880 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 10250 790 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 10250 700 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 10250 610 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 10250 520 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 10250 430 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 10250 340 60  0001 L CNN "License"
	1    10250 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 4450 10250 4500
Connection ~ 10250 4500
Wire Wire Line
	10250 4500 10550 4500
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR038
U 1 1 5A8EF0B5
P 10250 4150
F 0 "#PWR038" H 10250 4000 50  0001 C CNN
F 1 "+3V3" H 10265 4323 50  0000 C CNN
F 2 "" H 10250 4150 50  0001 C CNN
F 3 "" H 10250 4150 50  0001 C CNN
	1    10250 4150
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:CONN_02X03-conn J4
U 1 1 5A8F06C1
P 4650 6900
F 0 "J4" H 4650 7215 50  0000 C CNN
F 1 "CONN_02X03" H 4650 7124 50  0000 C CNN
F 2 "COMATEL THD:COMATEL_389.0358.1.06.400" H 4650 5700 50  0001 C CNN
F 3 "" H 4650 5700 50  0001 C CNN
F 4 "Value" H 4650 6900 50  0001 C CNN "Fieldname"
	1    4650 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 6900 4150 6900
Wire Wire Line
	4900 6900 5250 6900
Wire Wire Line
	4900 6800 5250 6800
$Comp
L steak_maker_v2-rescue:+5V-power #PWR039
U 1 1 5A91EA9C
P 4100 6800
F 0 "#PWR039" H 4100 6650 50  0001 C CNN
F 1 "+5V" V 4115 6928 50  0000 L CNN
F 2 "" H 4100 6800 50  0001 C CNN
F 3 "" H 4100 6800 50  0001 C CNN
	1    4100 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 6800 4400 6800
$Comp
L steak_maker_v2-rescue:GND-power #PWR040
U 1 1 5A92A98B
P 4150 6900
F 0 "#PWR040" H 4150 6650 50  0001 C CNN
F 1 "GND" V 4155 6727 50  0000 C CNN
F 2 "" H 4150 6900 50  0001 C CNN
F 3 "" H 4150 6900 50  0001 C CNN
	1    4150 6900
	0    1    1    0   
$EndComp
Text Label 5000 6800 0    50   ~ 0
TRIAC1
Text Label 5000 6900 0    50   ~ 0
TRIAC2
$Comp
L steak_maker_v2-rescue:PB_MULTIMEC_3ETL9-11.0-Switches PB1
U 1 1 5A92C116
P 3700 6800
F 0 "PB1" V 4000 6759 50  0000 R CNN
F 1 "PB_MULTIMEC_3ETL9-11.0" H 3700 6630 60  0001 L CNN
F 2 "Switches:PB_MULTIMEC_3ETL9-11.0" H 3700 5820 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\PB_MULTIMEC_3E.pdf" H 3700 6450 60  0001 L CNN
F 4 "Push Button" H 3700 6360 60  0001 L CNN "Field4"
F 5 "PB_MULTIMEC_3ETL9-11.0" H 3700 6360 60  0001 L CNN "Part Number"
F 6 "PB SPST 12NO-34NO" H 3700 6270 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Switches.SchLib" H 3700 6180 60  0001 L CNN "Library Path"
F 8 "~~" H 3700 6090 60  0001 L CNN "Comment"
F 9 "Standard" H 3700 6000 60  0001 L CNN "Component Kind"
F 10 "Standard" H 3700 5910 60  0001 L CNN "Component Type"
F 11 "4" H 3700 5730 60  0001 L CNN "Pin Count"
F 12 "~~" H 3700 5640 60  0001 L CNN "Case"
F 13 "PcbLib\\Switches.PcbLib" H 3700 5550 60  0001 L CNN "Footprint Path"
F 14 "PB_MULTIMEC_3ETL9-11.0" H 3700 5460 60  0001 L CNN "Footprint Ref"
F 15 "Body 10.1x10.1mm, Pushbutton Switch, MULTIMEC 3ETL9-11.0" H 3700 5370 60  0001 L CNN "PackageDescription"
F 16 "Push Button" H 3700 5280 60  0001 L CNN "Family"
F 17 "Yes" H 3700 5190 60  0001 L CNN "Mounted"
F 18 "No" H 3700 5100 60  0001 L CNN "Socket"
F 19 "No" H 3700 5010 60  0001 L CNN "SMD"
F 20 "No" H 3700 4920 60  0001 L CNN "PressFit"
F 21 "No" H 3700 4830 60  0001 L CNN "Sense"
F 22 "~~" H 3700 4740 60  0001 L CNN "Sense Comment"
F 23 "Obsolete" H 3700 4650 60  0001 L CNN "Status"
F 24 "~~" H 3700 4560 60  0001 L CNN "Status Comment"
F 25 "~~" H 3700 4470 60  0001 L CNN "SCEM"
F 26 "24VDC 50mA SPST Push-Button Switch (Overall Height 11.0mm)" H 3700 4380 60  0001 L CNN "Part Description"
F 27 "MULTIMEC" H 3700 4290 60  0001 L CNN "Manufacturer"
F 28 "3ETL9-11.0" H 3700 4200 60  0001 L CNN "Manufacturer Part Number"
F 29 "11.0mm" H 3700 4110 60  0001 L CNN "ComponentHeight"
F 30 "~~" H 3700 4020 60  0001 L CNN "Manufacturer1 Example"
F 31 "~~" H 3700 3930 60  0001 L CNN "Manufacturer1 Part Number"
F 32 "~~" H 3700 3840 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 33 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\PB_MULTIMEC_3E.pdf" H 3700 3750 60  0001 L CNN "HelpURL"
F 34 "~~" H 3700 3660 60  0001 L CNN "ComponentLink1URL"
F 35 "~~" H 3700 3570 60  0001 L CNN "ComponentLink1Description"
F 36 "~~" H 3700 3480 60  0001 L CNN "ComponentLink2URL"
F 37 "~~" H 3700 3390 60  0001 L CNN "ComponentLink2Description"
F 38 "CERN DEM JLC" H 3700 3300 60  0001 L CNN "Author"
F 39 "06/11/08 00:00:00" H 3700 3210 60  0001 L CNN "CreateDate"
F 40 "08/06/08 00:00:00" H 3700 3120 60  0001 L CNN "LatestRevisionDate"
F 41 "Switches" H 3700 3030 60  0001 L CNN "Library Name"
F 42 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 3700 2940 60  0001 L CNN "License"
	1    3700 6800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3700 6800 3700 6950
$Comp
L steak_maker_v2-rescue:GND-power #PWR041
U 1 1 5A938173
P 3700 6950
F 0 "#PWR041" H 3700 6700 50  0001 C CNN
F 1 "GND" H 3705 6777 50  0000 C CNN
F 2 "" H 3700 6950 50  0001 C CNN
F 3 "" H 3700 6950 50  0001 C CNN
	1    3700 6950
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R8
U 1 1 5A9382FD
P 3700 5650
F 0 "R8" V 3804 5710 50  0000 L CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 3700 5440 60  0001 L CNN
F 2 "RESC1608X55N" H 3700 4630 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 3700 5260 60  0001 L CNN
F 4 "10k" V 3895 5710 50  0000 L CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 3700 5170 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 3700 5080 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 3700 4990 60  0001 L CNN "Library Path"
F 8 "=Value" H 3700 4900 60  0001 L CNN "Comment"
F 9 "Standard" H 3700 4810 60  0001 L CNN "Component Kind"
F 10 "Standard" H 3700 4720 60  0001 L CNN "Component Type"
F 11 "~~" H 3700 4540 60  0001 L CNN "PackageDescription"
F 12 "2" H 3700 4450 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 3700 4360 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 3700 4270 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 3700 4180 60  0001 L CNN "Val"
F 16 "Preferred" H 3700 4090 60  0001 L CNN "Status"
F 17 "0.1W" H 3700 4000 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 3700 3910 60  0001 L CNN "TC"
F 19 "~~" H 3700 3820 60  0001 L CNN "Voltage"
F 20 "±1%" H 3700 3730 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 3700 3640 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 3700 3550 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 3700 3460 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 3700 3370 60  0001 L CNN "Case"
F 25 "No" H 3700 3280 60  0001 L CNN "PressFit"
F 26 "Yes" H 3700 3190 60  0001 L CNN "Mounted"
F 27 "~~" H 3700 3100 60  0001 L CNN "Sense Comment"
F 28 "No" H 3700 3010 60  0001 L CNN "Sense"
F 29 "~~" H 3700 2920 60  0001 L CNN "Status Comment"
F 30 "No" H 3700 2830 60  0001 L CNN "Socket"
F 31 "Yes" H 3700 2740 60  0001 L CNN "SMD"
F 32 "~~" H 3700 2650 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 3700 2560 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 3700 2470 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 3700 2380 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 3700 2290 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 3700 2200 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 3700 2110 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 3700 2020 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 3700 1930 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 3700 1840 60  0001 L CNN "License"
	1    3700 5650
	0    1    1    0   
$EndComp
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR042
U 1 1 5A9383BD
P 3700 5650
F 0 "#PWR042" H 3700 5500 50  0001 C CNN
F 1 "+3V3" H 3715 5823 50  0000 C CNN
F 2 "" H 3700 5650 50  0001 C CNN
F 3 "" H 3700 5650 50  0001 C CNN
	1    3700 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 5950 3700 6050
Wire Wire Line
	3700 6050 3950 6050
Connection ~ 3700 6050
Wire Wire Line
	3700 6050 3700 6200
$Comp
L steak_maker_v2-rescue:+3V3-power #PWR043
U 1 1 5A98D52F
P 8900 4600
F 0 "#PWR043" H 8900 4450 50  0001 C CNN
F 1 "+3V3" V 8900 4850 50  0000 C CNN
F 2 "" H 8900 4600 50  0001 C CNN
F 3 "" H 8900 4600 50  0001 C CNN
	1    8900 4600
	0    -1   -1   0   
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R9
U 1 1 5A98D61E
P 8050 5100
F 0 "R9" H 8200 4903 50  0000 C CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 8050 4890 60  0001 L CNN
F 2 "RESC1608X55N" H 8050 4080 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 8050 4710 60  0001 L CNN
F 4 "10k" H 8200 4994 50  0000 C CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 8050 4620 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 8050 4530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 8050 4440 60  0001 L CNN "Library Path"
F 8 "=Value" H 8050 4350 60  0001 L CNN "Comment"
F 9 "Standard" H 8050 4260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 8050 4170 60  0001 L CNN "Component Type"
F 11 "~~" H 8050 3990 60  0001 L CNN "PackageDescription"
F 12 "2" H 8050 3900 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 8050 3810 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 8050 3720 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 8050 3630 60  0001 L CNN "Val"
F 16 "Preferred" H 8050 3540 60  0001 L CNN "Status"
F 17 "0.1W" H 8050 3450 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 8050 3360 60  0001 L CNN "TC"
F 19 "~~" H 8050 3270 60  0001 L CNN "Voltage"
F 20 "±1%" H 8050 3180 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 8050 3090 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 8050 3000 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 8050 2910 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 8050 2820 60  0001 L CNN "Case"
F 25 "No" H 8050 2730 60  0001 L CNN "PressFit"
F 26 "Yes" H 8050 2640 60  0001 L CNN "Mounted"
F 27 "~~" H 8050 2550 60  0001 L CNN "Sense Comment"
F 28 "No" H 8050 2460 60  0001 L CNN "Sense"
F 29 "~~" H 8050 2370 60  0001 L CNN "Status Comment"
F 30 "No" H 8050 2280 60  0001 L CNN "Socket"
F 31 "Yes" H 8050 2190 60  0001 L CNN "SMD"
F 32 "~~" H 8050 2100 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 8050 2010 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 8050 1920 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 8050 1830 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 8050 1740 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 8050 1650 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 8050 1560 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 8050 1470 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 8050 1380 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 8050 1290 60  0001 L CNN "License"
	1    8050 5100
	0    -1   -1   0   
$EndComp
$Comp
L steak_maker_v2-rescue:R0603_10K_1%_0.1W_100PPM-Resistors_SMD R10
U 1 1 5A98D722
P 7600 5100
F 0 "R10" H 7750 4903 50  0000 C CNN
F 1 "R0603_10K_1%_0.1W_100PPM" H 7600 4890 60  0001 L CNN
F 2 "RESC1608X55N" H 7600 4080 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 7600 4710 60  0001 L CNN
F 4 "10k" H 7750 4994 50  0000 C CNN "~"
F 5 "R0603_10K_1%_0.1W_100PPM" H 7600 4620 60  0001 L CNN "Part Number"
F 6 "Resistor - 1%" H 7600 4530 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Resistors.SchLib" H 7600 4440 60  0001 L CNN "Library Path"
F 8 "=Value" H 7600 4350 60  0001 L CNN "Comment"
F 9 "Standard" H 7600 4260 60  0001 L CNN "Component Kind"
F 10 "Standard" H 7600 4170 60  0001 L CNN "Component Type"
F 11 "~~" H 7600 3990 60  0001 L CNN "PackageDescription"
F 12 "2" H 7600 3900 60  0001 L CNN "Pin Count"
F 13 "PcbLib\\Resistors SMD.PcbLib" H 7600 3810 60  0001 L CNN "Footprint Path"
F 14 "RESC1608X55N" H 7600 3720 60  0001 L CNN "Footprint Ref"
F 15 "10k" H 7600 3630 60  0001 L CNN "Val"
F 16 "Preferred" H 7600 3540 60  0001 L CNN "Status"
F 17 "0.1W" H 7600 3450 60  0001 L CNN "Power"
F 18 "±100ppm/°C" H 7600 3360 60  0001 L CNN "TC"
F 19 "~~" H 7600 3270 60  0001 L CNN "Voltage"
F 20 "±1%" H 7600 3180 60  0001 L CNN "Tolerance"
F 21 "General Purpose Thick Film Chip Resistor" H 7600 3090 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 7600 3000 60  0001 L CNN "Manufacturer"
F 23 "R0603_10K_1%_0.1W_100PPM" H 7600 2910 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 7600 2820 60  0001 L CNN "Case"
F 25 "No" H 7600 2730 60  0001 L CNN "PressFit"
F 26 "Yes" H 7600 2640 60  0001 L CNN "Mounted"
F 27 "~~" H 7600 2550 60  0001 L CNN "Sense Comment"
F 28 "No" H 7600 2460 60  0001 L CNN "Sense"
F 29 "~~" H 7600 2370 60  0001 L CNN "Status Comment"
F 30 "No" H 7600 2280 60  0001 L CNN "Socket"
F 31 "Yes" H 7600 2190 60  0001 L CNN "SMD"
F 32 "~~" H 7600 2100 60  0001 L CNN "ComponentHeight"
F 33 "NIC COMPONENT" H 7600 2010 60  0001 L CNN "Manufacturer1 Example"
F 34 "NRC06F1002TRF" H 7600 1920 60  0001 L CNN "Manufacturer1 Part Number"
F 35 "0.55mm" H 7600 1830 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 36 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\R0603_NIC_NRC.pdf" H 7600 1740 60  0001 L CNN "HelpURL"
F 37 "CERN DEM JLC" H 7600 1650 60  0001 L CNN "Author"
F 38 "12/03/07 00:00:00" H 7600 1560 60  0001 L CNN "CreateDate"
F 39 "03/13/08 00:00:00" H 7600 1470 60  0001 L CNN "LatestRevisionDate"
F 40 "Resistors SMD" H 7600 1380 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 7600 1290 60  0001 L CNN "License"
	1    7600 5100
	0    -1   -1   0   
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR044
U 1 1 5A9A6FB9
P 8050 5200
F 0 "#PWR044" H 8050 4950 50  0001 C CNN
F 1 "GND" H 8055 5027 50  0000 C CNN
F 2 "" H 8050 5200 50  0001 C CNN
F 3 "" H 8050 5200 50  0001 C CNN
	1    8050 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5100 8050 5150
Wire Wire Line
	8050 5150 7600 5150
Wire Wire Line
	7600 5150 7600 5100
Connection ~ 8050 5150
Wire Wire Line
	8050 5150 8050 5200
Wire Wire Line
	8050 4700 8050 4800
Wire Wire Line
	7600 4500 7600 4800
Wire Wire Line
	7600 4500 7300 4500
Connection ~ 7600 4500
Wire Wire Line
	8050 4700 7300 4700
Connection ~ 8050 4700
Text Label 7300 4500 0    50   ~ 0
ENC_A
Text Label 7300 4700 0    50   ~ 0
ENC_B
Text Label 10450 4500 0    50   ~ 0
ENC_SW
Text Notes 7500 7000 0    200  ~ 0
Steak/PizzaMaker v2
$Comp
L steak_maker_v2-rescue:CONN_01X02-conn J6
U 1 1 5AA0482D
P 1050 5250
F 0 "J6" H 969 4975 50  0000 C CNN
F 1 "CONN_01X02" H 969 5066 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 1050 5250 50  0001 C CNN
F 3 "" H 1050 5250 50  0001 C CNN
F 4 "Value" H 1050 5250 50  0001 C CNN "Fieldname"
	1    1050 5250
	-1   0    0    1   
$EndComp
$Comp
L steak_maker_v2-rescue:CONN_01X02-conn J7
U 1 1 5AA0490F
P 1050 6650
F 0 "J7" H 969 6375 50  0000 C CNN
F 1 "CONN_01X02" H 969 6466 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_Pheonix_PT-3.5mm_2pol" H 1050 6650 50  0001 C CNN
F 3 "" H 1050 6650 50  0001 C CNN
F 4 "Value" H 1050 6650 50  0001 C CNN "Fieldname"
	1    1050 6650
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 6600 1250 6600
Wire Wire Line
	1250 6700 1350 6700
Wire Wire Line
	1350 6700 1350 6800
Wire Wire Line
	1350 6800 1450 6800
Wire Wire Line
	1250 5300 1350 5300
Wire Wire Line
	1350 5300 1350 5400
Wire Wire Line
	1350 5400 1450 5400
Wire Wire Line
	1450 5200 1250 5200
$Comp
L steak_maker_v2-rescue:PLATED_HOLE3.0_PAD6.0-Pads B1
U 1 1 5A7C5595
P 6650 750
F 0 "B1" H 6635 855 50  0000 C CNN
F 1 "PLATED_HOLE3.0_PAD6.0" H 6650 580 60  0001 L CNN
F 2 "MTG300_600" H 6650 -230 60  0001 L CNN
F 3 "Undefined" H 6650 400 60  0001 L CNN
F 4 "Plated Hole" H 6650 310 60  0001 L CNN "Field4"
F 5 "PLATED_HOLE3.0_PAD6.0" H 6650 310 60  0001 L CNN "Part Number"
F 6 "Single Terminal Socket" H 6650 220 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Pads.SchLib" H 6650 130 60  0001 L CNN "Library Path"
F 8 "~~" H 6650 40  60  0001 L CNN "Comment"
F 9 "Standard (No BOM)" H 6650 -50 60  0001 L CNN "Component Kind"
F 10 "Standard (No BOM)" H 6650 -140 60  0001 L CNN "Component Type"
F 11 "1" H 6650 -320 60  0001 L CNN "Pin Count"
F 12 "~~" H 6650 -410 60  0001 L CNN "Case"
F 13 "PcbLib\\Pads.PcbLib" H 6650 -500 60  0001 L CNN "Footprint Path"
F 14 "MTG300_600" H 6650 -590 60  0001 L CNN "Footprint Ref"
F 15 "Plated Hole" H 6650 -680 60  0001 L CNN "Family"
F 16 "No" H 6650 -770 60  0001 L CNN "Mounted"
F 17 "No" H 6650 -860 60  0001 L CNN "Socket"
F 18 "No" H 6650 -950 60  0001 L CNN "SMD"
F 19 "No" H 6650 -1040 60  0001 L CNN "Sense"
F 20 "~~" H 6650 -1130 60  0001 L CNN "Sense Comment"
F 21 "None" H 6650 -1220 60  0001 L CNN "Status"
F 22 "~~" H 6650 -1310 60  0001 L CNN "Status Comment"
F 23 "~~" H 6650 -1400 60  0001 L CNN "SCEM"
F 24 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 6650 -1490 60  0001 L CNN "Part Description"
F 25 "~~" H 6650 -1580 60  0001 L CNN "Manufacturer"
F 26 "~~" H 6650 -1670 60  0001 L CNN "Manufacturer Part Number"
F 27 "0mm" H 6650 -1760 60  0001 L CNN "ComponentHeight"
F 28 "~~" H 6650 -1850 60  0001 L CNN "Manufacturer1 Example"
F 29 "~~" H 6650 -1940 60  0001 L CNN "Manufacturer1 Part Number"
F 30 "~~" H 6650 -2030 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 31 "Undefined" H 6650 -2120 60  0001 L CNN "HelpURL"
F 32 "~~" H 6650 -2210 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 6650 -2300 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 6650 -2390 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 6650 -2480 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 6650 -2570 60  0001 L CNN "Author"
F 37 "05/26/08 00:00:00" H 6650 -2660 60  0001 L CNN "CreateDate"
F 38 "05/26/08 00:00:00" H 6650 -2750 60  0001 L CNN "LatestRevisionDate"
F 39 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 6650 -2840 60  0001 L CNN "PackageDescription"
F 40 "Pads" H 6650 -2930 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 6650 -3020 60  0001 L CNN "License"
	1    6650 750 
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:PLATED_HOLE3.0_PAD6.0-Pads B2
U 1 1 5A7C583B
P 6900 750
F 0 "B2" H 6885 855 50  0000 C CNN
F 1 "PLATED_HOLE3.0_PAD6.0" H 6900 580 60  0001 L CNN
F 2 "MTG300_600" H 6900 -230 60  0001 L CNN
F 3 "Undefined" H 6900 400 60  0001 L CNN
F 4 "Plated Hole" H 6900 310 60  0001 L CNN "Field4"
F 5 "PLATED_HOLE3.0_PAD6.0" H 6900 310 60  0001 L CNN "Part Number"
F 6 "Single Terminal Socket" H 6900 220 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Pads.SchLib" H 6900 130 60  0001 L CNN "Library Path"
F 8 "~~" H 6900 40  60  0001 L CNN "Comment"
F 9 "Standard (No BOM)" H 6900 -50 60  0001 L CNN "Component Kind"
F 10 "Standard (No BOM)" H 6900 -140 60  0001 L CNN "Component Type"
F 11 "1" H 6900 -320 60  0001 L CNN "Pin Count"
F 12 "~~" H 6900 -410 60  0001 L CNN "Case"
F 13 "PcbLib\\Pads.PcbLib" H 6900 -500 60  0001 L CNN "Footprint Path"
F 14 "MTG300_600" H 6900 -590 60  0001 L CNN "Footprint Ref"
F 15 "Plated Hole" H 6900 -680 60  0001 L CNN "Family"
F 16 "No" H 6900 -770 60  0001 L CNN "Mounted"
F 17 "No" H 6900 -860 60  0001 L CNN "Socket"
F 18 "No" H 6900 -950 60  0001 L CNN "SMD"
F 19 "No" H 6900 -1040 60  0001 L CNN "Sense"
F 20 "~~" H 6900 -1130 60  0001 L CNN "Sense Comment"
F 21 "None" H 6900 -1220 60  0001 L CNN "Status"
F 22 "~~" H 6900 -1310 60  0001 L CNN "Status Comment"
F 23 "~~" H 6900 -1400 60  0001 L CNN "SCEM"
F 24 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 6900 -1490 60  0001 L CNN "Part Description"
F 25 "~~" H 6900 -1580 60  0001 L CNN "Manufacturer"
F 26 "~~" H 6900 -1670 60  0001 L CNN "Manufacturer Part Number"
F 27 "0mm" H 6900 -1760 60  0001 L CNN "ComponentHeight"
F 28 "~~" H 6900 -1850 60  0001 L CNN "Manufacturer1 Example"
F 29 "~~" H 6900 -1940 60  0001 L CNN "Manufacturer1 Part Number"
F 30 "~~" H 6900 -2030 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 31 "Undefined" H 6900 -2120 60  0001 L CNN "HelpURL"
F 32 "~~" H 6900 -2210 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 6900 -2300 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 6900 -2390 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 6900 -2480 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 6900 -2570 60  0001 L CNN "Author"
F 37 "05/26/08 00:00:00" H 6900 -2660 60  0001 L CNN "CreateDate"
F 38 "05/26/08 00:00:00" H 6900 -2750 60  0001 L CNN "LatestRevisionDate"
F 39 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 6900 -2840 60  0001 L CNN "PackageDescription"
F 40 "Pads" H 6900 -2930 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 6900 -3020 60  0001 L CNN "License"
	1    6900 750 
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:PLATED_HOLE3.0_PAD6.0-Pads B3
U 1 1 5A7C58F9
P 7150 750
F 0 "B3" H 7135 855 50  0000 C CNN
F 1 "PLATED_HOLE3.0_PAD6.0" H 7150 580 60  0001 L CNN
F 2 "MTG300_600" H 7150 -230 60  0001 L CNN
F 3 "Undefined" H 7150 400 60  0001 L CNN
F 4 "Plated Hole" H 7150 310 60  0001 L CNN "Field4"
F 5 "PLATED_HOLE3.0_PAD6.0" H 7150 310 60  0001 L CNN "Part Number"
F 6 "Single Terminal Socket" H 7150 220 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Pads.SchLib" H 7150 130 60  0001 L CNN "Library Path"
F 8 "~~" H 7150 40  60  0001 L CNN "Comment"
F 9 "Standard (No BOM)" H 7150 -50 60  0001 L CNN "Component Kind"
F 10 "Standard (No BOM)" H 7150 -140 60  0001 L CNN "Component Type"
F 11 "1" H 7150 -320 60  0001 L CNN "Pin Count"
F 12 "~~" H 7150 -410 60  0001 L CNN "Case"
F 13 "PcbLib\\Pads.PcbLib" H 7150 -500 60  0001 L CNN "Footprint Path"
F 14 "MTG300_600" H 7150 -590 60  0001 L CNN "Footprint Ref"
F 15 "Plated Hole" H 7150 -680 60  0001 L CNN "Family"
F 16 "No" H 7150 -770 60  0001 L CNN "Mounted"
F 17 "No" H 7150 -860 60  0001 L CNN "Socket"
F 18 "No" H 7150 -950 60  0001 L CNN "SMD"
F 19 "No" H 7150 -1040 60  0001 L CNN "Sense"
F 20 "~~" H 7150 -1130 60  0001 L CNN "Sense Comment"
F 21 "None" H 7150 -1220 60  0001 L CNN "Status"
F 22 "~~" H 7150 -1310 60  0001 L CNN "Status Comment"
F 23 "~~" H 7150 -1400 60  0001 L CNN "SCEM"
F 24 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 7150 -1490 60  0001 L CNN "Part Description"
F 25 "~~" H 7150 -1580 60  0001 L CNN "Manufacturer"
F 26 "~~" H 7150 -1670 60  0001 L CNN "Manufacturer Part Number"
F 27 "0mm" H 7150 -1760 60  0001 L CNN "ComponentHeight"
F 28 "~~" H 7150 -1850 60  0001 L CNN "Manufacturer1 Example"
F 29 "~~" H 7150 -1940 60  0001 L CNN "Manufacturer1 Part Number"
F 30 "~~" H 7150 -2030 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 31 "Undefined" H 7150 -2120 60  0001 L CNN "HelpURL"
F 32 "~~" H 7150 -2210 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 7150 -2300 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 7150 -2390 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 7150 -2480 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 7150 -2570 60  0001 L CNN "Author"
F 37 "05/26/08 00:00:00" H 7150 -2660 60  0001 L CNN "CreateDate"
F 38 "05/26/08 00:00:00" H 7150 -2750 60  0001 L CNN "LatestRevisionDate"
F 39 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 7150 -2840 60  0001 L CNN "PackageDescription"
F 40 "Pads" H 7150 -2930 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 7150 -3020 60  0001 L CNN "License"
	1    7150 750 
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:PLATED_HOLE3.0_PAD6.0-Pads B4
U 1 1 5A7C59B9
P 7350 750
F 0 "B4" H 7335 855 50  0000 C CNN
F 1 "PLATED_HOLE3.0_PAD6.0" H 7350 580 60  0001 L CNN
F 2 "MTG300_600" H 7350 -230 60  0001 L CNN
F 3 "Undefined" H 7350 400 60  0001 L CNN
F 4 "Plated Hole" H 7350 310 60  0001 L CNN "Field4"
F 5 "PLATED_HOLE3.0_PAD6.0" H 7350 310 60  0001 L CNN "Part Number"
F 6 "Single Terminal Socket" H 7350 220 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Pads.SchLib" H 7350 130 60  0001 L CNN "Library Path"
F 8 "~~" H 7350 40  60  0001 L CNN "Comment"
F 9 "Standard (No BOM)" H 7350 -50 60  0001 L CNN "Component Kind"
F 10 "Standard (No BOM)" H 7350 -140 60  0001 L CNN "Component Type"
F 11 "1" H 7350 -320 60  0001 L CNN "Pin Count"
F 12 "~~" H 7350 -410 60  0001 L CNN "Case"
F 13 "PcbLib\\Pads.PcbLib" H 7350 -500 60  0001 L CNN "Footprint Path"
F 14 "MTG300_600" H 7350 -590 60  0001 L CNN "Footprint Ref"
F 15 "Plated Hole" H 7350 -680 60  0001 L CNN "Family"
F 16 "No" H 7350 -770 60  0001 L CNN "Mounted"
F 17 "No" H 7350 -860 60  0001 L CNN "Socket"
F 18 "No" H 7350 -950 60  0001 L CNN "SMD"
F 19 "No" H 7350 -1040 60  0001 L CNN "Sense"
F 20 "~~" H 7350 -1130 60  0001 L CNN "Sense Comment"
F 21 "None" H 7350 -1220 60  0001 L CNN "Status"
F 22 "~~" H 7350 -1310 60  0001 L CNN "Status Comment"
F 23 "~~" H 7350 -1400 60  0001 L CNN "SCEM"
F 24 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 7350 -1490 60  0001 L CNN "Part Description"
F 25 "~~" H 7350 -1580 60  0001 L CNN "Manufacturer"
F 26 "~~" H 7350 -1670 60  0001 L CNN "Manufacturer Part Number"
F 27 "0mm" H 7350 -1760 60  0001 L CNN "ComponentHeight"
F 28 "~~" H 7350 -1850 60  0001 L CNN "Manufacturer1 Example"
F 29 "~~" H 7350 -1940 60  0001 L CNN "Manufacturer1 Part Number"
F 30 "~~" H 7350 -2030 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 31 "Undefined" H 7350 -2120 60  0001 L CNN "HelpURL"
F 32 "~~" H 7350 -2210 60  0001 L CNN "ComponentLink1URL"
F 33 "~~" H 7350 -2300 60  0001 L CNN "ComponentLink1Description"
F 34 "~~" H 7350 -2390 60  0001 L CNN "ComponentLink2URL"
F 35 "~~" H 7350 -2480 60  0001 L CNN "ComponentLink2Description"
F 36 "CERN DEM JLC" H 7350 -2570 60  0001 L CNN "Author"
F 37 "05/26/08 00:00:00" H 7350 -2660 60  0001 L CNN "CreateDate"
F 38 "05/26/08 00:00:00" H 7350 -2750 60  0001 L CNN "LatestRevisionDate"
F 39 "Plated Through Hole: Hole Dia.=3.0mm Pad Dia.=6.0mm" H 7350 -2840 60  0001 L CNN "PackageDescription"
F 40 "Pads" H 7350 -2930 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 7350 -3020 60  0001 L CNN "License"
	1    7350 750 
	1    0    0    -1  
$EndComp
Text Label 5900 3150 0    50   ~ 0
ENC_A
Text Label 3600 3150 0    50   ~ 0
ENC_B
Text Label 3600 3450 0    50   ~ 0
ENC_SW
Text Label 3850 6050 0    50   ~ 0
BACK_SW
Text Label 3600 3350 0    50   ~ 0
BACK_SW
Wire Wire Line
	4100 3350 3600 3350
Wire Wire Line
	4100 3450 3600 3450
Wire Wire Line
	4100 3550 3600 3550
Wire Wire Line
	4100 3650 3600 3650
Wire Wire Line
	4100 3750 3600 3750
Wire Wire Line
	4100 3150 3600 3150
Wire Wire Line
	4100 4350 3550 4350
Text Label 3600 4350 0    50   ~ 0
TH_SO
Wire Wire Line
	3600 3050 4100 3050
Wire Wire Line
	4100 2950 3600 2950
Wire Wire Line
	4100 2850 3600 2850
Wire Wire Line
	4100 2550 3500 2550
Wire Wire Line
	4100 2650 3500 2650
Wire Wire Line
	4100 4250 3550 4250
Wire Wire Line
	6350 5650 6300 5650
Wire Wire Line
	6300 5650 6300 5350
Connection ~ 6300 5350
Wire Wire Line
	6350 6050 5850 6050
Wire Wire Line
	6350 6150 5850 6150
$Comp
L steak_maker_v2-rescue:XTAL_10MHZ_IQD_LFXTAL003166-Crystals_&_Oscillators Q1
U 1 1 5A9230C9
P 6350 4300
F 0 "Q1" H 6500 4557 50  0000 C CNN
F 1 "XTAL_10MHZ_IQD_LFXTAL003166" H 6350 4010 60  0001 L CNN
F 2 "XTAL1160X490X430" H 6350 3110 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\XTAL_IQD_LFXTAL003166.pdf" H 6350 3830 60  0001 L CNN
F 4 "10MHz" H 6500 4466 50  0000 C CNN "~"
F 5 "XTAL_10MHZ_IQD_LFXTAL003166" H 6350 3740 60  0001 L CNN "Part Number"
F 6 "Quartz Crystal" H 6350 3650 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Crystals & Oscillators.SchLib" H 6350 3560 60  0001 L CNN "Library Path"
F 8 "=Value" H 6350 3470 60  0001 L CNN "Comment"
F 9 "Standard" H 6350 3380 60  0001 L CNN "Component Kind"
F 10 "Standard" H 6350 3290 60  0001 L CNN "Component Type"
F 11 "~~" H 6350 3200 60  0001 L CNN "Device"
F 12 "HC49/4H SMX Case, SMD Cristal, Body 11.6x4.9mm" H 6350 3020 60  0001 L CNN "PackageDescription"
F 13 "10MHz" H 6350 2930 60  0001 L CNN "Val"
F 14 "~~" H 6350 2840 60  0001 L CNN "Status"
F 15 "Tolerance:± 30ppm, Stability:± 50ppm, -10°C to +60°C, 16pF, Surface Mount Quartz Crystal, HC49/4HSMX Series" H 6350 2750 60  0001 L CNN "Part Description"
F 16 "IQD FREQUENCY PRODUCTS" H 6350 2660 60  0001 L CNN "Manufacturer"
F 17 "LF XTAL003166" H 6350 2570 60  0001 L CNN "Manufacturer Part Number"
F 18 "2" H 6350 2480 60  0001 L CNN "Pin Count"
F 19 "~~" H 6350 2390 60  0001 L CNN "Case"
F 20 "Yes" H 6350 2300 60  0001 L CNN "Mounted"
F 21 "No" H 6350 2210 60  0001 L CNN "Socket"
F 22 "Yes" H 6350 2120 60  0001 L CNN "SMD"
F 23 "No" H 6350 2030 60  0001 L CNN "PressFit"
F 24 "No" H 6350 1940 60  0001 L CNN "Sense"
F 25 "No" H 6350 1850 60  0001 L CNN "Bonding"
F 26 "~~" H 6350 1760 60  0001 L CNN "Sense Comment"
F 27 "~~" H 6350 1670 60  0001 L CNN "Status Comment"
F 28 "~~" H 6350 1580 60  0001 L CNN "Field1"
F 29 "4.3mm" H 6350 1490 60  0001 L CNN "ComponentHeight"
F 30 "PcbLib\\ICs And Semiconductors SMD.PcbLib" H 6350 1400 60  0001 L CNN "Footprint Path"
F 31 "XTAL1160X490X430" H 6350 1310 60  0001 L CNN "Footprint Ref"
F 32 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\XTAL_IQD_LFXTAL003166.pdf" H 6350 1220 60  0001 L CNN "HelpURL"
F 33 "~~" H 6350 1130 60  0001 L CNN "ComponentLink1URL"
F 34 "~~" H 6350 1040 60  0001 L CNN "ComponentLink1Description"
F 35 "~~" H 6350 950 60  0001 L CNN "ComponentLink2URL"
F 36 "~~" H 6350 860 60  0001 L CNN "ComponentLink2Description"
F 37 "CERN DEM JLC" H 6350 770 60  0001 L CNN "Author"
F 38 "04/19/12 00:00:00" H 6350 680 60  0001 L CNN "CreateDate"
F 39 "11/07/16 00:00:00" H 6350 590 60  0001 L CNN "LatestRevisionDate"
F 40 "ICs And Semiconductors SMD" H 6350 500 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 6350 410 60  0001 L CNN "License"
	1    6350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4500 6700 4300
Wire Wire Line
	6700 4300 6650 4300
Wire Wire Line
	6250 4500 6700 4500
$Comp
L steak_maker_v2-rescue:MCP7940N-Timer IC4
U 1 1 5A959143
P 2050 3700
F 0 "IC4" H 2300 4050 50  0000 C CNN
F 1 "MCP7940N" H 1750 3300 50  0000 C CNN
F 2 "ICs And Semiconductors SMD:SOIC127P600X175-8N" H 2050 3700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/20005010F.pdf" H 2050 3700 50  0001 C CNN
	1    2050 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3500 1650 3500
Wire Wire Line
	1050 3600 1650 3600
Wire Wire Line
	2050 2800 2050 3300
Wire Wire Line
	1700 2800 2050 2800
Wire Wire Line
	2150 3300 2150 2800
$Comp
L steak_maker_v2-rescue:XTAL_32.768_KHZ_MICRO-CRYSTAL_MS3V-T1R-Crystals_&_Oscillators Q2
U 1 1 5A9CCCE8
P 2650 3500
F 0 "Q2" H 2850 3665 50  0000 C CNN
F 1 "XTAL_32.768_KHZ_MICRO-CRYSTAL_MS3V-T1R" H 2650 2910 60  0001 L CNN
F 2 "XTAL_MICRO-CRYSTAL_MS3V-T1R" H 2650 2010 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\XTAL_MICRO-CRYSTAL_MS3V-T1R.pdf" H 2650 2730 60  0001 L CNN
F 4 "32.768kHz" H 2850 3574 50  0000 C CNN "~"
F 5 "XTAL_32.768_KHZ_MICRO-CRYSTAL_MS3V-T1R" H 2650 2640 60  0001 L CNN "Part Number"
F 6 "Quartz Crystal 1X 2X 3GND" H 2650 2550 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Crystals & Oscillators.SchLib" H 2650 2460 60  0001 L CNN "Library Path"
F 8 "=Value" H 2650 2370 60  0001 L CNN "Comment"
F 9 "Standard" H 2650 2280 60  0001 L CNN "Component Kind"
F 10 "Standard" H 2650 2190 60  0001 L CNN "Component Type"
F 11 "~~" H 2650 2100 60  0001 L CNN "Device"
F 12 "2 Pins, 1.4 x 5.2 x 1.4mm , SMD Crystal, MS3V-T1R Serie" H 2650 1920 60  0001 L CNN "PackageDescription"
F 13 "32.768kHz" H 2650 1830 60  0001 L CNN "Val"
F 14 "~~" H 2650 1740 60  0001 L CNN "Status"
F 15 "Tolerance: ± 20ppm, -40°C to +85°C, 12.5pF,  Surface Mount Crystal, MS3V-T1R Series" H 2650 1650 60  0001 L CNN "Part Description"
F 16 "MICRO CRYSTAL" H 2650 1560 60  0001 L CNN "Manufacturer"
F 17 "MS3V-T1R 32.768 KHZ 12.5PF 20PPM TAQC" H 2650 1470 60  0001 L CNN "Manufacturer Part Number"
F 18 "3" H 2650 1380 60  0001 L CNN "Pin Count"
F 19 "~~" H 2650 1290 60  0001 L CNN "Case"
F 20 "Yes" H 2650 1200 60  0001 L CNN "Mounted"
F 21 "No" H 2650 1110 60  0001 L CNN "Socket"
F 22 "Yes" H 2650 1020 60  0001 L CNN "SMD"
F 23 "No" H 2650 930 60  0001 L CNN "PressFit"
F 24 "No" H 2650 840 60  0001 L CNN "Sense"
F 25 "No" H 2650 750 60  0001 L CNN "Bonding"
F 26 "~~" H 2650 660 60  0001 L CNN "Sense Comment"
F 27 "~~" H 2650 570 60  0001 L CNN "Status Comment"
F 28 "~~" H 2650 480 60  0001 L CNN "Field1"
F 29 "1.48mm" H 2650 390 60  0001 L CNN "ComponentHeight"
F 30 "PcbLib\\ICs And Semiconductors SMD.PcbLib" H 2650 300 60  0001 L CNN "Footprint Path"
F 31 "XTAL_MICRO-CRYSTAL_MS3V-T1R" H 2650 210 60  0001 L CNN "Footprint Ref"
F 32 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\XTAL_MICRO-CRYSTAL_MS3V-T1R.pdf" H 2650 120 60  0001 L CNN "HelpURL"
F 33 "~~" H 2650 30  60  0001 L CNN "ComponentLink1URL"
F 34 "~~" H 2650 -60 60  0001 L CNN "ComponentLink1Description"
F 35 "~~" H 2650 -150 60  0001 L CNN "ComponentLink2URL"
F 36 "~~" H 2650 -240 60  0001 L CNN "ComponentLink2Description"
F 37 "CERN DEM JLC" H 2650 -330 60  0001 L CNN "Author"
F 38 "02/21/13 00:00:00" H 2650 -420 60  0001 L CNN "CreateDate"
F 39 "02/01/16 00:00:00" H 2650 -510 60  0001 L CNN "LatestRevisionDate"
F 40 "ICs And Semiconductors SMD" H 2650 -600 60  0001 L CNN "Library Name"
F 41 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 2650 -690 60  0001 L CNN "License"
	1    2650 3500
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_18PF_50V_5%_NP0-Capacitors_SMD C16
U 1 1 5A9DDE26
P 3000 4100
F 0 "C16" H 3150 4255 50  0000 C CNN
F 1 "CC0603_18PF_50V_5%_NP0" H 3000 3840 60  0001 L CNN
F 2 "CAPC1608X87N" H 3000 3030 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 3000 3660 60  0001 L CNN
F 4 "18pF" H 3150 4346 50  0000 C CNN "~"
F 5 "CC0603_18PF_50V_5%_NP0" H 3000 3570 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 3000 3480 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 3000 3390 60  0001 L CNN "Library Path"
F 8 "=Value" H 3000 3300 60  0001 L CNN "Comment"
F 9 "Standard" H 3000 3210 60  0001 L CNN "Component Kind"
F 10 "Standard" H 3000 3120 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 3000 2940 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 3000 2850 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X87N" H 3000 2760 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 3000 2670 60  0001 L CNN "PackageDescription"
F 15 "18pF" H 3000 2580 60  0001 L CNN "Val"
F 16 "Preferred" H 3000 2490 60  0001 L CNN "Status"
F 17 "~~" H 3000 2400 60  0001 L CNN "Status Comment"
F 18 "50V" H 3000 2310 60  0001 L CNN "Voltage"
F 19 "C0G/NP0" H 3000 2220 60  0001 L CNN "TC"
F 20 "±5%" H 3000 2130 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 3000 2040 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 3000 1950 60  0001 L CNN "Manufacturer"
F 23 "CC0603_18PF_50V_5%_NP0" H 3000 1860 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 3000 1770 60  0001 L CNN "Case"
F 25 "Yes" H 3000 1680 60  0001 L CNN "Mounted"
F 26 "No" H 3000 1590 60  0001 L CNN "Socket"
F 27 "Yes" H 3000 1500 60  0001 L CNN "SMD"
F 28 "~~" H 3000 1410 60  0001 L CNN "PressFit"
F 29 "No" H 3000 1320 60  0001 L CNN "Sense"
F 30 "~~" H 3000 1230 60  0001 L CNN "Sense Comment"
F 31 "~~" H 3000 1140 60  0001 L CNN "ComponentHeight"
F 32 "PHYCOMP" H 3000 1050 60  0001 L CNN "Manufacturer1 Example"
F 33 "223886715189" H 3000 960 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.87mm" H 3000 870 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 3000 780 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 3000 690 60  0001 L CNN "Author"
F 37 "12/03/07 00:00:00" H 3000 600 60  0001 L CNN "CreateDate"
F 38 "12/03/07 00:00:00" H 3000 510 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 3000 420 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 3000 330 60  0001 L CNN "License"
	1    3000 4100
	-1   0    0    1   
$EndComp
$Comp
L steak_maker_v2-rescue:CC0603_18PF_50V_5%_NP0-Capacitors_SMD C15
U 1 1 5A9DDF1C
P 3000 3250
F 0 "C15" H 3150 3003 50  0000 C CNN
F 1 "CC0603_18PF_50V_5%_NP0" H 3000 2990 60  0001 L CNN
F 2 "CAPC1608X87N" H 3000 2180 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 3000 2810 60  0001 L CNN
F 4 "18pF" H 3150 3094 50  0000 C CNN "~"
F 5 "CC0603_18PF_50V_5%_NP0" H 3000 2720 60  0001 L CNN "Part Number"
F 6 "Capacitor - non polarized" H 3000 2630 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Capacitors.SchLib" H 3000 2540 60  0001 L CNN "Library Path"
F 8 "=Value" H 3000 2450 60  0001 L CNN "Comment"
F 9 "Standard" H 3000 2360 60  0001 L CNN "Component Kind"
F 10 "Standard" H 3000 2270 60  0001 L CNN "Component Type"
F 11 "2.0000000000000000e+00" H 3000 2090 60  0001 L CNN "Pin Count"
F 12 "PcbLib\\Capacitors SMD.PcbLib" H 3000 2000 60  0001 L CNN "Footprint Path"
F 13 "CAPC1608X87N" H 3000 1910 60  0001 L CNN "Footprint Ref"
F 14 "~~" H 3000 1820 60  0001 L CNN "PackageDescription"
F 15 "18pF" H 3000 1730 60  0001 L CNN "Val"
F 16 "Preferred" H 3000 1640 60  0001 L CNN "Status"
F 17 "~~" H 3000 1550 60  0001 L CNN "Status Comment"
F 18 "50V" H 3000 1460 60  0001 L CNN "Voltage"
F 19 "C0G/NP0" H 3000 1370 60  0001 L CNN "TC"
F 20 "±5%" H 3000 1280 60  0001 L CNN "Tolerance"
F 21 "SMD Multilayer Chip Ceramic Capacitor" H 3000 1190 60  0001 L CNN "Part Description"
F 22 "GENERIC" H 3000 1100 60  0001 L CNN "Manufacturer"
F 23 "CC0603_18PF_50V_5%_NP0" H 3000 1010 60  0001 L CNN "Manufacturer Part Number"
F 24 "0603" H 3000 920 60  0001 L CNN "Case"
F 25 "Yes" H 3000 830 60  0001 L CNN "Mounted"
F 26 "No" H 3000 740 60  0001 L CNN "Socket"
F 27 "Yes" H 3000 650 60  0001 L CNN "SMD"
F 28 "~~" H 3000 560 60  0001 L CNN "PressFit"
F 29 "No" H 3000 470 60  0001 L CNN "Sense"
F 30 "~~" H 3000 380 60  0001 L CNN "Sense Comment"
F 31 "~~" H 3000 290 60  0001 L CNN "ComponentHeight"
F 32 "PHYCOMP" H 3000 200 60  0001 L CNN "Manufacturer1 Example"
F 33 "223886715189" H 3000 110 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "0.87mm" H 3000 20  60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\CC0603_NP0_PHYCOMP.pdf" H 3000 -70 60  0001 L CNN "HelpURL"
F 36 "CERN DEM JLC" H 3000 -160 60  0001 L CNN "Author"
F 37 "12/03/07 00:00:00" H 3000 -250 60  0001 L CNN "CreateDate"
F 38 "12/03/07 00:00:00" H 3000 -340 60  0001 L CNN "LatestRevisionDate"
F 39 "Capacitors SMD" H 3000 -430 60  0001 L CNN "Library Name"
F 40 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 3000 -520 60  0001 L CNN "License"
	1    3000 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2450 4100 2450 3800
Wire Wire Line
	2450 4100 2700 4100
Connection ~ 2450 3800
Wire Wire Line
	2450 3600 2450 3250
Wire Wire Line
	2450 3250 2700 3250
Connection ~ 2450 3600
Wire Wire Line
	3000 3250 3250 3250
Wire Wire Line
	3250 3250 3250 3700
Wire Wire Line
	3250 3700 3250 4100
Wire Wire Line
	3250 4100 3000 4100
Connection ~ 3250 3700
Wire Wire Line
	3250 4100 3250 4250
Connection ~ 3250 4100
$Comp
L steak_maker_v2-rescue:GND-power #PWR0101
U 1 1 5AA64CE0
P 3250 4250
F 0 "#PWR0101" H 3250 4000 50  0001 C CNN
F 1 "GND" H 3255 4077 50  0000 C CNN
F 2 "" H 3250 4250 50  0001 C CNN
F 3 "" H 3250 4250 50  0001 C CNN
	1    3250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4500 9000 4500
Wire Wire Line
	8050 4700 9000 4700
Text Notes 5650 5750 0    50   ~ 0
p12
Text Notes 5650 5850 0    50   ~ 0
p13
Text Notes 5650 5950 0    50   ~ 0
p11
Text Notes 5650 6050 0    50   ~ 0
p22
Text Notes 5650 6150 0    50   ~ 0
p14
Wire Wire Line
	6100 5350 6100 5300
Wire Wire Line
	6100 5350 6300 5350
NoConn ~ 6350 6250
NoConn ~ 6350 6350
Text Notes 5650 6450 0    50   ~ 0
p23
Text Notes 5650 6950 0    50   ~ 0
p21
Text Notes 5650 6850 0    50   ~ 0
p20
Text Notes 5650 6750 0    50   ~ 0
p19
Text Notes 5650 6650 0    50   ~ 0
p18
Text Notes 5650 6550 0    50   ~ 0
p17
Text Label 5900 5950 0    50   ~ 0
LCD_E2
Text Label 5900 5750 0    50   ~ 0
LCD_A0
Text Label 5900 2150 0    50   ~ 0
LCD_E1
Text Label 5900 2750 0    50   ~ 0
LCD_E2
Text Label 5900 6050 0    50   ~ 0
LCD_D0
Text Label 5900 6150 0    50   ~ 0
LCD_D1
Text Label 5900 6450 0    50   ~ 0
LCD_D2
Text Label 5900 6550 0    50   ~ 0
LCD_D3
Text Label 5900 6650 0    50   ~ 0
LCD_D4
Text Label 5900 6750 0    50   ~ 0
LCD_D5
Text Label 5900 6850 0    50   ~ 0
LCD_D6
Text Label 5900 6950 0    50   ~ 0
LCD_D7
Text Label 3500 2650 0    50   ~ 0
LCD_D0
Text Label 3500 2350 0    50   ~ 0
LCD_D1
Text Label 3500 2750 0    50   ~ 0
LCD_D2
Wire Wire Line
	4100 2750 3500 2750
Text Label 5900 3750 0    50   ~ 0
LCD_D4
Text Label 5900 2450 0    50   ~ 0
LCD_D5
Text Label 5900 2550 0    50   ~ 0
LCD_D6
Text Label 5900 3850 0    50   ~ 0
LCD_D7
Text Label 2300 2800 0    50   ~ 0
BATTERY
$Comp
L Batteries:BATH_KEYSTONE_103 BATH1
U 1 1 5B276C89
P 2650 2800
F 0 "BATH1" H 2850 3016 40  0000 C CNN
F 1 "BATH_KEYSTONE_103" H 2650 2560 60  0001 L CNN
F 2 "BATH_KEYSTONE_103" H 2650 1750 60  0001 L CNN
F 3 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\BATH_KEYSTONE_103.pdf" H 2650 2380 60  0001 L CNN
F 4 "~~" H 2650 2290 60  0001 L CNN "Field4"
F 5 "BATH_KEYSTONE_103" H 2650 2290 60  0001 L CNN "Part Number"
F 6 "Battery Holder 2 Pin" H 2650 2200 60  0001 L CNN "Library Ref"
F 7 "SchLib\\Batteries.SchLib" H 2650 2110 60  0001 L CNN "Library Path"
F 8 "=Value" H 2650 2020 60  0001 L CNN "Comment"
F 9 "Standard" H 2650 1930 60  0001 L CNN "Component Kind"
F 10 "Standard" H 2650 1840 60  0001 L CNN "Component Type"
F 11 "2" H 2650 1660 60  0001 L CNN "Pin Count"
F 12 "~~" H 2650 1570 60  0001 L CNN "Case"
F 13 "PcbLib\\Batteries.PcbLib" H 2650 1480 60  0001 L CNN "Footprint Path"
F 14 "BATH_KEYSTONE_103" H 2650 1390 60  0001 L CNN "Footprint Ref"
F 15 "Battery Holder for 20mm Lithium Coin Cells" H 2650 1300 60  0001 L CNN "PackageDescription"
F 16 "Battery" H 2650 1210 60  0001 L CNN "Family"
F 17 "Yes" H 2650 1120 60  0001 L CNN "Mounted"
F 18 "No" H 2650 1030 60  0001 L CNN "Socket"
F 19 "No" H 2650 940 60  0001 L CNN "SMD"
F 20 "No" H 2650 850 60  0001 L CNN "PressFit"
F 21 "No" H 2650 760 60  0001 L CNN "Sense"
F 22 "~~" H 2650 670 60  0001 L CNN "Sense Comment"
F 23 "~~" H 2650 580 60  0001 L CNN "Status"
F 24 "~~" H 2650 490 60  0001 L CNN "Status Comment"
F 25 "~~" H 2650 400 60  0001 L CNN "SCEM"
F 26 "~~" H 2650 310 60  0001 L CNN "Power"
F 27 "~~" H 2650 220 60  0001 L CNN "Val"
F 28 "Battery Holders for 20mm Lithium Coin Cells" H 2650 130 60  0001 L CNN "Part Description"
F 29 "KEYSTONE" H 2650 40  60  0001 L CNN "Manufacturer"
F 30 "103" H 2650 -50 60  0001 L CNN "Manufacturer Part Number"
F 31 "8.5mm" H 2650 -140 60  0001 L CNN "ComponentHeight"
F 32 "~~" H 2650 -230 60  0001 L CNN "Manufacturer1 Example"
F 33 "~~" H 2650 -320 60  0001 L CNN "Manufacturer1 Part Number"
F 34 "~~" H 2650 -410 60  0001 L CNN "Manufacturer1 ComponentHeight"
F 35 "\\\\cern.ch\\dfs\\Applications\\Altium\\Datasheets\\BATH_KEYSTONE_103.pdf" H 2650 -500 60  0001 L CNN "HelpURL"
F 36 "~~" H 2650 -590 60  0001 L CNN "ComponentLink1URL"
F 37 "~~" H 2650 -680 60  0001 L CNN "ComponentLink1Description"
F 38 "~~" H 2650 -770 60  0001 L CNN "ComponentLink2URL"
F 39 "~~" H 2650 -860 60  0001 L CNN "ComponentLink2Description"
F 40 "CERN DEM JLC" H 2650 -950 60  0001 L CNN "Author"
F 41 "10/20/09 00:00:00" H 2650 -1040 60  0001 L CNN "CreateDate"
F 42 "10/20/09 00:00:00" H 2650 -1130 60  0001 L CNN "LatestRevisionDate"
F 43 "Batteries" H 2650 -1220 60  0001 L CNN "Library Name"
F 44 "This work is licensed under the Creative Commons CC-BY-SA 4.0 License. To the extent that circuit schematics that use Licensed Material can be considered to be ‘Adapted Material’, then the copyright holder waives article 3.b of the license with respect to these schematics." H 2650 -1310 60  0001 L CNN "License"
	1    2650 2800
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR0102
U 1 1 5B277207
P 3250 2950
F 0 "#PWR0102" H 3250 2700 50  0001 C CNN
F 1 "GND" H 3255 2777 50  0000 C CNN
F 2 "" H 3250 2950 50  0001 C CNN
F 3 "" H 3250 2950 50  0001 C CNN
	1    3250 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2800 3250 2800
Wire Wire Line
	3250 2800 3250 2950
Wire Wire Line
	2150 2800 2650 2800
Text Label 5900 3050 0    50   ~ 0
BUZZER
$Comp
L device:Buzzer BZ1
U 1 1 5B29DF53
P 7400 3550
F 0 "BZ1" H 7553 3579 50  0000 L CNN
F 1 "Buzzer" H 7553 3488 50  0000 L CNN
F 2 "Buzzer_Beeper:MagneticBuzzer_ProSignal_ABT-410-RC" V 7375 3650 50  0001 C CNN
F 3 "" V 7375 3650 50  0001 C CNN
	1    7400 3550
	1    0    0    -1  
$EndComp
$Comp
L steak_maker_v2-rescue:GND-power #PWR0103
U 1 1 5B29E726
P 7250 3750
F 0 "#PWR0103" H 7250 3500 50  0001 C CNN
F 1 "GND" H 7255 3577 50  0000 C CNN
F 2 "" H 7250 3750 50  0001 C CNN
F 3 "" H 7250 3750 50  0001 C CNN
	1    7250 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3650 7250 3650
Wire Wire Line
	7250 3650 7250 3750
Wire Wire Line
	7300 3450 6750 3450
Text Label 6750 3450 0    50   ~ 0
BUZZER
$EndSCHEMATC
