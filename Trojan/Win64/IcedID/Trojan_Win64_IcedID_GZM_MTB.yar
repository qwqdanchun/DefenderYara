
rule Trojan_Win64_IcedID_GZM_MTB{
	meta:
		description = "Trojan:Win64/IcedID.GZM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {49 8b c6 48 8b cb 48 f7 e3 48 8b c3 48 2b c2 48 d1 e8 48 03 c2 48 c1 e8 90 01 01 48 6b c0 15 48 2b c8 0f b6 84 8c 90 01 04 30 06 90 00 } //01 00 
		$a_01_1 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00 
		$a_01_2 = {50 6c 75 67 69 6e 49 6e 69 74 } //00 00 
	condition:
		any of ($a_*)
 
}