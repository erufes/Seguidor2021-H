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
Text Notes 500  5850 0    118  ~ 0
Circuito com o array dos LEDs
Text Notes 6900 650  0    118  ~ 0
Led de power
Text Notes 8400 700  0    118  ~ 0
Circuito com o led no receptor
Text Notes 8500 250  0    157  ~ 0
Placa sensores laterais
Text Notes 10450 950  0    50   ~ 0
Sensor Direito
$Comp
L Sensor_Proximity:ITR8307 U?
U 1 1 5EDABE26
P 10750 2100
F 0 "U?" H 10750 2417 50  0000 C CNN
F 1 "ITR8307" H 10750 2326 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 10750 1900 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 10750 2200 50  0001 C CNN
	1    10750 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5ED6CDE5
P 10800 1200
F 0 "#PWR?" H 10800 1050 50  0001 C CNN
F 1 "+3.3V" V 10900 1050 50  0000 L CNN
F 2 "" H 10800 1200 50  0001 C CNN
F 3 "" H 10800 1200 50  0001 C CNN
	1    10800 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5EDAFEB6
P 10450 1650
F 0 "R?" H 10520 1696 50  0000 L CNN
F 1 "110" H 10520 1605 50  0000 L CNN
F 2 "" V 10380 1650 50  0001 C CNN
F 3 "~" H 10450 1650 50  0001 C CNN
	1    10450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1400 10450 1500
Wire Wire Line
	10800 1200 11050 1200
Wire Wire Line
	10450 1800 10450 2000
$Comp
L power:GND #PWR?
U 1 1 5EDB90E8
P 10800 2550
F 0 "#PWR?" H 10800 2300 50  0001 C CNN
F 1 "GND" V 10805 2422 50  0000 R CNN
F 2 "" H 10800 2550 50  0001 C CNN
F 3 "" H 10800 2550 50  0001 C CNN
	1    10800 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	11050 2400 11050 2550
Connection ~ 11050 2400
Wire Wire Line
	10800 2550 11050 2550
Wire Wire Line
	11050 2200 11050 2400
$Comp
L Device:R R?
U 1 1 5EDBC4D6
P 11050 1650
F 0 "R?" H 11120 1696 50  0000 L CNN
F 1 "24K" H 11120 1605 50  0000 L CNN
F 2 "" V 10980 1650 50  0001 C CNN
F 3 "~" H 11050 1650 50  0001 C CNN
	1    11050 1650
	1    0    0    -1  
$EndComp
Text HLabel 11100 1850 2    50   Input ~ 0
OutSensor10
Wire Wire Line
	11050 1200 11050 1400
Wire Wire Line
	11050 1800 11050 1850
Wire Wire Line
	11050 1850 11100 1850
Connection ~ 11050 1850
Wire Wire Line
	11050 1850 11050 2000
Text Notes 10250 2900 0    50   ~ 0
I_max_desejado = 0,100mA\nI_max = (3.3V - 1V)/24k\nI_max = 0,096mA
Text Notes 10250 3200 0    50   ~ 0
Corrente no emissor max:\nI_max_emissor = (3.3V - 1.2V)/110\nI_max_emissor = 19,09mA
Wire Wire Line
	10450 1400 11050 1400
Connection ~ 11050 1400
Wire Wire Line
	11050 1400 11050 1500
Text HLabel 10350 2200 0    50   Input ~ 0
InMosfet
Text HLabel 10350 2400 0    50   Input ~ 0
OutMosfet
Wire Wire Line
	10350 2400 11050 2400
Wire Wire Line
	10350 2200 10450 2200
Text Notes 3450 6200 0    118  ~ 0
Circuito Medidor de Bateria
Text Notes 3050 700  0    118  ~ 0
Circuito Regulador de tensão 3.3V
Text Notes 7950 4750 0    118  ~ 0
Circuitos de proteção contra sobrecorrente
$Comp
L Device:Polyfuse F?
U 1 1 5EFCC7C6
P 5700 1550
F 0 "F?" H 5788 1596 50  0000 L CNN
F 1 "Fuse_ressetable_0.8A" H 5788 1505 50  0000 L CNN
F 2 "" H 5750 1350 50  0001 L CNN
F 3 "~" H 5700 1550 50  0001 C CNN
	1    5700 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5EFCD17D
