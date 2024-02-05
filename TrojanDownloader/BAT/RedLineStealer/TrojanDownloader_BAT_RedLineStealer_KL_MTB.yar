
rule TrojanDownloader_BAT_RedLineStealer_KL_MTB{
	meta:
		description = "TrojanDownloader:BAT/RedLineStealer.KL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 20 00 01 00 00 6f 90 01 01 00 00 0a 07 20 80 00 00 00 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 72 90 01 03 70 6f 90 01 01 00 00 0a 7e 90 01 01 00 00 04 20 e8 03 00 00 73 90 01 01 00 00 0a 0c 07 08 07 6f 90 01 01 00 00 0a 1e 5b 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 07 08 07 6f 90 01 01 00 00 0a 1e 5b 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 07 17 6f 90 01 01 00 00 0a 06 07 6f 90 01 01 00 00 0a 17 73 90 01 01 00 00 0a 0d 09 02 16 02 8e 69 6f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}