
rule TrojanDownloader_BAT_Banload_AH{
	meta:
		description = "TrojanDownloader:BAT/Banload.AH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 0a 00 "
		
	strings :
		$a_03_0 = {72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 7a 00 78 00 54 00 6f 00 72 00 72 00 65 00 6e 00 74 00 90 01 06 2e 00 65 00 78 00 65 00 90 00 } //0a 00 
		$a_03_1 = {72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 46 00 6c 00 61 00 73 00 68 00 50 00 6c 00 61 00 79 00 90 01 06 2e 00 65 00 78 00 65 00 90 00 } //0a 00 
		$a_03_2 = {72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 4d 00 65 00 64 00 69 00 61 00 58 00 90 01 02 5c 00 90 00 } //0a 00 
		$a_03_3 = {72 00 75 00 6e 00 61 00 73 00 90 01 02 5c 00 41 00 64 00 6f 00 62 00 65 00 50 00 6c 00 61 00 79 00 90 01 02 5c 00 90 00 } //0a 00 
		$a_03_4 = {45 00 6e 00 61 00 62 00 6c 00 65 00 4c 00 55 00 41 00 90 01 06 5c 00 41 00 64 00 6f 00 62 00 65 00 50 00 6c 00 61 00 79 00 90 01 02 5c 00 90 01 02 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_5 = {5a 49 50 49 4e 46 4f 4f 50 54 } //01 00  ZIPINFOOPT
		$a_03_6 = {4c 00 61 00 62 00 65 00 6c 00 32 00 90 01 02 68 00 74 00 74 00 70 00 90 02 01 3a 00 2f 00 2f 00 90 00 } //01 00 
		$a_01_7 = {49 73 55 73 65 72 41 64 6d 69 6e 69 73 74 72 61 74 6f 72 } //00 00  IsUserAdministrator
	condition:
		any of ($a_*)
 
}