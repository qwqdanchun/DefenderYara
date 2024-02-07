
rule Trojan_Win32_Killav_FS{
	meta:
		description = "Trojan:Win32/Killav.FS,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {38 32 45 34 32 35 30 32 45 36 } //01 00  82E42502E6
		$a_01_1 = {38 32 35 35 36 35 31 33 45 36 } //01 00  82556513E6
		$a_01_2 = {38 32 43 34 30 34 45 37 } //01 00  82C404E7
		$a_01_3 = {38 32 36 35 44 35 45 37 } //01 00  8265D5E7
		$a_01_4 = {38 32 41 34 44 35 30 33 37 33 45 35 } //01 00  82A4D50373E5
		$a_01_5 = {38 32 36 34 45 35 32 32 30 33 45 35 } //01 00  8264E52203E5
		$a_01_6 = {46 35 43 34 30 35 32 32 46 33 46 33 38 30 } //01 00  F5C40522F3F380
		$a_01_7 = {30 32 35 31 33 30 32 32 37 33 } //01 00  0251302273
		$a_01_8 = {41 35 45 36 39 37 33 31 45 31 41 32 34 33 42 42 44 42 } //01 00  A5E69731E1A243BBDB
		$a_01_9 = {46 34 41 36 45 37 36 30 46 30 41 32 45 33 39 43 33 43 45 32 39 37 37 30 41 } //00 00  F4A6E760F0A2E39C3CE29770A
	condition:
		any of ($a_*)
 
}