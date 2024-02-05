
rule TrojanDownloader_Win32_Brucryp_A{
	meta:
		description = "TrojanDownloader:Win32/Brucryp.A,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {63 00 65 00 72 00 74 00 5f 00 76 00 25 00 64 00 5f 00 25 00 64 00 2e 00 74 00 70 00 6c 00 00 00 } //01 00 
		$a_01_1 = {53 74 61 72 74 69 6e 67 20 63 72 79 70 74 6f 20 73 65 72 76 69 63 65 2e 2e 2e 00 } //01 00 
		$a_01_2 = {25 49 36 34 64 00 } //01 00 
		$a_01_3 = {72 65 75 73 65 72 65 62 6f 6f 74 5f 25 64 5f 25 64 5f 25 64 00 } //01 00 
		$a_01_4 = {74 73 65 72 72 6f 72 5f 25 64 5f 25 64 00 } //01 00 
		$a_01_5 = {63 72 65 61 74 65 70 72 6f 63 61 5f 25 64 00 } //01 00 
		$a_03_6 = {42 6c 6f 62 30 31 90 02 02 00 90 02 10 42 6c 6f 62 30 31 90 02 02 00 90 00 } //01 00 
		$a_01_7 = {43 00 72 00 79 00 70 00 74 00 6f 00 55 00 70 00 64 00 61 00 74 00 65 00 00 00 } //01 00 
		$a_01_8 = {41 00 67 00 65 00 6e 00 74 00 55 00 70 00 64 00 61 00 74 00 65 00 00 00 } //01 00 
		$a_01_9 = {2e 00 69 00 6e 00 73 00 74 00 73 00 79 00 6e 00 63 00 2e 00 65 00 75 00 00 00 } //00 00 
		$a_00_10 = {7e 15 00 00 } //bb 18 
	condition:
		any of ($a_*)
 
}