P 10150 5250
F 0 "F?" V 9953 5250 50  0000 C CNN
F 1 "Fuse_1.8A" V 10044 5250 50  0000 C CNN
F 2 "" V 10080 5250 50  0001 C CNN
F 3 "~" H 10150 5250 50  0001 C CNN
	1    10150 5250
	0    1    1    0   
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5EFCDADE
P 10150 5950
F 0 "F?" V 10250 5950 50  0000 C CNN
F 1 "Fuse_1.8A" V 10050 5950 50  0000 C CNN
F 2 "" V 10080 5950 50  0001 C CNN
F 3 "~" H 10150 5950 50  0001 C CNN
	1    10150 5950
	0    1    1    0   
$EndComp
Text HLabel 9850 5250 0    50   Input ~ 0
OutPonteHMotor11
Text HLabel 9850 5950 0    50   Input ~ 0
OutPonteHMotor21
$Comp
L Motor:Motor_DC M?
U 1 1 5EFD5B6B
P 10650 6150
F 0 "M?" H 10808 6146 50  0000 L CNN
F 1 "Motor_DC" H 10808 6055 50  0000 L CNN
F 2 "" H 10650 6060 50  0001 C CNN
F 3 "~" H 10650 6060 50  0001 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_DC M?
U 1 1 5EFD63AC
P 10650 5450
F 0 "M?" H 10808 5446 50  0000 L CNN
F 1 "Motor_DC" H 10808 5355 50  0000 L CNN
F 2 "" H 10650 5360 50  0001 C CNN
F 3 "~" H 10650 5360 50  0001 C CNN
	1    10650 5450
	1    0    0    -1  
$EndComp
Text HLabel 9850 5750 0    50   Input ~ 0
OutPonteHMotor12
Text HLabel 9850 6450 0    50   Input ~ 0
OutPonteHMotor22
Wire Wire Line
	9850 5950 10000 5950
Wire Wire Line
	9850 5750 10350 5750
Wire Wire Line
	10000 5250 9850 5250
Text Notes 9600 4950 0    50   ~ 0
Dos motores
Wire Wire Line
	5700 1250 5700 1400
$Comp
L power:+3.3V #PWR?
U 1 1 5F022C19
P 5700 1900
F 0 "#PWR?" H 5700 1750 50  0001 C CNN
F 1 "+3.3V" H 5715 2073 50  0000 C CNN
F 2 "" H 5700 1900 50  0001 C CNN
F 3 "" H 5700 1900 50  0001 C CNN
	1    5700 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5700 1700 5700 1900
$Comp
L Device:C C?
U 1 1 5F02B931
P 10350 6200
F 0 "C?" H 10200 6300 50  0000 L CNN
F 1 "C" H 10200 6100 50  0000 L CNN
F 2 "" H 10388 6050 50  0001 C CNN
F 3 "~" H 10350 6200 50  0001 C CNN
	1    10350 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5950 10350 5950
Wire Wire Line
	9850 6450 10350 6450
Wire Wire Line
	10350 6350 10350 6450
Connection ~ 10350 6450
Wire Wire Line
	10350 6450 10650 6450
Wire Wire Line
	10350 6050 10350 5950
Connection ~ 10350 5950
Wire Wire Line
	10350 5950 10650 5950
Connection ~ 10350 5750
Wire Wire Line
	10350 5750 10650 5750
Connection ~ 10350 5250
Wire Wire Line
	10350 5250 10300 5250
Wire Wire Line
	10350 5250 10650 5250
Text Notes 7150 800  0    47   ~ 0
Circuito dos sensores
$Comp
L Device:LED D?
U 1 1 5F07E2B2
P 7600 1300
F 0 "D?" V 7639 1183 50  0000 R CNN
F 1 "LED" V 7548 1183 50  0000 R CNN
F 2 "" H 7600 1300 50  0001 C CNN
F 3 "~" H 7600 1300 50  0001 C CNN
	1    7600 1300
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F07E2BF
P 7600 1650
F 0 "R?" H 7670 1696 50  0000 L CNN
F 1 "390" H 7650 1600 50  0000 L CNN
F 2 "" V 7530 1650 50  0001 C CNN
F 3 "~" H 7600 1650 50  0001 C CNN
	1    7600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F09FFC1
