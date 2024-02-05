
rule VirTool_Win64_Plashelln_A_MTB{
	meta:
		description = "VirTool:Win64/Plashelln.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 b9 04 00 00 00 41 b8 00 10 00 00 48 8b 45 08 48 8b 50 08 48 8b 8d 00 01 00 00 ff } //01 00 
		$a_02_1 = {48 8b 48 10 e8 90 01 04 ff 15 90 01 04 48 98 48 8b 4d 08 48 8b 49 08 48 ff c1 33 d2 48 f7 f1 48 8b c2 48 8b 4d 08 89 41 04 90 00 } //01 00 
		$a_00_2 = {8b 85 e0 00 00 00 8b 40 04 48 8b 8d e0 00 00 00 48 03 41 10 4c 8b 85 f0 00 00 00 48 8b 95 e8 00 00 00 48 8b c8 e8 } //01 00 
		$a_02_3 = {48 c7 44 24 28 00 00 00 00 c7 44 24 20 00 00 00 00 45 33 c9 4c 8b 45 28 33 d2 33 c9 ff 15 90 01 04 48 89 45 48 90 00 } //01 00 
		$a_00_4 = {4c 8b 85 e0 00 00 00 ba 08 00 00 00 48 8b c8 ff } //00 00 
	condition:
		any of ($a_*)
 
}