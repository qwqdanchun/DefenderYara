
rule Trojan_Win64_CobaltStrike_LKBH_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.LKBH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 b8 5f 01 c5 88 b2 7d dc 64 } //01 00 
		$a_01_1 = {48 b8 41 07 6f 48 ba c2 a3 68 } //01 00 
		$a_01_2 = {48 b8 37 6a fb 46 10 cb 8b 85 } //01 00 
		$a_01_3 = {48 b8 cb 1b 55 4e 17 fa a2 c6 } //00 00 
	condition:
		any of ($a_*)
 
}