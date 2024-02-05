
rule Trojan_Win32_Tibs_gen_H{
	meta:
		description = "Trojan:Win32/Tibs.gen!H,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 07 c1 c0 07 0f af c0 69 c0 44 33 22 11 c1 c8 0f 69 c0 11 33 22 44 c1 c8 05 0f af c0 69 c0 13 13 00 00 ae e2 da } //01 00 
		$a_03_1 = {ff e0 8b d8 81 eb 90 01 04 8d bb 90 01 04 b9 90 01 01 00 00 00 81 37 90 01 04 af e2 f7 e8 90 01 01 00 00 00 90 00 } //01 00 
		$a_03_2 = {75 06 ff 80 b8 00 00 00 33 c0 c2 10 00 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 cc 64 8f 05 00 00 00 00 5f 8b 3c 24 b9 90 01 04 81 90 00 } //01 00 
		$a_03_3 = {76 24 ff 80 b8 00 00 00 eb 1c 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 33 c0 89 00 64 8f 05 00 00 00 00 5f eb 06 61 33 c0 c2 10 00 8b 3c 24 b9 90 01 04 81 90 00 } //01 00 
		$a_03_4 = {8d 7c 39 21 30 07 90 02 01 fe 07 90 02 01 c1 c0 03 90 02 02 ae 90 02 01 e2 90 01 01 5f 4a 75 90 00 } //01 00 
		$a_03_5 = {8d 7c 39 2c 30 07 90 02 01 fe 07 90 02 01 c1 c0 03 90 02 02 ae 90 02 01 e2 90 01 01 5f 4a 75 90 00 } //01 00 
		$a_03_6 = {8d 7c 39 25 30 07 90 02 01 fe 07 90 02 01 c1 c0 03 90 02 02 ae 90 02 01 e2 90 01 01 5f 4a 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}