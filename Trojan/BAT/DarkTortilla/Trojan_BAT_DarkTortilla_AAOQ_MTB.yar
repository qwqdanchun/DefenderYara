
rule Trojan_BAT_DarkTortilla_AAOQ_MTB{
	meta:
		description = "Trojan:BAT/DarkTortilla.AAOQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {11 04 07 17 6f 90 01 01 00 00 0a 17 8d 90 01 01 00 00 01 25 16 11 06 a2 14 28 90 01 01 00 00 0a 1e 8c 90 01 01 00 00 01 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 00 00 2b 27 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}