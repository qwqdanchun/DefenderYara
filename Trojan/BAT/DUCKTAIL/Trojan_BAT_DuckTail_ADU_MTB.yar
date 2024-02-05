
rule Trojan_BAT_DuckTail_ADU_MTB{
	meta:
		description = "Trojan:BAT/DuckTail.ADU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 04 16 13 05 38 90 01 01 00 00 00 11 04 11 05 9a 28 90 01 01 00 00 0a 13 06 11 06 72 90 01 01 01 00 70 6f 90 01 01 00 00 0a 2d 0e 11 06 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_DuckTail_ADU_MTB_2{
	meta:
		description = "Trojan:BAT/DuckTail.ADU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {0d 2b 42 07 08 28 90 01 03 2b 1f 10 28 90 01 03 2b 28 90 01 03 2b 13 04 07 08 1f 10 58 28 90 01 03 2b 1f 10 28 90 01 03 2b 28 90 01 03 2b 13 05 11 04 11 05 73 1d 00 00 06 09 6f 90 01 03 06 0d 08 1f 20 59 0c 08 16 2f ba 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}