
rule Trojan_BAT_Spynoon_ASAU_MTB{
	meta:
		description = "Trojan:BAT/Spynoon.ASAU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {13 05 11 04 8e 69 17 da 13 09 16 13 0a 2b 1d 11 05 11 0a 11 04 11 0a 9a 1f 10 28 90 01 01 00 00 0a 86 6f 90 01 01 00 00 0a 00 11 0a 17 d6 13 0a 11 0a 11 09 31 dd 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}