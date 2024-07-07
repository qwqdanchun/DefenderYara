
rule TrojanDownloader_BAT_RedLineStealer_KI_MTB{
	meta:
		description = "TrojanDownloader:BAT/RedLineStealer.KI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {07 07 9e 00 07 17 58 0b 07 20 90 0a 1e 00 11 90 01 01 07 02 07 02 6f 90 01 03 0a 5d 6f 90 01 03 0a 9e 11 90 00 } //1
		$a_03_1 = {07 94 58 20 90 01 03 00 5d 0c 11 90 01 01 07 94 13 90 01 01 11 90 01 01 07 11 90 01 01 08 94 9e 11 90 01 01 08 11 90 01 01 9e 90 01 01 07 17 58 0b 07 20 90 0a 2d 00 08 11 90 01 01 07 94 58 11 90 00 } //1
		$a_03_2 = {06 17 58 0a 06 20 90 01 03 00 5d 0a 08 11 90 01 01 06 94 58 0c 08 20 90 01 03 00 5d 0c 11 90 01 01 06 94 13 90 01 01 11 90 01 01 06 11 90 01 01 08 94 9e 11 90 01 01 08 11 90 01 01 9e 11 90 01 01 11 90 01 01 06 94 11 90 01 01 08 94 58 20 90 01 03 00 5d 94 0d 11 90 01 01 07 03 07 91 09 61 d2 9c 90 01 01 07 17 58 0b 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}