
rule Trojan_BAT_LokiBot_CXIS_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CXIS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 05 09 5d 13 08 11 05 09 5b 13 09 08 11 08 11 09 6f 90 01 04 13 0a 07 12 0a 28 90 01 04 6f 90 01 04 00 11 05 17 58 13 05 00 11 05 09 11 04 5a fe 04 13 0b 11 0b 2d c4 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}