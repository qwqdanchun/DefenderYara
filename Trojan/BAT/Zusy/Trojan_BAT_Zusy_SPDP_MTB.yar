
rule Trojan_BAT_Zusy_SPDP_MTB{
	meta:
		description = "Trojan:BAT/Zusy.SPDP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {7e 03 00 00 04 6f 90 01 03 0a 05 0e 07 0e 04 8e 69 6f 90 01 03 0a 0a 06 0b 2b 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}