
rule Trojan_BAT_Seraph_AAPI_MTB{
	meta:
		description = "Trojan:BAT/Seraph.AAPI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {11 00 72 01 00 00 70 28 90 01 01 00 00 06 72 33 00 00 70 28 90 01 01 00 00 06 28 90 01 01 00 00 06 13 01 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}