
rule Trojan_BAT_SpySnake_MP_MTB{
	meta:
		description = "Trojan:BAT/SpySnake.MP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 03 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 11 06 06 11 06 9a 1f 10 28 90 01 03 0a 9c 11 06 17 58 13 06 11 06 06 8e 69 fe 04 13 07 11 07 2d de 90 00 } //05 00 
		$a_01_1 = {53 61 6c 75 74 65 46 6f 72 6d 5f 4d 6f 75 73 65 44 6f 77 6e } //05 00 
		$a_01_2 = {53 74 72 69 6e 67 46 6f 72 6d 61 74 45 78 2e 50 72 6f 70 65 72 74 69 65 73 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_SpySnake_MP_MTB_2{
	meta:
		description = "Trojan:BAT/SpySnake.MP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {08 09 11 04 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 00 07 06 28 90 01 03 06 d2 6f 90 01 03 0a 00 00 11 04 17 58 13 04 11 04 17 fe 04 13 05 11 05 2d c0 90 00 } //01 00 
		$a_01_1 = {31 30 37 37 37 66 64 34 2d 63 34 30 61 2d 34 64 33 65 2d 39 63 65 36 2d 62 64 38 65 38 31 33 39 65 32 35 34 } //01 00 
		$a_01_2 = {43 68 65 61 74 4d 65 6e 75 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00 
		$a_01_3 = {41 6c 6f 72 5f 32 32 } //01 00 
		$a_01_4 = {41 6c 6f 72 5f 32 38 } //00 00 
	condition:
		any of ($a_*)
 
}