P 7550 1050
F 0 "#PWR?" H 7550 900 50  0001 C CNN
F 1 "+3.3V" V 7565 1178 50  0000 L CNN
F 2 "" H 7550 1050 50  0001 C CNN
F 3 "" H 7550 1050 50  0001 C CNN
	1    7550 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 1050 7600 1050
Wire Wire Line
	7600 1050 7600 1150
Wire Wire Line
	7600 1450 7600 1500
Wire Wire Line
	7600 1850 7600 1800
Wire Wire Line
	7400 1850 7600 1850
Text HLabel 7400 1850 0    50   Input ~ 0
InMosfet
Wire Wire Line
	7400 2000 7600 2000
Wire Wire Line
	7600 2000 7600 2150
$Comp
L power:GND #PWR?
U 1 1 5F0C4CA9
P 7500 2150
F 0 "#PWR?" H 7500 1900 50  0001 C CNN
F 1 "GND" V 7505 2022 50  0000 R CNN
F 2 "" H 7500 2150 50  0001 C CNN
F 3 "" H 7500 2150 50  0001 C CNN
	1    7500 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7500 2150 7600 2150
Text Notes 900  1000 0    118  ~ 0
Circuito Ponte H
Text HLabel 2200 2100 2    50   Input ~ 0
OutPonteHMotor11
Text HLabel 2200 2800 2    50   Input ~ 0
OutPonteHMotor21
Text HLabel 2200 2300 2    50   Input ~ 0
OutPonteHMotor12
Text HLabel 2200 2600 2    50   Input ~ 0
OutPonteHMotor22
$Comp
L power:GND #PWR?
U 1 1 5F19E9CC
P 1200 3600
F 0 "#PWR?" H 1200 3350 50  0001 C CNN
F 1 "GND" V 1205 3472 50  0000 R CNN
F 2 "" H 1200 3600 50  0001 C CNN
F 3 "" H 1200 3600 50  0001 C CNN
	1    1200 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3500 1300 3600
Wire Wire Line
	1300 3600 1200 3600
Wire Wire Line
	1300 3600 1700 3600
Wire Wire Line
	1700 3600 1700 3500
Connection ~ 1300 3600
Wire Wire Line
	1700 3600 1900 3600
Wire Wire Line
	1900 3600 1900 3500
Connection ~ 1700 3600
$Comp
L Driver_Motor:TB6612FNG U?
U 1 1 5F193F73
P 1600 2500
F 0 "U?" H 1600 1411 50  0000 C CNN
F 1 "TB6612FNG" H 1600 1320 50  0000 C CNN
F 2 "Package_SO:SSOP-24_5.3x8.2mm_P0.65mm" H 2900 1600 50  0001 C CNN
F 3 "https://toshiba.semicon-storage.com/us/product/linear/motordriver/detail.TB6612FNG.html" H 2050 3100 50  0001 C CNN
	1    1600 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1450 1300 1450
Wire Wire Line
	1300 1450 1300 1500
Text HLabel 1000 2300 0    50   Input ~ 0
Motor1PWM
Text HLabel 1000 2400 0    50   Input ~ 0
Motor2PWM
Text HLabel 1000 2600 0    50   Input ~ 0
Motor1Dir1
Text HLabel 1000 2700 0    50   Input ~ 0
Motor1Dir2
Text HLabel 1000 2800 0    50   Input ~ 0
Motor2Dir1
Text HLabel 1000 2900 0    50   Input ~ 0
Motor2Dir2
Text HLabel 2000 1450 2    50   Input ~ 0
Vbat
Wire Wire Line
	1700 1500 1700 1450
Wire Wire Line
	1700 1450 1800 1450
Wire Wire Line
	1800 1500 1800 1450
Connection ~ 1800 1450
Wire Wire Line
	1800 1450 1900 1450
Wire Wire Line
	1900 1450 1900 1500
Connection ~ 1900 1450
Wire Wire Line
	1900 1450 2000 1450
Text Notes 3250 3200 0    118  ~ 0
Circuito do buzzer
Text Notes 3800 3300 0    47   ~ 0
Circuito de teste
$Comp
L power:GND #PWR?
U 1 1 5F3CC151
P 3900 4750
F 0 "#PWR?" H 3900 4500 50  0001 C CNN
F 1 "GND" V 3905 4622 50  0000 R CNN
F 2 "" H 3900 4750 50  0001 C CNN
F 3 "" H 3900 4750 50  0001 C CNN
	1    3900 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F3CC157
