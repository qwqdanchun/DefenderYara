
rule Trojan_Win32_Glecia_gen_A{
	meta:
		description = "Trojan:Win32/Glecia.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 02 00 "
		
	strings :
		$a_01_0 = {c6 06 3f 46 c6 06 69 46 c6 06 64 46 c6 06 3d } //02 00 
		$a_01_1 = {80 38 99 75 1e 80 78 01 99 75 18 } //01 00 
		$a_01_2 = {88 01 41 42 8a 02 84 c0 75 c6 88 01 } //02 00 
		$a_01_3 = {8b 4c 24 10 8a 1c 16 03 cf 30 19 46 3b f0 7e 02 } //01 00 
		$a_03_4 = {c7 46 28 4e 00 00 00 ff d7 68 90 01 04 8d 46 40 50 c7 46 3c 4f 00 00 00 90 00 } //01 00 
		$a_01_5 = {80 38 53 75 71 89 45 f8 8d 45 fc 50 6a 40 } //02 00 
		$a_01_6 = {c6 03 26 8d 73 01 c6 06 63 46 c6 06 5b 46 c6 06 5d 46 c6 06 3d } //01 00 
		$a_01_7 = {26 75 5b 5d 3d 26 64 5b 5d 3d 26 70 5b 5d 3d 00 } //01 00 
		$a_01_8 = {26 63 5b 5d 3d 26 74 5b 5d 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}