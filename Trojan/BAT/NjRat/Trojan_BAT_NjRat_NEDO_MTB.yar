
rule Trojan_BAT_NjRat_NEDO_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEDO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {31 32 33 66 66 63 35 36 2d 65 31 32 33 2d 31 32 33 34 2d 38 37 36 64 2d 31 61 33 66 31 32 33 34 35 36 65 39 } //02 00 
		$a_01_1 = {35 35 35 35 2e 35 35 2e 33 35 36 37 2e 30 30 32 } //02 00 
		$a_01_2 = {70 72 6f 63 65 73 73 2e 70 64 62 } //01 00 
		$a_01_3 = {44 65 62 75 67 67 65 72 48 69 64 64 65 6e 41 74 74 72 69 62 75 74 65 } //00 00 
	condition:
		any of ($a_*)
 
}