P 4300 4100
F 0 "R?" H 4370 4146 50  0000 L CNN
F 1 "160" H 4350 4050 50  0000 L CNN
F 2 "" V 4230 4100 50  0001 C CNN
F 3 "~" H 4300 4100 50  0001 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
Text Notes 3800 3400 0    47   ~ 0
Circuito do robô
$Comp
L Device:Buzzer BZ?
U 1 1 5F3E10D5
P 4400 3800
F 0 "BZ?" H 4552 3829 50  0000 L CNN
F 1 "Buzzer" H 4552 3738 50  0000 L CNN
F 2 "" V 4375 3900 50  0001 C CNN
F 3 "~" V 4375 3900 50  0001 C CNN
	1    4400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_DGS Q?
U 1 1 5F3E245B
P 4200 4500
F 0 "Q?" H 4405 4546 50  0000 L CNN
F 1 "Q_PMOS_DGS" H 4405 4455 50  0000 L CNN
F 2 "" H 4400 4600 50  0001 C CNN
F 3 "~" H 4200 4500 50  0001 C CNN
	1    4200 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4750 4300 4750
Wire Wire Line
	4300 4750 4300 4700
Wire Wire Line
	4300 4300 4300 4250
Wire Wire Line
	4300 3900 4300 3950
$Comp
L power:+3.3V #PWR?
U 1 1 5F424F3D
P 3900 3700
F 0 "#PWR?" H 3900 3550 50  0001 C CNN
F 1 "+3.3V" V 3915 3828 50  0000 L CNN
F 2 "" H 3900 3700 50  0001 C CNN
F 3 "" H 3900 3700 50  0001 C CNN
	1    3900 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 3700 4300 3700
Text HLabel 4000 4500 0    50   Input ~ 0
SinalModuladoSom
$Comp
L Device:LED D?
U 1 1 5ECEC949
P 1850 6600
F 0 "D?" V 1889 6483 50  0000 R CNN
F 1 "LED" V 1798 6483 50  0000 R CNN
F 2 "" H 1850 6600 50  0001 C CNN
F 3 "~" H 1850 6600 50  0001 C CNN
	1    1850 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1850 6350 1850 6450
Wire Wire Line
	1850 6750 1850 6900
Wire Wire Line
	1850 7200 1850 7250
$Comp
L Device:R R?
U 1 1 5ED0E28C
P 1850 7050
F 0 "R?" H 1920 7096 50  0000 L CNN
F 1 "220Ω" H 1900 7000 50  0000 L CNN
F 2 "" V 1780 7050 50  0001 C CNN
F 3 "~" H 1850 7050 50  0001 C CNN
	1    1850 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 7200 1500 7250
Wire Wire Line
	1500 6900 1500 6750
Wire Wire Line
	1500 6350 1500 6450
$Comp
L Device:R R?
U 1 1 5ECEFB62
P 1500 7050
F 0 "R?" H 1570 7096 50  0000 L CNN
F 1 "220Ω" H 1550 7000 50  0000 L CNN
F 2 "" V 1430 7050 50  0001 C CNN
F 3 "~" H 1500 7050 50  0001 C CNN
	1    1500 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5ECEBBFF
P 1500 6600
F 0 "D?" V 1539 6483 50  0000 R CNN
F 1 "LED" V 1448 6483 50  0000 R CNN
F 2 "" H 1500 6600 50  0001 C CNN
F 3 "~" H 1500 6600 50  0001 C CNN
	1    1500 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 6350 1850 6350
Connection ~ 1500 6350
Wire Wire Line
	900  6350 1150 6350
$Comp
L Device:LED D?
U 1 1 5F5A91E8
P 1150 6600
F 0 "D?" V 1189 6483 50  0000 R CNN
F 1 "LED" V 1098 6483 50  0000 R CNN
F 2 "" H 1150 6600 50  0001 C CNN
F 3 "~" H 1150 6600 50  0001 C CNN
	1    1150 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1150 6350 1150 6450
Wire Wire Line
	1150 6900 1150 6750
