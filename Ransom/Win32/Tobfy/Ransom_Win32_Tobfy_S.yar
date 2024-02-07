
rule Ransom_Win32_Tobfy_S{
	meta:
		description = "Ransom:Win32/Tobfy.S,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 69 63 74 75 72 65 2e 70 68 70 3f 70 69 6e 3d } //01 00  picture.php?pin=
		$a_01_1 = {2f 68 63 79 62 6e 71 2f 76 7a 74 2e 77 63 74 } //01 00  /hcybnq/vzt.wct
		$a_01_2 = {67 6e 66 78 7a 74 65 2e 72 6b 72 } //01 00  gnfxzte.rkr
		$a_00_3 = {0f be 02 85 c0 74 62 8b 4d 08 0f be 11 83 fa 61 7c 26 8b 45 08 0f be 08 83 f9 7a 7f 1b 8b 55 08 0f be 02 83 e8 54 99 b9 1a 00 00 00 f7 f9 83 c2 61 8b 45 08 88 10 } //01 00 
		$a_00_4 = {8a 01 3c 61 7c 15 3c 7a 7f 11 0f be c0 83 e8 54 6a 1a 99 5f f7 ff 80 c2 61 eb 17 3c 41 7c 15 3c 5a 7f 11 0f be c0 83 e8 34 6a 1a 99 5f f7 ff 80 c2 41 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Ransom_Win32_Tobfy_S_2{
	meta:
		description = "Ransom:Win32/Tobfy.S,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 45 e0 00 10 00 00 6a 04 68 00 20 00 00 90 01 21 c6 45 90 01 01 52 c6 45 90 01 01 74 c6 45 90 01 01 70 c6 45 90 01 01 45 90 00 } //01 00 
		$a_03_1 = {8b 7e 20 8b 36 81 7f 0c 33 00 32 00 75 ef 89 55 fc 8b 90 03 01 01 45 4d fc 90 00 } //01 00 
		$a_03_2 = {68 20 00 cc 00 90 02 10 68 ee 02 00 00 90 02 0a e8 03 00 00 90 02 20 2d f4 01 00 00 90 00 } //01 00 
		$a_01_3 = {70 69 63 74 75 72 65 2e 70 68 70 3f 70 69 6e 3d 00 } //01 00 
		$a_01_4 = {67 65 74 75 6e 6c 6f 63 6b 2e 70 68 70 00 } //01 00 
		$a_01_5 = {25 73 5c 31 2e 62 6d 70 00 } //01 00 
		$a_01_6 = {25 73 5c 31 2e 6a 70 67 00 } //02 00 
		$a_01_7 = {74 72 67 68 61 79 62 70 78 2e 63 75 63 00 } //00 00 
		$a_00_8 = {7e 15 00 00 } //13 c1 
	condition:
		any of ($a_*)
 
}