
rule Trojan_Win32_Salgorea_B_dha{
	meta:
		description = "Trojan:Win32/Salgorea.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 45 f0 80 4f 12 00 6a 20 6a 00 8d 45 c8 50 e8 90 01 04 83 c4 0c c7 45 cc 00 00 00 00 c7 45 d0 01 00 00 00 c7 45 d4 06 00 00 00 90 00 } //01 00 
		$a_01_1 = {8b 42 74 89 01 8b 4d e8 83 79 34 00 0f 82 a9 01 00 00 8b 55 e8 81 7a 34 00 80 84 1e } //01 00 
		$a_01_2 = {81 bd dc fe ff ff 72 b5 07 00 0f 84 36 05 00 00 81 bd dc fe ff ff c5 57 05 00 } //01 00 
		$a_01_3 = {81 bd dc fe ff ff 2a 59 0b 00 0f 84 8b 00 00 00 81 bd dc fe ff ff 37 82 0b 00 } //01 00 
		$a_01_4 = {38 00 32 00 36 00 33 00 30 00 34 00 31 00 31 00 65 00 35 00 64 00 66 00 30 00 65 00 30 00 63 00 00 00 00 00 4b 00 65 00 72 00 6e 00 00 00 00 00 65 00 6c 00 33 00 32 00 } //01 00 
		$a_01_5 = {7b 00 35 00 35 00 46 00 31 00 35 00 34 00 43 00 30 00 2d 00 43 00 44 00 41 00 46 00 2d 00 34 00 35 00 43 00 34 00 2d 00 39 00 41 00 31 00 41 00 2d 00 00 00 38 00 35 00 32 00 46 00 46 00 35 00 31 00 46 00 39 00 35 00 31 00 45 00 00 00 00 00 7d 00 } //00 00 
		$a_00_6 = {5d 04 00 00 } //2b 69 
	condition:
		any of ($a_*)
 
}