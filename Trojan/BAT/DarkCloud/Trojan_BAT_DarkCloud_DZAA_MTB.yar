
rule Trojan_BAT_DarkCloud_DZAA_MTB{
	meta:
		description = "Trojan:BAT/DarkCloud.DZAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {0a 25 26 0a 06 28 90 01 01 00 00 0a 0b 28 90 01 01 00 00 06 25 26 28 90 01 01 00 00 0a 25 26 0c 16 28 90 01 01 00 00 06 28 90 01 01 00 00 06 25 26 13 04 11 04 1a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}