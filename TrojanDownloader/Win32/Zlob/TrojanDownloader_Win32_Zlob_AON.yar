
rule TrojanDownloader_Win32_Zlob_AON{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AON,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 69 63 68 6c 65 6e 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 } //01 00 
		$a_00_1 = {44 33 35 38 2d 34 38 41 33 2d 41 35 43 37 } //01 00  D358-48A3-A5C7
		$a_01_2 = {62 65 65 67 72 6f 63 6b 73 2e 64 6c 6c 00 44 6c 6c 43 61 6e 55 6e 6c 6f 61 64 4e 6f 77 00 44 6c 6c 47 65 74 43 6c 61 73 73 4f 62 6a 65 63 74 } //0a 00 
		$a_01_3 = {74 15 8b 77 40 03 f0 eb 09 8b 1e 03 d8 01 03 83 c6 04 83 3e 00 75 f2 8b 74 24 24 8b de 03 f0 b9 01 00 00 00 33 c0 f0 0f b1 4f 30 75 f7 ac } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Zlob_AON_2{
	meta:
		description = "TrojanDownloader:Win32/Zlob.AON,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {62 65 65 67 72 6f 63 6b 73 2e 64 6c 6c } //01 00  beegrocks.dll
		$a_01_1 = {7b 00 36 00 34 00 34 00 36 00 36 00 42 00 38 00 45 00 2d 00 32 00 30 00 41 00 37 00 2d 00 34 00 41 00 34 00 41 00 2d 00 41 00 46 00 46 00 34 00 2d 00 41 00 41 00 44 00 39 00 43 00 41 00 36 00 38 00 42 00 35 00 32 00 43 00 7d 00 } //01 00  {64466B8E-20A7-4A4A-AFF4-AAD9CA68B52C}
		$a_01_2 = {53 74 61 00 61 6e 6b 00 75 74 3a 62 6c 00 00 00 61 62 6f 00 67 65 00 00 50 61 00 00 20 00 00 00 72 74 00 00 6c 6f 72 65 72 5c 4d 61 69 6e 00 00 6e 65 74 20 45 78 70 00 74 5c 49 6e 74 65 72 00 72 6f 73 6f 66 00 00 00 61 72 65 5c 4d 69 63 } //00 00 
	condition:
		any of ($a_*)
 
}