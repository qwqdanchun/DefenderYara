
rule Trojan_BAT_QuasarRat_LL_MTB{
	meta:
		description = "Trojan:BAT/QuasarRat.LL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {59 13 0a 26 11 07 11 07 8e 69 1c 59 91 90 01 04 8e 69 1b 59 91 1e 62 60 11 07 11 07 8e 69 19 59 91 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}