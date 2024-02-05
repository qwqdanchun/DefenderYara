
rule Trojan_BAT_Spy_ABDSA_MTB{
	meta:
		description = "Trojan:BAT/Spy.ABDSA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {24 39 33 39 62 36 64 34 66 2d 36 61 32 66 2d 34 33 65 66 2d 38 32 66 36 2d 35 36 65 34 32 34 35 38 35 36 34 35 } //01 00 
		$a_01_1 = {49 43 6f 72 65 } //01 00 
		$a_01_2 = {50 61 72 61 6c 6c 65 6c 4c 6f 6f 70 52 65 73 75 6c 74 } //01 00 
		$a_01_3 = {44 69 73 70 6f 73 65 } //01 00 
		$a_01_4 = {44 69 73 70 6f 73 69 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}