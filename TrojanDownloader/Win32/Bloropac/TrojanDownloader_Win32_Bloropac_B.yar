
rule TrojanDownloader_Win32_Bloropac_B{
	meta:
		description = "TrojanDownloader:Win32/Bloropac.B,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {74 6f 3d 6e 65 77 70 68 61 72 6d 73 62 40 67 6d 61 69 6c 2e 63 6f 6d } //01 00 
		$a_01_1 = {64 6f 77 62 6c 65 6f 6f 72 2e 64 61 74 } //01 00 
		$a_01_2 = {73 75 62 6a 65 63 74 3d 5b 2b 5d 5b 31 5d 5b 54 5d 5b 4f 5d 5b 4e 5d 5b 54 5d 5b 4f 5d 2d } //01 00 
		$a_01_3 = {6d 65 73 73 61 67 65 3d 69 6e 66 65 63 74 61 64 6f } //01 00 
		$a_01_4 = {43 3a 5c 42 6f 6f 74 2e 65 78 65 } //01 00 
		$a_01_5 = {49 50 41 22 20 2f 64 20 43 3a 5c 44 6f 6e 67 6c 65 2e 65 78 65 } //01 00 
		$a_01_6 = {6c 61 74 61 62 6c 65 64 65 73 64 6f 6d 62 65 73 2e 63 6f 6d 2f 70 6c 75 67 69 6e 73 } //01 00 
		$a_01_7 = {63 6f 6e 74 61 64 6f 72 2f 67 68 2e 70 68 70 } //02 00 
		$a_01_8 = {31 38 37 2e 33 33 2e 32 2e 31 34 2f 61 6c 63 61 6c 69 6e 61 2e 64 61 74 } //00 00 
	condition:
		any of ($a_*)
 
}