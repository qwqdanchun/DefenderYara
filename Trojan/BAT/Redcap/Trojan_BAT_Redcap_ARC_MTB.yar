
rule Trojan_BAT_Redcap_ARC_MTB{
	meta:
		description = "Trojan:BAT/Redcap.ARC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {16 0a 2b 17 03 06 8f 90 01 01 00 00 01 25 49 02 06 02 8e 69 5d 91 61 d1 53 06 17 58 0a 06 03 8e 69 32 e3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}