
rule TrojanDownloader_Win32_Renos_HO{
	meta:
		description = "TrojanDownloader:Win32/Renos.HO,SIGNATURE_TYPE_PEHSTR_EXT,04 00 03 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 c6 44 24 0c 25 c6 44 24 0f 78 c6 44 24 0d 30 c6 44 24 10 00 c6 44 24 0e 38 ff 15 } //01 00 
		$a_01_1 = {66 ba 58 56 ed 89 5d e4 5b c7 45 fc ff ff ff ff 33 c0 81 7d e4 68 58 4d 56 0f 94 c0 } //01 00 
		$a_03_2 = {99 b9 00 50 00 00 f7 f9 52 ff 15 90 01 04 83 c4 0c 8d 54 24 08 68 90 01 04 52 ff 15 90 00 } //01 00 
		$a_01_3 = {33 c0 88 45 e4 89 45 fc 53 bb 00 00 00 00 b8 01 00 00 00 0f 3f 07 } //01 00 
		$a_01_4 = {6a 0c 51 68 00 14 2d 00 56 ff 15 } //01 00 
		$a_03_5 = {33 c0 b1 20 8a 90 90 90 01 04 8a 98 90 01 04 02 d1 02 d9 88 90 90 90 01 04 88 98 90 01 04 40 3d ff 00 00 00 7c dc 90 00 } //01 00 
		$a_00_6 = {77 67 65 74 20 33 2e 30 00 } //00 00 
	condition:
		any of ($a_*)
 
}