Wire Wire Line
	1150 7200 1150 7250
$Comp
L Device:R R?
U 1 1 5F5A91F7
P 1150 7050
F 0 "R?" H 1220 7096 50  0000 L CNN
F 1 "220Ω" H 1200 7000 50  0000 L CNN
F 2 "" V 1080 7050 50  0001 C CNN
F 3 "~" H 1150 7050 50  0001 C CNN
	1    1150 7050
	1    0    0    -1  
$EndComp
Connection ~ 1150 6350
Wire Wire Line
	1150 6350 1500 6350
Text HLabel 950  2050 1    50   Input ~ 0
Enable
Text HLabel 7400 2000 0    50   Input ~ 0
OutMosfet
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 5EEEBFBD
P 4900 1250
F 0 "U?" H 4900 1492 50  0000 C CNN
F 1 "AMS1117-3.3" H 4900 1401 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4900 1450 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5000 1000 50  0001 C CNN
	1    4900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 1250 5350 1250
$Comp
L Device:R R?
U 1 1 5EEFA901
P 5350 1450
F 0 "R?" H 5420 1496 50  0000 L CNN
F 1 "3K9" H 5420 1405 50  0000 L CNN
F 2 "" V 5280 1450 50  0001 C CNN
F 3 "~" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EEFC485
P 5350 1750
F 0 "R?" H 5420 1796 50  0000 L CNN
F 1 "2K4" H 5420 1705 50  0000 L CNN
F 2 "" V 5280 1750 50  0001 C CNN
F 3 "~" H 5350 1750 50  0001 C CNN
	1    5350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 1550 4900 1600
Wire Wire Line
	4900 1600 5350 1600
Connection ~ 5350 1600
Wire Wire Line
	5350 1300 5350 1250
Connection ~ 5350 1250
$Comp
L Device:C C?
U 1 1 5EF5E020
P 4600 7050
F 0 "C?" H 4400 7100 50  0000 L CNN
F 1 "0.1uF" H 4350 6950 50  0000 L CNN
F 2 "" H 4638 6900 50  0001 C CNN
F 3 "~" H 4600 7050 50  0001 C CNN
	1    4600 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 6500 4800 6600
Wire Wire Line
	4800 6900 4600 6900
Text HLabel 4450 6900 0    50   Input ~ 0
OutNivelBateria
Wire Wire Line
	4450 6900 4600 6900
Connection ~ 4600 6900
Text Notes 3850 7650 0    50   ~ 0
Para \nVbateria = 8.2V até 8.35V\nVmedbat = 2.466V a 2.510V\nVref desejado (interno do esp32) = 1,070V
Text Notes 4450 6350 0    47   ~ 0
Circuito do robô
Wire Wire Line
	4600 7200 4700 7200
$Comp
L Device:R R?
U 1 1 5EFC1F6C
P 4800 7050
F 0 "R?" H 4870 7096 50  0000 L CNN
F 1 "43K" H 4870 7005 50  0000 L CNN
F 2 "" V 4730 7050 50  0001 C CNN
F 3 "~" H 4800 7050 50  0001 C CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5EFC2534
P 4800 6750
F 0 "R?" H 4870 6796 50  0000 L CNN
F 1 "100K" H 4870 6705 50  0000 L CNN
F 2 "" V 4730 6750 50  0001 C CNN
F 3 "~" H 4800 6750 50  0001 C CNN
	1    4800 6750
	1    0    0    -1  
$EndComp
Connection ~ 4800 6900
$Comp
L Device:R R?
U 1 1 5ED39BA0
P 4000 1850
F 0 "R?" H 4070 1896 50  0000 L CNN
F 1 "2K2Ω" H 4050 1800 50  0000 L CNN
F 2 "" V 3930 1850 50  0001 C CNN
F 3 "~" H 4000 1850 50  0001 C CNN
	1    4000 1850
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F77A359
P 1200 1450
F 0 "#PWR?" H 1200 1300 50  0001 C CNN
F 1 "+3.3V" V 1215 1578 50  0000 L CNN
F 2 "" H 1200 1450 50  0001 C CNN
F 3 "" H 1200 1450 50  0001 C CNN
	1    1200 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 2100 950  2100
