
rule Trojan_BAT_Seraph_SPBP_MTB{
	meta:
		description = "Trojan:BAT/Seraph.SPBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {0b 06 07 28 90 01 03 2b 28 90 01 03 2b 16 07 8e 69 6f 90 01 03 0a de 03 26 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}