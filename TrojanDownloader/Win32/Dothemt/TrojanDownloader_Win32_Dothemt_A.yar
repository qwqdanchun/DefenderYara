
rule TrojanDownloader_Win32_Dothemt_A{
	meta:
		description = "TrojanDownloader:Win32/Dothemt.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4e 00 7b 00 64 00 3f 00 75 00 7e 00 67 00 3f 00 70 00 29 00 63 00 3f 00 74 00 3f 00 2e 00 40 00 75 00 3f 00 77 00 7c 00 75 00 3f 00 } //02 00 
		$a_01_1 = {69 00 28 00 73 00 3f 00 75 00 3f 00 6f 00 25 00 3a 00 3f 00 23 00 2b 00 23 00 3f 00 74 00 3c 00 75 00 3f 00 68 00 26 00 6d 00 3f 00 72 00 7d 00 2e 00 24 00 60 00 3f 00 74 00 2a 00 73 00 3f 00 73 00 7b 00 6e 00 3f 00 2d 00 7e 00 72 00 3f 00 6e 00 29 00 68 00 3f 00 75 00 3f 00 67 00 40 00 6e 00 3f 00 72 00 7c 00 69 00 3f 00 2e 00 3e 00 64 00 3f 00 6e 00 28 00 6e 00 3f 00 23 00 3f 00 74 00 25 00 73 00 3f 00 62 00 2b 00 73 00 3f 00 76 00 3c 00 72 00 3f 00 23 00 26 00 68 00 3f 00 6f 00 7d 00 63 00 24 00 66 00 3f 00 77 00 2a 00 2e 00 3f 00 6f 00 7b 00 69 00 3f 00 6f 00 7e 00 3f 00 3f 00 } //02 00 
		$a_01_2 = {69 00 7d 00 73 00 24 00 75 00 3f 00 6f 00 2a 00 3a 00 3f 00 23 00 7b 00 23 00 3f 00 68 00 7e 00 6f 00 3f 00 65 00 29 00 70 00 3f 00 2e 00 3f 00 73 00 40 00 60 00 3f 00 75 00 7c 00 74 00 3f 00 74 00 3e 00 67 00 3f 00 2d 00 28 00 75 00 3f 00 6a 00 3f 00 63 00 25 00 66 00 3f 00 6e 00 2b 00 74 00 3f 00 73 00 3c 00 23 00 3f 00 6c 00 26 00 6a 00 3f 00 72 00 7d 00 64 00 24 00 23 00 3f 00 74 00 2a 00 75 00 3f 00 64 00 7b 00 31 00 3f 00 2e 00 7e 00 63 00 3f 00 62 00 29 00 73 00 3f 00 } //01 00 
		$a_01_3 = {48 83 c8 fe 40 f7 d8 1a c0 24 fe fe c0 02 c3 88 04 3e eb 03 88 1c 3e 52 ff 75 f8 e8 } //01 00 
		$a_01_4 = {c7 45 f4 4e 74 64 6c c7 45 f8 6c 2e 64 6c 66 c7 45 fc 6c 00 } //01 00 
		$a_01_5 = {c7 45 e4 6d 61 74 69 c7 45 e8 6f 6e 50 72 c7 45 ec 6f 63 65 73 66 c7 45 f0 73 00 } //00 00 
		$a_00_6 = {5d 04 } //00 00 
	condition:
		any of ($a_*)
 
}