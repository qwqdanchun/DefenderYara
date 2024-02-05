
rule TrojanDownloader_BAT_Banload_AF{
	meta:
		description = "TrojanDownloader:BAT/Banload.AF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {13 0a 11 0a 16 1f 7c 9d 11 0a 6f } //01 00 
		$a_01_1 = {06 1f 29 16 28 } //01 00 
		$a_00_2 = {5b 00 5e 00 41 00 2d 00 5a 00 61 00 2d 00 7a 00 30 00 2d 00 39 00 5d 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_BAT_Banload_AF_2{
	meta:
		description = "TrojanDownloader:BAT/Banload.AF,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 e8 03 00 00 20 0f 27 00 00 6f } //01 00 
		$a_03_1 = {2b 07 1f 64 28 90 01 04 7e 90 01 04 6f 90 01 04 2d ed 90 00 } //01 00 
		$a_00_2 = {2e 00 65 00 78 00 65 00 3f 00 64 00 6c 00 3d 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}