
rule Trojan_BAT_Seraph_AVAA_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AVAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {06 17 58 0a 06 1b 32 f8 03 75 90 01 01 00 00 1b 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 28 90 01 01 00 00 0a 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}