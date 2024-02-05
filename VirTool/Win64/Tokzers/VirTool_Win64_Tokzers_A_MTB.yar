
rule VirTool_Win64_Tokzers_A_MTB{
	meta:
		description = "VirTool:Win64/Tokzers.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {44 8b 85 00 01 00 00 33 d2 b9 00 04 00 00 ff 15 90 01 04 48 89 45 08 48 83 7d 08 00 90 00 } //01 00 
		$a_03_1 = {c7 44 24 20 03 00 00 00 45 33 c9 41 b8 02 00 00 00 ba 00 00 00 40 48 8d 90 01 05 ff 90 00 } //01 00 
		$a_03_2 = {c7 44 24 28 04 00 00 00 48 8d 90 01 02 48 89 44 24 20 41 b9 04 00 00 00 4c 8d 90 01 02 ba a4 01 22 00 48 8b 4d 48 ff 90 00 } //01 00 
		$a_03_3 = {8b 4d 04 e8 90 01 04 85 c0 75 0e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}