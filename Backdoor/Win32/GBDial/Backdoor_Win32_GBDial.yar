
rule Backdoor_Win32_GBDial{
	meta:
		description = "Backdoor:Win32/GBDial,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 10 00 00 0a 00 "
		
	strings :
		$a_01_0 = {52 61 73 44 69 61 6c } //06 00  RasDial
		$a_01_1 = {6a 75 69 63 79 74 65 65 6e 70 6f 72 6e 2e 63 6f 6d } //01 00  juicyteenporn.com
		$a_01_2 = {40 6e 69 6e 6f 67 61 } //03 00  @ninoga
		$a_01_3 = {47 42 44 69 61 6c 65 72 } //03 00  GBDialer
		$a_01_4 = {47 42 44 49 41 4c 4c 45 52 31 } //03 00  GBDIALLER1
		$a_01_5 = {43 5a 44 49 41 4c 4c 45 52 } //02 00  CZDIALLER
		$a_01_6 = {73 75 70 70 6f 72 74 40 67 6c 6f 62 61 6c 2d 61 63 63 65 73 2e 63 6f 6d } //02 00  support@global-acces.com
		$a_01_7 = {4c 61 20 43 6f 72 74 69 6e 61 64 61 2c 20 41 44 33 30 30 20 4f 72 64 69 6e 6f 2c 20 41 6e 64 6f 72 72 61 20 50 68 6f 6e 65 3a 20 30 37 30 34 34 35 30 30 36 37 39 2c 20 46 61 78 3a 20 33 37 36 2d 38 34 39 31 30 33 } //02 00  La Cortinada, AD300 Ordino, Andorra Phone: 07044500679, Fax: 376-849103
		$a_01_8 = {70 72 65 6d 69 75 6d 2d 73 65 } //02 00  premium-se
		$a_01_9 = {5c 41 63 63 65 73 73 20 4d 65 6d 62 65 72 73 20 41 72 65 61 2e 65 78 65 } //02 00  \Access Members Area.exe
		$a_01_10 = {47 6c 6f 62 61 6c 20 41 63 63 65 73 } //01 00  Global Acces
		$a_01_11 = {41 44 55 4c 54 41 44 55 4c 54 } //01 00  ADULTADULT
		$a_01_12 = {49 73 44 65 62 75 67 67 65 72 50 72 65 73 65 6e 74 } //01 00  IsDebuggerPresent
		$a_01_13 = {59 4f 55 20 57 49 4c 4c 20 42 45 20 43 48 41 52 47 45 44 } //01 00  YOU WILL BE CHARGED
		$a_01_14 = {53 53 57 4f 52 44 50 41 53 53 57 4f 52 44 } //01 00  SSWORDPASSWORD
		$a_01_15 = {58 58 58 58 58 2d 31 } //00 00  XXXXX-1
	condition:
		any of ($a_*)
 
}