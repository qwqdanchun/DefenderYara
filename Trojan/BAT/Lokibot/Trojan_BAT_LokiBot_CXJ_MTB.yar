
rule Trojan_BAT_LokiBot_CXJ_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CXJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {06 72 bc 07 00 70 6f 90 01 04 74 90 01 04 0c 08 28 90 01 04 00 07 08 6f 90 01 04 00 07 06 72 90 01 04 6f 90 01 04 74 90 01 04 6f 90 01 04 00 07 06 72 90 01 04 6f 90 01 04 74 90 01 04 6f 90 01 04 00 07 6f 90 01 04 28 90 01 04 0d 09 6f 90 01 04 17 9a 6f 86 00 00 0a 17 9a 13 04 11 04 16 8c 90 01 04 7e 90 01 04 13 05 11 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}