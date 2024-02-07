
rule TrojanDownloader_Win32_Bredolab_gen_D{
	meta:
		description = "TrojanDownloader:Win32/Bredolab.gen!D,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 02 00 "
		
	strings :
		$a_03_0 = {8b 74 24 08 33 c0 85 f6 7e 90 01 01 8d 4c 24 08 83 c1 04 8a 11 80 f2 05 88 90 90 90 01 04 40 3b c6 7c ed 90 00 } //02 00 
		$a_03_1 = {57 6a 01 6a 1a 8d 85 90 01 02 ff ff 50 33 ff 57 ff 15 90 01 04 68 90 01 04 8d 85 90 01 02 ff ff 50 ff 15 90 01 04 57 57 6a 04 57 57 68 00 00 00 80 8d 85 90 01 02 ff ff 50 ff 15 90 00 } //01 00 
		$a_03_2 = {50 6a 01 6a 00 ff 15 90 01 04 8b d8 ff 15 90 01 04 3d b7 00 00 00 0f 85 90 01 02 ff ff 6a 01 ff 15 90 00 } //01 00 
		$a_03_3 = {83 c4 1c 50 6a 01 6a 00 ff d7 8b 1d 90 01 04 89 44 24 10 ff d3 bd b7 00 00 00 eb 90 00 } //01 00 
		$a_03_4 = {ff 75 08 56 56 ff 15 90 01 04 83 f8 20 0f 9f c0 eb 02 b0 01 5e 90 00 } //01 00 
		$a_01_5 = {61 6e 74 69 6b 6c 75 73 00 } //01 00 
		$a_01_6 = {2f 64 62 67 34 2e 70 68 70 3f 00 } //01 00 
		$a_01_7 = {45 6e 74 69 74 79 2d 49 6e 66 6f 00 } //00 00  湅楴祴䤭普o
	condition:
		any of ($a_*)
 
}