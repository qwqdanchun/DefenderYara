
rule TrojanClicker_Win32_Frosparf_E{
	meta:
		description = "TrojanClicker:Win32/Frosparf.E,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 62 6c 43 6c 69 63 6b } //02 00  DblClick
		$a_01_1 = {63 00 68 00 65 00 63 00 6b 00 73 00 65 00 76 00 65 00 72 00 2e 00 68 00 74 00 6d 00 6c 00 } //02 00  checksever.html
		$a_01_2 = {32 00 32 00 35 00 2c 00 32 00 32 00 34 00 2c 00 37 00 38 00 34 00 33 00 2c 00 32 00 32 00 37 00 2c 00 37 00 38 00 34 00 31 00 2c 00 32 00 35 00 39 00 2c 00 37 00 38 00 35 00 35 00 2c 00 37 00 38 00 35 00 37 00 } //01 00  225,224,7843,227,7841,259,7855,7857
		$a_01_3 = {45 00 31 00 2c 00 45 00 30 00 2c 00 31 00 45 00 41 00 33 00 2c 00 45 00 33 00 2c 00 31 00 45 00 41 00 31 00 2c 00 45 00 32 00 2c 00 31 00 30 00 33 00 2c 00 31 00 45 00 41 00 35 00 2c 00 31 00 45 00 41 00 37 00 2c 00 31 00 45 00 41 00 39 00 2c 00 31 00 45 00 41 00 42 00 2c 00 31 00 45 00 41 00 44 00 2c 00 31 00 45 00 41 00 46 00 2c 00 31 00 45 00 42 00 31 00 2c 00 31 00 45 00 42 00 33 00 2c 00 31 00 45 00 42 00 35 00 2c 00 31 00 45 00 42 00 37 00 2c 00 43 00 31 00 2c 00 43 00 30 00 } //02 00  E1,E0,1EA3,E3,1EA1,E2,103,1EA5,1EA7,1EA9,1EAB,1EAD,1EAF,1EB1,1EB3,1EB5,1EB7,C1,C0
		$a_01_4 = {43 00 52 00 4f 00 53 00 53 00 46 00 49 00 52 00 45 00 20 00 54 00 4f 00 4f 00 4c 00 } //00 00  CROSSFIRE TOOL
		$a_00_5 = {5d 04 00 00 } //57 3c 
	condition:
		any of ($a_*)
 
}