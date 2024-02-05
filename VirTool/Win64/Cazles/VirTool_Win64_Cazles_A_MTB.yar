
rule VirTool_Win64_Cazles_A_MTB{
	meta:
		description = "VirTool:Win64/Cazles.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 8b f8 33 c0 b9 10 00 00 00 f3 aa c7 45 34 10 00 00 00 48 8d 90 01 02 48 89 44 24 20 41 b9 19 00 02 00 45 33 c0 48 8d 90 01 05 48 c7 c1 02 00 00 80 ff 15 90 01 04 85 c0 90 00 } //01 00 
		$a_02_1 = {05 d8 00 00 00 66 89 45 54 48 c7 85 e0 00 00 00 c4 00 00 00 0f b7 45 54 66 89 85 e2 00 00 00 ff 15 90 01 04 8b c0 48 89 85 e8 00 00 00 ff 15 90 01 04 8b c0 90 00 } //01 00 
		$a_02_2 = {0f b7 85 04 07 00 00 39 85 64 07 00 00 90 01 02 b9 04 00 00 00 ff 15 90 01 04 48 89 85 a8 05 00 00 48 63 85 64 07 00 00 48 8b 8d 48 07 00 00 0f b6 04 01 44 8b c8 4c 8d 90 01 05 ba 04 00 00 00 48 8b 8d a8 05 00 00 e8 90 01 04 4c 8b 8d 88 05 00 00 41 b8 01 00 00 00 ba 02 00 00 00 48 8b 8d a8 05 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}