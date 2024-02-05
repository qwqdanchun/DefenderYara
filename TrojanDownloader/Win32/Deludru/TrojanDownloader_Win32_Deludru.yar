
rule TrojanDownloader_Win32_Deludru{
	meta:
		description = "TrojanDownloader:Win32/Deludru,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {75 0d 8b 6c 24 18 25 ff 0f 00 00 03 c7 01 28 8b 41 04 46 83 e8 08 83 c2 02 d1 e8 3b f0 72 } //01 00 
		$a_01_1 = {00 64 6c 6c 5f 6c 6f 61 64 2e 64 6c 6c 00 53 74 61 72 74 00 } //01 00 
		$a_01_2 = {4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e 5c 4e 6f 74 69 66 79 5c 25 73 00 } //01 00 
		$a_03_3 = {00 44 6c 6c 57 69 6e 90 02 04 54 68 65 20 57 69 6e 64 6f 77 00 90 00 } //01 00 
		$a_01_4 = {00 4d 79 53 74 61 72 74 00 } //01 00 
		$a_01_5 = {00 4e 7a 50 77 62 71 77 00 } //00 00 
	condition:
		any of ($a_*)
 
}