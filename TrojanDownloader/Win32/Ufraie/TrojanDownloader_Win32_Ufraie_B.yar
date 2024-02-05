
rule TrojanDownloader_Win32_Ufraie_B{
	meta:
		description = "TrojanDownloader:Win32/Ufraie.B,SIGNATURE_TYPE_PEHSTR_EXT,06 00 05 00 0b 00 00 04 00 "
		
	strings :
		$a_01_0 = {83 f8 04 75 19 81 7c 24 08 50 49 4e 47 75 0f 6a 00 6a 04 } //05 00 
		$a_03_1 = {6a 04 68 ff ff 00 00 56 e8 90 01 03 00 83 f8 ff 0f 84 90 01 02 00 00 68 74 27 00 00 66 c7 44 24 14 02 00 90 00 } //04 00 
		$a_03_2 = {3d 00 00 00 d0 77 07 3d 00 00 00 80 73 90 01 01 ff d6 2b 90 00 } //05 00 
		$a_01_3 = {32 d8 88 1c 08 8b 54 24 08 40 3b c2 72 ef 66 8b 01 66 3d 5a 4d 74 19 66 3d 4d 5a } //01 00 
		$a_01_4 = {75 6e 69 71 3d 25 64 } //01 00 
		$a_01_5 = {66 75 63 6b 3d 25 64 } //01 00 
		$a_01_6 = {72 61 73 3d 25 64 } //01 00 
		$a_01_7 = {61 76 3d 25 73 } //01 00 
		$a_01_8 = {77 69 6e 76 65 72 3d 25 64 7c 25 64 7c 25 64 7c 25 64 7c 25 64 7c 25 64 7c 25 73 } //01 00 
		$a_01_9 = {6b 72 5f 64 6f 6e 65 } //02 00 
		$a_01_10 = {69 64 74 3d 25 30 38 78 26 76 6d 64 65 76 3d 25 64 26 61 76 66 3d 25 64 } //00 00 
	condition:
		any of ($a_*)
 
}