
rule TrojanDownloader_Win32_Tinub_A{
	meta:
		description = "TrojanDownloader:Win32/Tinub.A,SIGNATURE_TYPE_PEHSTR,08 00 08 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 00 63 00 61 00 63 00 6c 00 73 00 20 00 63 00 3a 00 5c 00 20 00 2f 00 65 00 20 00 2f 00 67 00 20 00 65 00 76 00 65 00 72 00 79 00 6f 00 6e 00 65 00 3a 00 66 00 } //01 00 
		$a_01_1 = {4f 00 70 00 65 00 6e 00 28 00 29 00 3a 00 2e 00 57 00 72 00 69 00 74 00 65 00 20 00 57 00 72 00 69 00 74 00 46 00 73 00 6f 00 28 00 27 00 6d 00 27 00 29 00 2e 00 47 00 65 00 74 00 43 00 68 00 75 00 6e 00 6b 00 28 00 53 00 74 00 72 00 4c 00 65 00 6e 00 29 00 3a 00 2e 00 53 00 61 00 76 00 65 00 54 00 6f 00 46 00 69 00 6c 00 65 00 } //01 00 
		$a_01_2 = {61 00 64 00 6d 00 69 00 6e 00 20 00 70 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_3 = {00 00 5c 00 70 00 69 00 67 00 00 00 } //01 00 
		$a_01_4 = {00 00 2e 00 74 00 6d 00 70 00 00 00 } //01 00 
		$a_01_5 = {00 00 2e 00 72 00 61 00 72 00 00 00 } //02 00 
		$a_01_6 = {54 00 69 00 6d 00 6e 00 75 00 62 00 } //02 00 
		$a_01_7 = {00 00 4f 00 75 00 74 00 49 00 50 00 71 00 31 00 30 00 30 00 00 00 } //02 00 
		$a_01_8 = {50 00 69 00 67 00 4b 00 32 00 31 00 } //00 00 
		$a_01_9 = {00 5d 04 00 00 } //26 2a 
	condition:
		any of ($a_*)
 
}