
rule TrojanDownloader_BAT_AsyncRAT_AO_MTB{
	meta:
		description = "TrojanDownloader:BAT/AsyncRAT.AO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {01 25 16 72 90 01 02 00 70 a2 25 17 72 90 01 02 00 70 a2 25 18 72 90 01 02 00 70 a2 25 19 72 90 01 02 00 70 a2 25 1a 72 90 01 02 00 70 a2 25 1b 72 90 01 02 00 70 a2 25 1c 72 90 01 02 00 70 a2 25 1d 72 90 00 } //02 00 
		$a_03_1 = {8e 69 17 da 17 d6 8d 90 01 01 00 00 01 13 90 01 01 11 90 01 01 8e 69 17 da 90 00 } //02 00 
		$a_03_2 = {01 25 16 11 90 01 01 a2 25 13 90 01 01 14 14 17 8d 90 01 01 00 00 01 25 16 17 9c 25 13 90 01 01 28 90 01 01 00 00 0a 11 90 01 01 16 91 2d 02 2b 0b 11 90 01 01 16 9a 28 90 01 01 00 00 0a 13 90 01 01 14 72 90 01 02 00 70 16 8d 90 01 01 00 00 01 14 14 14 28 90 01 01 00 00 0a 17 8d 90 01 01 00 00 01 25 16 1f 16 8c 90 01 01 00 00 01 a2 14 28 90 01 01 00 00 0a 14 72 90 01 02 00 70 16 8d 90 01 01 00 00 01 14 14 14 28 90 01 01 00 00 0a 17 8d 90 01 01 00 00 01 25 16 16 8c 90 01 01 00 00 01 a2 14 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}