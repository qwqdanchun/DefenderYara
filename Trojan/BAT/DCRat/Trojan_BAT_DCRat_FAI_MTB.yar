
rule Trojan_BAT_DCRat_FAI_MTB{
	meta:
		description = "Trojan:BAT/DCRat.FAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {0a 16 0b 2b 31 7e 90 01 01 05 00 04 06 7e 90 01 01 06 00 04 02 07 6f 90 01 01 00 00 0a 7e 90 01 01 05 00 04 07 7e 90 01 01 05 00 04 8e 69 5d 91 61 28 90 01 01 0b 00 06 28 90 01 01 06 00 06 26 07 17 58 0b 07 02 6f c7 00 00 0a 32 c6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}