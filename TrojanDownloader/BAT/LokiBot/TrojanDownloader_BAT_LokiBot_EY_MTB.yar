
rule TrojanDownloader_BAT_LokiBot_EY_MTB{
	meta:
		description = "TrojanDownloader:BAT/LokiBot.EY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {12 05 23 00 00 00 00 00 00 33 40 28 90 01 03 0a 13 04 2b 90 02 04 00 00 11 04 28 90 01 03 0a 90 00 } //01 00 
		$a_03_1 = {06 07 02 07 91 6f 90 01 03 0a 00 00 07 25 17 59 0b 16 fe 02 0c 08 2d e7 90 00 } //01 00 
		$a_03_2 = {2b b4 0a 2b b3 02 38 90 01 04 0b 2b b5 06 2b ba 07 2b b9 02 2b b8 07 2b b7 6f 90 01 03 0a 2b b3 90 00 } //01 00 
		$a_01_3 = {47 65 74 54 79 70 65 } //01 00 
		$a_01_4 = {57 65 62 43 6c 69 65 6e 74 } //00 00 
	condition:
		any of ($a_*)
 
}