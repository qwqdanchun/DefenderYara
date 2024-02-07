
rule Backdoor_BAT_Bladabindi_KT_MTB{
	meta:
		description = "Backdoor:BAT/Bladabindi.KT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {70 1f 1a 28 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 6f 90 01 03 0a 90 0a 22 00 73 90 01 03 0a 0a 06 72 90 00 } //01 00 
		$a_03_1 = {0a 0b 07 2a 90 0a 2a 00 1f 1a 28 90 01 03 0a 72 90 01 03 70 28 90 01 03 0a 28 90 01 03 0a 0a 06 72 90 00 } //01 00 
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}