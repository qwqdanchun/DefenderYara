
rule Trojan_BAT_Lazy_PSVH_MTB{
	meta:
		description = "Trojan:BAT/Lazy.PSVH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {02 7b 02 00 00 04 07 06 a2 2b 61 07 2d 32 28 90 01 01 00 00 0a 0c 12 02 fe 16 10 00 00 01 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 72 93 00 00 70 72 01 00 00 70 6f 90 01 01 00 00 0a 19 1f 14 6f 90 01 01 00 00 0a 0a 2b 0e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}