
rule Trojan_BAT_Heracles_PSSL_MTB{
	meta:
		description = "Trojan:BAT/Heracles.PSSL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {00 00 06 12 04 6f 90 01 01 00 00 0a 26 06 17 58 0a 06 28 90 01 01 00 00 06 6f 90 01 01 00 00 0a fe 04 0d 09 2d de 08 28 90 01 01 00 00 0a 80 02 00 00 04 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}