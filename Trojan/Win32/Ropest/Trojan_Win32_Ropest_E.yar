
rule Trojan_Win32_Ropest_E{
	meta:
		description = "Trojan:Win32/Ropest.E,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 c0 51 2d 9e cc c1 c0 0f 69 c0 93 35 87 1b } //01 00 
		$a_01_1 = {41 53 54 45 52 4f 50 45 5f 43 4c 49 43 4b 45 52 5f 4d 55 54 45 58 00 } //01 00 
		$a_00_2 = {68 74 74 70 3a 2f 2f 77 77 77 2e 6c 69 76 65 6a 6f 75 72 6e 61 6c 2e 63 6f 6d 2f 73 65 61 72 63 68 2f 3f 68 6f 77 3d 74 6d 26 61 72 65 61 3d 64 65 66 61 75 6c 74 26 71 3d 25 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Ropest_E_2{
	meta:
		description = "Trojan:Win32/Ropest.E,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 06 00 00 64 00 "
		
	strings :
		$a_01_0 = {41 00 53 00 54 00 45 00 52 00 4f 00 50 00 45 00 5f 00 43 00 4c 00 49 00 43 00 4b 00 45 00 52 00 5f 00 4d 00 55 00 54 00 45 00 58 00 } //64 00 
		$a_01_1 = {41 00 53 00 54 00 45 00 52 00 4f 00 50 00 45 00 5f 00 41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 5f 00 4d 00 55 00 54 00 45 00 58 00 } //64 00 
		$a_01_2 = {41 53 54 45 52 4f 50 45 5f 50 52 4f 54 45 43 54 45 44 5f 53 54 4f 52 41 47 45 5f 4b 45 59 } //0a 00 
		$a_41_3 = {19 88 18 88 11 0f b6 00 0f b6 ca 03 c8 81 e1 ff 00 00 00 0a } //00 1a 
		$a_03_4 = {ca 0f b6 c1 8a 4c 04 90 01 01 32 0c 1f 88 0b 49 03 de 4d 2b de 75 c3 90 00 01 00 0f 41 69 c0 51 2d 9e cc c1 c0 0f 69 c0 93 35 87 1b 00 00 0b 00 87 10 00 00 12 da 65 b5 55 d6 29 9f 7e 3a 6b 20 bf 8c 00 } //00 5d 
	condition:
		any of ($a_*)
 
}