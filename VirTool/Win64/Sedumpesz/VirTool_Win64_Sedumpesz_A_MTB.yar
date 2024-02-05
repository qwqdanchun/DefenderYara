
rule VirTool_Win64_Sedumpesz_A_MTB{
	meta:
		description = "VirTool:Win64/Sedumpesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {41 b8 34 02 00 00 48 90 01 03 48 8b d8 e8 90 01 04 48 90 01 03 48 8b cb ff 15 90 01 04 85 c0 74 90 00 } //01 00 
		$a_03_1 = {8b c7 48 89 44 24 50 4c 89 74 24 58 ff 15 90 01 04 4c 90 01 04 ba ff 01 0f 00 48 8b c8 ff 15 90 01 04 85 c0 75 90 00 } //01 00 
		$a_03_2 = {48 8b 4c 24 48 4c 8d 90 01 03 4c 89 74 24 28 41 b9 10 00 00 00 33 d2 4c 89 74 24 20 c7 44 24 68 01 00 00 00 c7 44 24 74 02 00 00 00 ff 15 90 01 04 85 c0 75 90 00 } //01 00 
		$a_03_3 = {ba 10 04 00 00 4c 90 01 04 48 90 01 04 e8 90 01 04 85 c0 74 90 00 } //01 00 
		$a_03_4 = {48 8b f8 ff 15 90 01 04 48 8b 4c 24 40 41 b9 02 00 00 00 4c 89 74 24 30 8b d0 4c 89 74 24 28 4c 8b c7 4c 89 74 24 20 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}