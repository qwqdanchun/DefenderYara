
rule Worm_Win32_Xtrat_G{
	meta:
		description = "Worm:Win32/Xtrat.G,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 6e 69 74 43 72 79 70 74 53 74 72 69 6e 67 00 } //01 00 
		$a_01_1 = {54 53 65 72 76 65 72 4b 65 79 6c 6f 67 67 65 72 00 } //01 00 
		$a_01_2 = {32 46 75 6e 63 74 69 6f 6e 73 00 } //01 00 
		$a_01_3 = {55 6e 69 74 43 6f 6e 66 69 67 73 00 } //01 00 
		$a_01_4 = {58 00 54 00 52 00 45 00 4d 00 45 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 e3 
	condition:
		any of ($a_*)
 
}