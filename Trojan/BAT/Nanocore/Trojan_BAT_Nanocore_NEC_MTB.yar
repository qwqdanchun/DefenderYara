
rule Trojan_BAT_Nanocore_NEC_MTB{
	meta:
		description = "Trojan:BAT/Nanocore.NEC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {72 17 00 00 70 28 90 01 01 00 00 06 0b 07 16 07 8e 69 28 90 01 01 00 00 0a 00 07 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}