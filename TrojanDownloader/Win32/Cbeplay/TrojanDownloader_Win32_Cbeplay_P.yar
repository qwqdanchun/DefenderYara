
rule TrojanDownloader_Win32_Cbeplay_P{
	meta:
		description = "TrojanDownloader:Win32/Cbeplay.P,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {32 54 0b 01 46 88 51 01 } //01 00 
		$a_03_1 = {74 69 8b 44 24 14 8d 54 24 0c 52 68 90 01 04 50 57 56 68 02 01 00 00 c7 44 24 24 00 00 00 00 90 00 } //01 00 
		$a_01_2 = {75 26 56 6a 00 6a 00 68 1a 80 00 00 6a 00 ff 15 } //01 00 
		$a_01_3 = {25 73 3f 75 69 64 3d 25 75 26 69 70 3d 25 73 26 6c 6f 63 61 74 69 6f 6e 3d 25 73 26 69 73 70 3d 25 73 00 } //01 00 
		$a_01_4 = {2f 71 20 2f 63 20 66 6f 72 20 2f 6c 20 25 25 69 20 69 6e 20 28 31 2c 31 2c 34 30 30 30 30 30 30 30 30 30 29 20 64 6f 20 69 66 20 6e 6f 74 20 65 78 69 73 74 20 22 25 73 22 20 28 65 78 69 74 29 } //01 00 
		$a_01_5 = {53 41 4d 50 4c 45 00 00 56 58 00 00 56 49 52 55 53 00 } //00 00 
	condition:
		any of ($a_*)
 
}