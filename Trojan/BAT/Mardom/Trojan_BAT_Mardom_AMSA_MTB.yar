
rule Trojan_BAT_Mardom_AMSA_MTB{
	meta:
		description = "Trojan:BAT/Mardom.AMSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {07 09 16 6f 90 01 01 00 00 0a 13 04 12 04 28 90 01 01 00 00 0a 13 05 08 11 05 6f 90 01 01 00 00 0a 09 17 58 0d 09 07 6f 90 01 01 00 00 0a 32 d8 08 6f 90 01 01 00 00 0a 13 06 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}