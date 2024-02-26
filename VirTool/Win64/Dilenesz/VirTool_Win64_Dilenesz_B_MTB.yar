
rule VirTool_Win64_Dilenesz_B_MTB{
	meta:
		description = "VirTool:Win64/Dilenesz.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {4c 89 7c 24 30 48 8d 90 01 05 33 c9 ff 90 01 01 48 8b 44 24 30 0f 57 c0 0f 57 c9 44 8b c3 33 d2 b9 ff ff 1f 00 48 8b 30 33 c0 48 89 44 24 50 48 89 44 24 70 4c 89 7c 24 38 0f 11 44 24 40 0f 11 4c 24 60 ff 15 90 00 } //01 00 
		$a_03_1 = {c7 44 24 20 40 00 00 00 48 8b c8 45 90 01 03 41 b9 00 10 00 00 48 8b d8 ff 15 90 01 04 33 d2 c7 44 24 20 40 00 00 00 41 b9 00 10 00 00 41 b8 20 01 00 00 48 8b cb 48 8b e8 ff 15 90 00 } //01 00 
		$a_03_2 = {41 b9 20 01 00 00 48 89 35 89 3f 00 00 4c 8d 90 01 05 4c 89 35 8c 3f 00 00 49 8b d6 4c 89 7c 24 20 48 8b cb ff 15 90 01 04 45 90 01 03 4c 89 7c 24 20 4c 8d 90 01 05 48 8b d5 48 8b cb ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}