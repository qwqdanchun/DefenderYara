
rule Trojan_BAT_Spynoon_CEAA_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.CEAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {ff ff 11 00 11 00 28 90 01 01 00 00 06 11 00 28 90 01 01 00 00 06 28 90 01 01 00 00 06 13 06 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}