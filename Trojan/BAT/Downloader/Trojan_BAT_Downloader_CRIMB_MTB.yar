
rule Trojan_BAT_Downloader_CRIMB_MTB{
	meta:
		description = "Trojan:BAT/Downloader.CRIMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 0a 00 "
		
	strings :
		$a_03_0 = {14 0a 1e 8d 5b 00 00 01 25 d0 5a 00 00 04 28 90 01 03 0a 0b 73 9a 00 00 0a 0c 00 73 9b 00 00 0a 0d 00 09 20 00 01 00 00 6f 90 01 03 0a 00 09 20 80 00 00 00 6f 90 01 03 0a 00 28 9e 00 00 0a 72 15 0a 00 70 6f 90 01 03 0a 13 04 11 04 07 20 e8 03 00 00 73 a0 00 00 0a 13 05 09 11 05 09 6f 90 01 03 0a 1e 5b 6f a2 00 00 0a 6f 90 01 03 0a 00 09 11 05 09 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 00 09 17 6f 90 01 03 0a 00 08 09 6f 90 01 03 0a 17 73 a8 00 00 0a 13 06 00 11 06 03 16 03 8e 69 6f 90 01 03 0a 00 11 06 6f 90 01 03 0a 00 00 de 0d 11 06 2c 08 11 06 6f 90 01 03 0a 00 dc 08 6f 90 01 03 0a 0a 00 de 0b 09 2c 07 09 6f 90 01 03 0a 00 dc 00 de 0b 08 2c 07 08 6f 90 01 03 0a 00 dc 06 13 07 2b 00 11 07 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}