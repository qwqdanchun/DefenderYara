
rule Trojan_BAT_Heracles_PTFO_MTB{
	meta:
		description = "Trojan:BAT/Heracles.PTFO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {38 9c 00 00 00 2a 11 04 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 13 04 20 01 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}