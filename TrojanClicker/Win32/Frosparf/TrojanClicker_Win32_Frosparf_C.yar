
rule TrojanClicker_Win32_Frosparf_C{
	meta:
		description = "TrojanClicker:Win32/Frosparf.C,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 } //1 Project1
		$a_01_1 = {42 00 4b 00 48 00 4e 00 } //1 BKHN
		$a_01_2 = {61 00 6e 00 74 00 69 00 2e 00 65 00 78 00 65 00 } //1 anti.exe
		$a_01_3 = {6c 00 69 00 6e 00 6b 00 62 00 75 00 63 00 6b 00 73 00 2e 00 } //1 linkbucks.
		$a_01_4 = {32 00 32 00 35 00 2c 00 32 00 32 00 34 00 2c 00 37 00 38 00 34 00 33 00 2c 00 32 00 32 00 37 00 2c 00 37 00 38 00 34 00 31 00 2c 00 32 00 35 00 39 00 2c 00 37 00 38 00 35 00 35 00 2c 00 37 00 38 00 35 00 37 00 } //1 225,224,7843,227,7841,259,7855,7857
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=5
 
}