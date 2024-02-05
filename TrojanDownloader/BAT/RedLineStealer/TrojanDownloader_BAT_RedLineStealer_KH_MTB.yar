
rule TrojanDownloader_BAT_RedLineStealer_KH_MTB{
	meta:
		description = "TrojanDownloader:BAT/RedLineStealer.KH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {10 61 65 20 f0 a7 2a 21 58 20 90 01 03 d9 61 59 25 fe 90 01 02 00 20 90 01 03 b4 20 90 01 03 11 58 20 90 01 03 17 61 20 90 01 03 f1 58 20 90 01 03 e3 61 20 90 01 03 d8 58 20 90 01 03 11 58 20 90 01 03 11 61 3c 90 01 03 ff 90 0a 8d 00 fe 90 01 02 00 93 20 90 01 03 e0 20 90 01 03 e6 58 20 90 01 03 e5 61 20 90 01 03 23 59 61 fe 90 01 02 00 61 d1 9d fe 90 01 02 00 20 90 01 03 1a 20 90 01 03 11 58 20 90 01 03 fb 61 65 20 90 01 03 27 58 20 90 00 } //01 00 
		$a_03_1 = {10 58 65 20 90 01 03 04 59 65 9d 6f 90 01 03 0a fe 90 01 02 00 38 90 0a 67 00 28 90 01 03 0a fe 90 01 02 00 6f 90 01 03 0a 20 90 01 03 ff 20 90 01 03 00 58 20 90 01 03 00 62 20 90 01 03 00 63 8d 90 01 03 01 25 20 90 01 03 03 65 20 90 01 03 fc 59 20 90 01 03 00 63 20 90 01 03 00 62 20 90 01 03 eb 65 66 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}