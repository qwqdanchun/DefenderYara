
rule Trojan_BAT_Lazy_NNL_MTB{
	meta:
		description = "Trojan:BAT/Lazy.NNL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {00 06 02 09 6f 7c 00 00 0a 03 09 90 01 05 61 60 0a 00 09 17 58 0d 09 02 90 01 05 fe 04 13 04 11 04 2d d9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}