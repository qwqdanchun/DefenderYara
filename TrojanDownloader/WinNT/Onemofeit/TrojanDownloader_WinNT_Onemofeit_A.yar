
rule TrojanDownloader_WinNT_Onemofeit_A{
	meta:
		description = "TrojanDownloader:WinNT/Onemofeit.A,SIGNATURE_TYPE_JAVAHSTR_EXT,0e 00 0e 00 08 00 00 0c 00 "
		
	strings :
		$a_01_0 = {3a 2f 2f 32 33 2e 38 38 2e 31 31 33 2e 31 38 2f 4d 6f 6e 64 61 79 } //02 00 
		$a_01_1 = {63 68 61 6d 61 33 32 2e 6a 70 65 67 } //02 00 
		$a_01_2 = {70 72 69 6e 63 69 70 61 6c 33 32 2e 6a 70 65 67 } //02 00 
		$a_01_3 = {70 67 2e 6a 70 65 67 } //02 00 
		$a_01_4 = {63 68 61 6d 61 36 34 2e 6a 70 65 67 } //02 00 
		$a_01_5 = {70 72 69 6e 63 69 70 61 6c 36 34 2e 6a 70 65 67 } //01 00 
		$a_01_6 = {33 32 2e 6a 70 65 67 } //01 00 
		$a_01_7 = {36 34 2e 6a 70 65 67 } //00 00 
	condition:
		any of ($a_*)
 
}