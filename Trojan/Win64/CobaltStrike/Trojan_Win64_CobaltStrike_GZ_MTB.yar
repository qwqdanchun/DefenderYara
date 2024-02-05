
rule Trojan_Win64_CobaltStrike_GZ_MTB{
	meta:
		description = "Trojan:Win64/CobaltStrike.GZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 f7 e8 41 03 d0 c1 fa 90 01 01 8b c2 c1 e8 90 01 01 03 d0 0f be c2 6b c8 90 01 01 41 8a c0 41 ff c0 2a c1 04 90 01 01 41 30 01 49 ff c1 41 83 f8 90 00 } //01 00 
		$a_03_1 = {8b c3 41 f7 e8 41 03 d0 c1 fa 05 8b c2 c1 e8 1f 03 d0 0f be c2 6b c8 90 01 01 41 8a c0 2a c1 04 90 01 01 41 30 01 44 03 c7 4c 03 cf 41 83 f8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}