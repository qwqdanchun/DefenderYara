
rule Trojan_BAT_Rhadamanthus_ARD_MTB{
	meta:
		description = "Trojan:BAT/Rhadamanthus.ARD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 05 17 13 06 38 90 01 03 00 11 05 09 11 06 a3 07 00 00 01 6f 90 01 03 0a 11 06 17 58 13 06 11 06 09 8e 69 32 e4 06 11 04 11 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}