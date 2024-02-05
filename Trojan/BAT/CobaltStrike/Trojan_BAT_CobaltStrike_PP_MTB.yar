
rule Trojan_BAT_CobaltStrike_PP_MTB{
	meta:
		description = "Trojan:BAT/CobaltStrike.PP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 90 02 06 2e 00 90 02 06 2e 00 90 02 06 2e 00 90 02 06 2f 00 90 02 30 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_1 = {73 00 64 00 61 00 66 00 61 00 73 00 66 00 77 00 71 00 66 00 77 00 71 00 66 00 67 00 64 00 66 00 73 00 66 00 73 00 64 00 67 00 64 00 73 00 } //01 00 
		$a_01_2 = {5c 00 48 00 52 00 4d 00 5f 00 53 00 55 00 42 00 5c 00 48 00 52 00 4d 00 5f 00 53 00 55 00 42 00 5c 00 69 00 6d 00 67 00 5c 00 55 00 73 00 65 00 72 00 20 00 50 00 68 00 6f 00 74 00 6f 00 5c 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 2e 00 70 00 6e 00 67 00 } //01 00 
		$a_03_3 = {5c 53 4c 4e 5c 48 52 4d 5f 53 55 42 5c 90 02 20 5c 48 52 4d 5f 53 55 42 2e 70 64 62 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}