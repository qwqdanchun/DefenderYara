
rule TrojanDownloader_Win32_Cutwail_BV{
	meta:
		description = "TrojanDownloader:Win32/Cutwail.BV,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {33 c9 66 8b 4e 06 81 c6 f8 00 00 00 8b 90 02 05 03 5e 0c 8b 45 08 03 46 14 ff 76 10 50 53 e8 90 00 } //01 00 
		$a_03_1 = {33 c0 b9 30 00 00 00 f3 aa c7 90 02 05 30 00 00 00 c7 90 02 05 03 00 00 00 c7 90 02 09 c7 90 02 05 00 00 00 00 c7 90 02 05 00 00 00 00 ff 35 90 01 04 8f 90 00 } //01 00 
		$a_03_2 = {6a 00 ff 75 08 6a 00 6a 00 68 00 00 00 80 68 00 00 00 80 68 00 00 00 80 68 00 00 00 80 68 00 00 cf 00 68 90 02 09 68 90 00 } //01 00 
		$a_01_3 = {8b 7d fc 8b 77 24 03 75 f4 03 75 08 33 c0 66 8b 06 c1 e0 02 8b 75 fc 8b 76 1c 03 75 08 03 f0 8b 06 03 45 08 89 44 24 1c 61 c9 } //00 00 
	condition:
		any of ($a_*)
 
}