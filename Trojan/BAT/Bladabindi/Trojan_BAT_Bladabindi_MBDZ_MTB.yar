
rule Trojan_BAT_Bladabindi_MBDZ_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.MBDZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 18 da 6b 28 90 01 01 00 00 0a 5a 28 90 01 01 00 00 0a 22 90 01 03 3f 58 6b 6c 28 90 01 01 00 00 0a b7 13 05 11 04 06 11 05 6f 90 01 01 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 13 04 11 06 17 d6 13 06 11 06 11 07 31 ba 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}