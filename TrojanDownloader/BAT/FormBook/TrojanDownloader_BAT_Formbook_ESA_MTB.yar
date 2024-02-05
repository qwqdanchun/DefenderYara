
rule TrojanDownloader_BAT_Formbook_ESA_MTB{
	meta:
		description = "TrojanDownloader:BAT/Formbook.ESA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {06 07 02 07 91 6f 90 01 03 0a 00 00 07 25 17 59 0b 16 fe 02 0c 08 2d e7 90 00 } //01 00 
		$a_03_1 = {0b 12 01 23 00 00 00 00 00 00 24 40 28 90 01 03 0a 0a 28 90 01 03 0a 0b 12 01 23 00 00 00 00 00 00 24 40 28 90 01 03 0a 0a 90 00 } //01 00 
		$a_01_2 = {47 65 74 54 79 70 65 } //01 00 
		$a_01_3 = {57 65 62 52 65 71 75 65 73 74 } //00 00 
	condition:
		any of ($a_*)
 
}