Text Notes 8750 950  0    50   ~ 0
Sensor Esquerdo 
$Comp
L Sensor_Proximity:ITR8307 U?
U 1 1 5F485225
P 9050 2100
F 0 "U?" H 9050 2417 50  0000 C CNN
F 1 "ITR8307" H 9050 2326 50  0000 C CNN
F 2 "OptoDevice:Everlight_ITR8307" H 9050 1900 50  0001 C CNN
F 3 "http://www.everlight.com/file/ProductFile/ITR8307.pdf" H 9050 2200 50  0001 C CNN
	1    9050 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F48522B
P 9100 1200
F 0 "#PWR?" H 9100 1050 50  0001 C CNN
F 1 "+3.3V" V 9200 1050 50  0000 L CNN
F 2 "" H 9100 1200 50  0001 C CNN
F 3 "" H 9100 1200 50  0001 C CNN
	1    9100 1200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5F485231
P 8750 1650
F 0 "R?" H 8820 1696 50  0000 L CNN
F 1 "110" H 8820 1605 50  0000 L CNN
F 2 "" V 8680 1650 50  0001 C CNN
F 3 "~" H 8750 1650 50  0001 C CNN
	1    8750 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1400 8750 1500
Wire Wire Line
	9100 1200 9350 1200
Wire Wire Line
	8750 1800 8750 2000
$Comp
L power:GND #PWR?
U 1 1 5F48523A
P 9100 2550
F 0 "#PWR?" H 9100 2300 50  0001 C CNN
F 1 "GND" V 9105 2422 50  0000 R CNN
F 2 "" H 9100 2550 50  0001 C CNN
F 3 "" H 9100 2550 50  0001 C CNN
	1    9100 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	9350 2400 9350 2550
Connection ~ 9350 2400
Wire Wire Line
	9100 2550 9350 2550
Wire Wire Line
	9350 2200 9350 2400
$Comp
L Device:R R?
U 1 1 5F485244
P 9350 1650
F 0 "R?" H 9420 1696 50  0000 L CNN
F 1 "24K" H 9420 1605 50  0000 L CNN
F 2 "" V 9280 1650 50  0001 C CNN
F 3 "~" H 9350 1650 50  0001 C CNN
	1    9350 1650
	1    0    0    -1  
$EndComp
Text HLabel 9400 1850 2    50   Input ~ 0
OutSensor9
Wire Wire Line
	9350 1200 9350 1400
Wire Wire Line
	9350 1800 9350 1850
Wire Wire Line
	9350 1850 9400 1850
Connection ~ 9350 1850
Wire Wire Line
	9350 1850 9350 2000
Text Notes 8550 2900 0    50   ~ 0
I_max_desejado = 0,100mA\nI_max = (3.3V - 1V)/24k\nI_max = 0,096mA
Text Notes 8550 3200 0    50   ~ 0
Corrente no emissor max:\nI_max_emissor = (3.3V - 1.2V)/110\nI_max_emissor = 19,09mA
Wire Wire Line
	8750 1400 9350 1400
Connection ~ 9350 1400
Wire Wire Line
	9350 1400 9350 1500
Text HLabel 8650 2200 0    50   Input ~ 0
InMosfet
Text HLabel 8650 2400 0    50   Input ~ 0
OutMosfet
Wire Wire Line
	8650 2400 9350 2400
Wire Wire Line
	8650 2200 8750 2200
Wire Wire Line
	4850 6500 4800 6500
Text HLabel 4850 6500 2    50   Input ~ 0
Vbat
$Comp
L power:GND #PWR?
U 1 1 5F4A9790
P 4700 7300
F 0 "#PWR?" H 4700 7050 50  0001 C CNN
F 1 "GND" V 4705 7172 50  0000 R CNN
F 2 "" H 4700 7300 50  0001 C CNN
F 3 "" H 4700 7300 50  0001 C CNN
	1    4700 7300
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 7300 4700 7200
Connection ~ 4700 7200
Wire Wire Line
	4700 7200 4800 7200
Wire Wire Line
	2200 7200 2200 7250
Wire Wire Line
	2200 6900 2200 6750
Wire Wire Line
	2200 6350 2200 6450
$Comp
L Device:R R?
U 1 1 5F4B2BD8
P 2200 7050
F 0 "R?" H 2270 7096 50  0000 L CNN
F 1 "220Ω" H 2250 7000 50  0000 L CNN
F 2 "" V 2130 7050 50  0001 C CNN
F 3 "~" H 2200 7050 50  0001 C CNN
	1    2200 7050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F4B2BDE
