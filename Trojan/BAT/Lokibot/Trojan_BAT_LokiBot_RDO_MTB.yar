
rule Trojan_BAT_LokiBot_RDO_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.RDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_01_0 = {91 61 28 94 00 00 0a 07 11 05 17 58 07 8e 69 5d 91 } //00 00 
	condition:
		any of ($a_*)
 
}