
rule Trojan_BAT_Seraph_SPAG_MTB{
	meta:
		description = "Trojan:BAT/Seraph.SPAG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {91 06 04 1f 16 5d 91 61 28 90 01 03 0a 03 04 17 58 03 8e 69 5d 91 28 90 01 03 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 0b 2b 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}