P 2200 6600
F 0 "D?" V 2239 6483 50  0000 R CNN
F 1 "LED" V 2148 6483 50  0000 R CNN
F 2 "" H 2200 6600 50  0001 C CNN
F 3 "~" H 2200 6600 50  0001 C CNN
	1    2200 6600
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5F4B90AB
P 2550 6600
F 0 "D?" V 2589 6483 50  0000 R CNN
F 1 "LED" V 2498 6483 50  0000 R CNN
F 2 "" H 2550 6600 50  0001 C CNN
F 3 "~" H 2550 6600 50  0001 C CNN
	1    2550 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 6750 2550 6900
Wire Wire Line
	2550 7200 2550 7250
$Comp
L Device:R R?
U 1 1 5F4B90B9
P 2550 7050
F 0 "R?" H 2620 7096 50  0000 L CNN
F 1 "220Ω" H 2600 7000 50  0000 L CNN
F 2 "" V 2480 7050 50  0001 C CNN
F 3 "~" H 2550 7050 50  0001 C CNN
	1    2550 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6350 2550 6450
Text HLabel 9550 3800 0    50   Input ~ 0
OutSensor1
Text HLabel 9550 3900 0    50   Input ~ 0
OutSensor2
Text HLabel 9550 4000 0    50   Input ~ 0
OutSensor3
Text HLabel 9550 4100 0    50   Input ~ 0
OutSensor4
Text HLabel 10050 4000 2    50   Input ~ 0
OutSensor5
Text HLabel 10050 3900 2    50   Input ~ 0
OutSensor6
Text HLabel 10050 3800 2    50   Input ~ 0
OutSensor7
Text HLabel 10050 3700 2    50   Input ~ 0
OutSensor8
$Comp
L power:GND #PWR?
U 1 1 5F5F881A
P 6650 5750
F 0 "#PWR?" H 6650 5500 50  0001 C CNN
F 1 "GND" V 6655 5622 50  0000 R CNN
F 2 "" H 6650 5750 50  0001 C CNN
F 3 "" H 6650 5750 50  0001 C CNN
	1    6650 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5ED19B28
P 4000 1450
F 0 "D?" V 4039 1333 50  0000 R CNN
F 1 "LED" V 3948 1333 50  0000 R CNN
F 2 "" H 4000 1450 50  0001 C CNN
F 3 "~" H 4000 1450 50  0001 C CNN
	1    4000 1450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3150 1250 3300 1250
Wire Wire Line
	3900 1250 4000 1250
$Comp
L power:GND #PWR?
U 1 1 5EEED4D0
P 4800 2000
F 0 "#PWR?" H 4800 1750 50  0001 C CNN
F 1 "GND" V 4805 1872 50  0000 R CNN
F 2 "" H 4800 2000 50  0001 C CNN
F 3 "" H 4800 2000 50  0001 C CNN
	1    4800 2000
	1    0    0    -1  
$EndComp
Text HLabel 3150 1250 1    50   Input ~ 0
Vbat
$Comp
L Switch:SW_DIP_x01 SW?
U 1 1 5F70B9BB
P 3600 1250
F 0 "SW?" V 3554 1380 50  0000 L CNN
F 1 "SW_DIP_x01" V 3645 1380 50  0000 L CNN
F 2 "" H 3600 1250 50  0001 C CNN
F 3 "~" H 3600 1250 50  0001 C CNN
	1    3600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1250 5700 1250
$Comp
L Device:CP1 C?
U 1 1 5EF34EC9
P 4400 1600
F 0 "C?" H 4515 1646 50  0000 L CNN
F 1 ">20uF" H 4515 1555 50  0000 L CNN
F 2 "" H 4400 1600 50  0001 C CNN
F 3 "~" H 4400 1600 50  0001 C CNN
	1    4400 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2000 5350 2000
Wire Wire Line
	5350 2000 5350 1900
Wire Wire Line
	4800 2000 4400 2000
Wire Wire Line
	4400 2000 4400 1750
Connection ~ 4800 2000
Wire Wire Line
	4400 1450 4400 1250
