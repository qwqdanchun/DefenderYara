
rule Trojan_BAT_DarkComet_AATM_MTB{
	meta:
		description = "Trojan:BAT/DarkComet.AATM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {16 13 0f 09 17 d6 20 00 01 00 00 5d 0d 11 05 11 09 09 94 d6 20 00 01 00 00 5d 13 05 11 09 09 94 13 0f 11 09 09 11 09 11 05 94 9e 11 09 11 05 11 0f 9e 11 09 11 09 09 94 11 09 11 05 94 d6 20 00 01 00 00 5d 94 13 10 02 06 17 da 17 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 16 93 13 0e 11 0e 28 90 01 01 00 00 0a 13 0f 11 0f 11 10 61 13 0d 08 11 0d 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 26 12 00 28 90 01 01 00 00 0a 06 17 da 28 90 01 01 00 00 0a 26 00 06 02 6f 90 01 01 00 00 0a fe 02 16 fe 01 13 11 11 11 90 00 } //4
		$a_01_1 = {68 00 34 00 63 00 6b 00 33 00 72 00 53 00 68 00 6f 00 74 00 4b 00 33 00 59 00 } //1 h4ck3rShotK3Y
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}