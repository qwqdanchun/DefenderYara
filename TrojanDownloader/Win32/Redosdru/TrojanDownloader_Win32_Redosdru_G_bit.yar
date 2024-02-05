
rule TrojanDownloader_Win32_Redosdru_G_bit{
	meta:
		description = "TrojanDownloader:Win32/Redosdru.G!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 c6 44 24 90 01 01 53 c6 44 24 90 01 01 53 c6 44 24 90 01 01 53 c6 44 24 90 01 01 53 c6 44 24 90 01 01 53 c6 44 24 90 01 01 56 c6 44 24 90 01 01 49 c6 44 24 90 01 01 44 90 00 } //01 00 
		$a_03_1 = {44 c6 44 24 90 01 01 6c c6 44 24 90 01 01 6c c6 44 24 90 01 01 46 c6 44 24 90 01 01 75 c6 44 24 90 01 01 55 c6 44 24 90 01 01 70 c6 44 24 90 01 01 67 c6 44 24 90 01 01 72 c6 44 24 90 01 01 61 c6 44 24 90 01 01 64 90 00 } //01 00 
		$a_01_2 = {8b 44 24 08 8d 49 00 8a 08 32 ca 02 ca 88 08 40 83 ee 01 75 f2 } //01 00 
		$a_03_3 = {2f c6 44 24 90 01 01 34 c6 44 24 90 01 01 2e c6 44 24 90 01 01 30 c6 44 24 90 01 01 20 c6 44 24 90 01 01 28 c6 44 24 90 01 01 63 c6 44 24 90 01 01 6f c6 44 24 90 01 01 6d c6 44 24 90 01 01 70 90 00 } //01 00 
		$a_03_4 = {83 c4 08 3b c3 75 39 68 90 01 02 40 00 ff 15 90 01 02 40 00 68 90 01 02 40 00 68 90 01 02 40 00 e8 90 01 02 ff ff 83 c4 08 85 c0 74 08 c7 44 24 10 14 00 00 00 8b 4c 24 10 51 ff 15 90 01 02 40 00 e9 90 01 02 ff ff 68 90 01 02 40 00 ff d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}