
rule VirTool_Win64_Parlsz_A_MTB{
	meta:
		description = "VirTool:Win64/Parlsz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {4c 89 7c 24 28 33 d2 48 89 85 44 02 00 00 c7 85 40 02 00 00 01 00 00 00 c7 85 4c 02 00 00 02 00 00 00 4c 89 7c 24 20 ff } //01 00 
		$a_00_1 = {44 89 7d b8 45 33 c0 33 d2 49 8b cd ff } //01 00 
		$a_02_2 = {44 8b cb 48 8b d7 48 8b f0 49 8b cd 48 8d 90 01 02 4c 8b c6 48 89 44 24 20 ff 15 5d 1c 00 00 90 00 } //01 00 
		$a_02_3 = {49 8b d7 48 8d 90 01 05 48 89 44 24 40 48 8d 90 01 05 89 7c 24 38 4c 89 74 24 30 c7 44 24 28 08 00 00 00 48 89 44 24 20 ff 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}