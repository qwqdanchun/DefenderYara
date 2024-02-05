
rule TrojanDownloader_BAT_RedLine_RDBH_MTB{
	meta:
		description = "TrojanDownloader:BAT/RedLine.RDBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {37 32 62 34 31 38 38 61 2d 31 38 33 33 2d 34 33 37 38 2d 39 32 66 61 2d 31 65 33 62 61 32 37 38 66 39 34 62 } //01 00 
		$a_01_1 = {53 65 63 75 72 69 74 79 48 65 61 6c 74 68 53 79 73 74 72 61 79 } //01 00 
		$a_01_2 = {55 70 64 61 74 65 72 20 4d 6f 64 75 6c 65 } //01 00 
		$a_01_3 = {4c 79 65 4d } //00 00 
	condition:
		any of ($a_*)
 
}