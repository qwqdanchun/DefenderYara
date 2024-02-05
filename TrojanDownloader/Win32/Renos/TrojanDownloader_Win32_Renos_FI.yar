
rule TrojanDownloader_Win32_Renos_FI{
	meta:
		description = "TrojanDownloader:Win32/Renos.FI,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b f8 8b f1 2b f9 8a 0e 80 f1 90 01 01 88 0c 37 74 90 01 01 90 02 03 46 90 02 03 75 90 00 } //01 00 
		$a_01_1 = {b8 68 58 4d 56 66 ba 58 56 ed 81 fb 68 58 4d 56 0f 94 c0 } //01 00 
		$a_00_2 = {43 72 66 31 55 7a 48 37 70 79 } //01 00 
		$a_00_3 = {53 6e 6d 70 55 74 69 6c 4f 69 64 43 70 79 00 } //01 00 
		$a_00_4 = {75 75 07 75 7a 60 6a 6c 29 00 } //00 00 
	condition:
		any of ($a_*)
 
}