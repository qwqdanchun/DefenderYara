
rule Trojan_BAT_CrimsonRAT_MBAT_MTB{
	meta:
		description = "Trojan:BAT/CrimsonRAT.MBAT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {61 2b ca 11 06 11 05 08 6f 90 01 01 00 00 0a 13 07 09 73 90 01 01 00 00 0a 13 08 11 08 11 07 16 73 90 01 01 00 00 0a 13 09 09 8e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}