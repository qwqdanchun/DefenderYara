
rule Trojan_BAT_Seraph_AAYV_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAYV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {16 0a 2b 1c 11 04 06 08 06 91 20 b4 74 14 a6 28 90 01 01 00 00 06 28 90 01 01 00 00 0a 59 d2 9c 06 17 58 0a 06 08 8e 69 32 de 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}