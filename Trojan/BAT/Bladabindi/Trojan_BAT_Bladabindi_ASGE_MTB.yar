
rule Trojan_BAT_Bladabindi_ASGE_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.ASGE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 17 11 17 2c 2e 11 06 11 0e 11 0d 17 28 90 01 01 00 00 0a 17 11 09 61 28 90 01 01 00 00 0a 28 90 00 } //01 00 
		$a_03_1 = {13 17 11 17 2c 2a 02 11 04 17 28 90 01 01 00 00 0a 13 0b 08 11 07 06 11 0b 28 90 01 01 00 00 0a 11 09 61 28 90 01 01 00 00 0a 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}