Connection ~ 4400 1250
Wire Wire Line
	4400 1250 4600 1250
Wire Wire Line
	4000 1700 4000 1600
Wire Wire Line
	4000 1300 4000 1250
Connection ~ 4000 1250
Wire Wire Line
	4000 1250 4400 1250
Wire Wire Line
	4400 2000 4000 2000
Connection ~ 4400 2000
$Comp
L power:+3.3V #PWR?
U 1 1 5F50E29C
P 900 6350
F 0 "#PWR?" H 900 6200 50  0001 C CNN
F 1 "+3.3V" H 915 6523 50  0000 C CNN
F 2 "" H 900 6350 50  0001 C CNN
F 3 "" H 900 6350 50  0001 C CNN
	1    900  6350
	-1   0    0    1   
$EndComp
$Comp
L RF_Module:ESP32-WROOM-32 U?
U 1 1 5F56AAAC
P 6650 4350
F 0 "U?" H 6650 6150 50  0000 C CNN
F 1 "ESP32-WROOM-32" H 6650 6050 50  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 6650 2850 50  0001 C CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 6350 4400 50  0001 C CNN
	1    6650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F541FD5
P 6650 2950
F 0 "#PWR?" H 6650 2800 50  0001 C CNN
F 1 "+3.3V" H 6665 3123 50  0000 C CNN
F 2 "" H 6650 2950 50  0001 C CNN
F 3 "" H 6650 2950 50  0001 C CNN
	1    6650 2950
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J?
U 1 1 5F4C110C
P 9750 3900
F 0 "J?" H 9800 4317 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 9800 4226 50  0000 C CNN
F 2 "" H 9750 3900 50  0001 C CNN
F 3 "~" H 9750 3900 50  0001 C CNN
	1    9750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6350 2200 6350
Connection ~ 1850 6350
Wire Wire Line
	2200 6350 2550 6350
Connection ~ 2200 6350
Text HLabel 1850 7250 3    50   Input ~ 0
PortaDigital3
Text HLabel 2200 7250 3    50   Input ~ 0
PortaDigital4
Text HLabel 2550 7250 3    50   Input ~ 0
PortaDigital5
$Comp
L power:GND #PWR?
U 1 1 5F57B1AE
P 10050 4100
F 0 "#PWR?" H 10050 3850 50  0001 C CNN
F 1 "GND" V 10055 3972 50  0000 R CNN
F 2 "" H 10050 4100 50  0001 C CNN
F 3 "" H 10050 4100 50  0001 C CNN
	1    10050 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5F57C4C9
P 9550 3700
F 0 "#PWR?" H 9550 3550 50  0001 C CNN
F 1 "+3.3V" V 9550 3800 50  0000 L CNN
F 2 "" H 9550 3700 50  0001 C CNN
F 3 "" H 9550 3700 50  0001 C CNN
	1    9550 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	950  2150 950  2100
Wire Wire Line
	950  2100 950  2050
Connection ~ 950  2100
$Comp
L power:GND #PWR?
U 1 1 5F574261
P 650 2150
F 0 "#PWR?" H 650 1900 50  0001 C CNN
F 1 "GND" V 655 2022 50  0000 R CNN
F 2 "" H 650 2150 50  0001 C CNN
F 3 "" H 650 2150 50  0001 C CNN
	1    650  2150
	0    1    1    0   
$EndComp
Text HLabel 1500 7250 3    50   Input ~ 0
PortaDigital2
Text HLabel 1150 7250 3    50   Input ~ 0
PortaDigital1
Wire Wire Line
	10350 5350 10350 5250
Wire Wire Line
	10350 5750 10350 5650
$Comp
L Device:C C?
U 1 1 5F02A3CB
P 10350 5500
F 0 "C?" H 10200 5600 50  0000 L CNN
F 1 "C" H 10200 5400 50  0000 L CNN
F 2 "" H 10388 5350 50  0001 C CNN
F 3 "~" H 10350 5500 50  0001 C CNN
	1    10350 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5F55E191
P 800 2150
F 0 "R?" V 1007 2150 50  0000 C CNN
F 1 "R" V 916 2150 50  0000 C CNN
F 2 "" V 730 2150 50  0001 C CNN
F 3 "~" H 800 2150 50  0001 C CNN
	1    800  2150
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
