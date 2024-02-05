
rule Trojan_Win64_BumbleBee_DA_MTB{
	meta:
		description = "Trojan:Win64/BumbleBee.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 79 6d 33 32 34 6d 72 37 2e 64 6c 6c } //01 00 
		$a_01_1 = {57 71 70 4b 6c 67 4e 62 43 4e } //01 00 
		$a_01_2 = {5a 50 76 44 7a 4e 37 31 35 6e } //01 00 
		$a_01_3 = {59 56 4b 30 37 37 63 } //00 00 
	condition:
		any of ($a_*)
 
}