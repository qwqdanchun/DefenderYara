
rule Trojan_Win64_Dridex_BB_MTB{
	meta:
		description = "Trojan:Win64/Dridex.BB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_02_0 = {66 8b 11 8b 44 24 4c 35 90 01 04 89 84 24 90 01 04 48 8b 4c 24 28 8b 41 1c 66 c7 84 24 90 01 04 af fd 44 0f b7 c2 45 89 c1 90 00 } //01 00 
		$a_01_1 = {46 47 54 52 59 59 42 2e 70 64 62 } //00 00 
	condition:
		any of ($a_*)
 
}