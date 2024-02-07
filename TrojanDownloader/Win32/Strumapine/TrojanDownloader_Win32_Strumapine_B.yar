
rule TrojanDownloader_Win32_Strumapine_B{
	meta:
		description = "TrojanDownloader:Win32/Strumapine.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {c6 44 24 16 75 c6 44 24 17 74 c6 44 24 18 65 c6 44 24 19 41 c6 44 24 1a 00 c6 44 24 08 6f c6 44 24 09 70 c6 44 24 0a 65 c6 44 24 0b 6e c6 44 24 0c 00 68 } //01 00 
		$a_01_1 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4a 00 61 00 76 00 61 00 53 00 65 00 74 00 75 00 70 00 } //01 00  Microsoft\JavaSetup
		$a_01_2 = {00 00 61 00 2e 00 68 00 6c 00 70 00 00 00 68 74 74 70 3a 2f 2f 77 69 6e 72 61 72 2e 66 72 65 65 64 6f 77 6e 6c 6f 61 64 2e 63 6e 74 2e 62 72 2f } //01 00 
		$a_01_3 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 50 00 69 00 6e 00 5f 00 00 00 } //00 00 
		$a_00_4 = {5d 04 00 } //00 ec 
	condition:
		any of ($a_*)
 
}