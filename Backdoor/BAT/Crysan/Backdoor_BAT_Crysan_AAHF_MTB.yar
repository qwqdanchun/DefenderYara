
rule Backdoor_BAT_Crysan_AAHF_MTB{
	meta:
		description = "Backdoor:BAT/Crysan.AAHF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {72 4d 00 00 70 28 90 01 01 00 00 0a 0a 06 28 90 01 01 00 00 06 0b 07 02 28 90 01 01 00 00 06 0c 2b 00 08 2a 90 00 } //01 00 
		$a_01_1 = {43 00 46 00 64 00 78 00 74 00 66 00 65 00 4d 00 38 00 54 00 6d 00 37 00 41 00 47 00 48 00 34 00 36 00 78 00 48 00 62 00 2b 00 33 00 49 00 6a 00 78 00 4a 00 76 00 66 00 41 00 4b 00 47 00 61 00 66 00 67 00 2f 00 50 00 6e 00 43 00 53 00 6a 00 41 00 2b 00 34 00 3d 00 } //01 00 
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}