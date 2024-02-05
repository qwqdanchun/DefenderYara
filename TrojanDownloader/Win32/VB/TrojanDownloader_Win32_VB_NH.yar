
rule TrojanDownloader_Win32_VB_NH{
	meta:
		description = "TrojanDownloader:Win32/VB.NH,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_00_0 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 53 00 68 00 65 00 6c 00 6c 00 20 00 46 00 6f 00 6c 00 64 00 65 00 72 00 73 00 } //01 00 
		$a_00_1 = {74 00 69 00 77 00 6c 00 62 00 6e 00 61 00 70 00 67 00 6a 00 73 00 70 00 34 00 71 00 79 00 7a 00 73 00 79 00 6c 00 6c 00 64 00 75 00 33 00 79 00 6c 00 76 00 34 00 72 00 6e 00 76 00 63 00 72 00 32 00 77 00 65 00 6a 00 64 00 65 00 72 00 34 00 70 00 79 00 39 00 72 00 76 00 6d 00 64 00 63 00 } //01 00 
		$a_00_2 = {5c 00 4d 00 73 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_3 = {54 75 70 64 61 74 65 } //01 00 
		$a_01_4 = {72 65 67 52 75 6e } //01 00 
		$a_00_5 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00 
	condition:
		any of ($a_*)
 
}