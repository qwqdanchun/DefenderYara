
rule Trojan_BAT_Crysan_SSXP_MTB{
	meta:
		description = "Trojan:BAT/Crysan.SSXP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 01 00 00 04 00 "
		
	strings :
		$a_03_0 = {0a 73 10 00 00 0a 0b 00 00 20 00 0c 00 00 28 90 01 03 0a 00 07 06 72 6e 01 00 70 6f 90 01 03 0a 00 72 6e 01 00 70 28 90 01 03 0a 26 00 de 05 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}