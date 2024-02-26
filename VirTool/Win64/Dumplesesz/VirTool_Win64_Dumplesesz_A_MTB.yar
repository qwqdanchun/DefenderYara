
rule VirTool_Win64_Dumplesesz_A_MTB{
	meta:
		description = "VirTool:Win64/Dumplesesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 8b cb ff 15 90 01 04 45 33 c0 4c 90 01 04 41 90 01 03 8d 90 01 02 ff 15 90 01 04 4c 8d 90 01 05 b9 01 00 00 00 48 8d 90 01 05 ff 15 90 01 04 44 8b c7 33 d2 b9 10 10 00 00 ff 15 90 00 } //01 00 
		$a_03_1 = {48 89 74 24 48 48 89 4c 24 40 41 b9 02 00 00 00 48 90 01 04 45 33 c0 48 89 4c 24 30 8b d7 48 89 74 24 28 48 8b c8 48 89 74 24 20 ff 15 90 01 04 85 c0 0f 84 90 01 04 48 8b 15 94 43 00 00 48 8d 90 01 05 e8 90 01 04 48 89 74 24 30 48 8d 90 00 } //01 00 
		$a_03_2 = {c7 44 24 28 80 00 00 00 45 33 c9 45 33 c0 c7 44 24 20 02 00 00 00 ba 00 00 00 10 ff 15 90 01 04 44 8b 05 4c 43 00 00 4c 90 01 04 48 8b 15 48 43 00 00 48 8b c8 48 89 74 24 20 ff 15 90 01 04 85 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}