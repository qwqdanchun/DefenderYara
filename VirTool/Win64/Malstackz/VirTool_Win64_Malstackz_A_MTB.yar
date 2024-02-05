
rule VirTool_Win64_Malstackz_A_MTB{
	meta:
		description = "VirTool:Win64/Malstackz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 8b c8 48 8d 90 01 05 ff 15 90 01 04 48 8b d8 48 81 c3 20 0b 00 00 74 a9 90 00 } //01 00 
		$a_02_1 = {48 89 44 24 28 c7 44 24 20 04 00 00 00 45 33 c9 4c 8b c3 33 d2 33 c9 ff 15 90 01 04 48 8b d8 90 00 } //01 00 
		$a_02_2 = {45 33 c9 45 33 c0 33 d2 33 c9 48 8b d8 ff 15 90 01 04 48 8b f8 ff 90 00 } //01 00 
		$a_02_3 = {c7 44 24 30 20 00 00 00 44 89 6c 24 28 8b 51 44 48 8d 90 01 03 4c 2b fa 44 89 6c 24 20 48 8b d3 4c 03 f8 ff 90 00 } //01 00 
		$a_00_4 = {4c 8b c2 0f 10 48 10 0f 11 01 0f 10 40 20 0f 11 49 10 0f 10 48 30 0f 11 41 20 0f 10 40 40 } //00 00 
	condition:
		any of ($a_*)
 
}