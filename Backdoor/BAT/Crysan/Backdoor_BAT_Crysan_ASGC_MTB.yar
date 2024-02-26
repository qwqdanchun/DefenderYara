
rule Backdoor_BAT_Crysan_ASGC_MTB{
	meta:
		description = "Backdoor:BAT/Crysan.ASGC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 c4 09 00 00 28 90 01 01 00 00 0a 00 28 90 01 01 02 00 06 16 fe 01 0a 06 39 07 00 00 00 16 28 90 00 } //01 00 
		$a_03_1 = {16 fe 01 0c 08 39 90 01 01 00 00 00 28 90 01 01 01 00 06 00 20 dc 05 00 00 28 90 01 01 00 00 0a 00 00 17 0d 38 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}