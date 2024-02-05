
rule Trojan_BAT_NjRAT_DC_MTB{
	meta:
		description = "Trojan:BAT/NjRAT.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {0a a2 25 1f 62 11 62 2d 03 14 2b 07 11 62 6f 90 01 03 0a a2 25 1f 63 11 63 2d 03 14 2b 07 11 63 6f 90 01 03 0a a2 25 1f 64 11 64 2d 03 14 2b 07 11 64 6f 90 01 03 0a a2 28 90 01 03 0a 13 65 11 65 28 90 01 03 0a 13 66 11 66 90 00 } //01 00 
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_81_2 = {54 6f 53 74 72 69 6e 67 } //01 00 
		$a_81_3 = {57 69 6e 64 6f 77 73 46 6f 72 6d 73 41 70 70 } //00 00 
	condition:
		any of ($a_*)
 
}