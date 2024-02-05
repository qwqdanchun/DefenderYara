
rule VirTool_Win64_Hepenshellz_A_MTB{
	meta:
		description = "VirTool:Win64/Hepenshellz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_02_0 = {c7 44 24 30 00 00 00 00 48 c7 44 24 28 00 00 00 00 48 c7 44 24 20 00 00 00 00 45 33 c9 4c 8b 45 48 48 8d 90 01 05 48 8b 8d a8 00 00 00 ff 15 90 01 04 48 89 85 e8 00 00 00 90 00 } //01 00 
		$a_02_1 = {c7 85 04 01 00 00 00 00 00 00 48 8d 90 01 05 48 8b 8d e8 00 00 00 ff 90 00 } //01 00 
		$a_02_2 = {44 8b 85 04 01 00 00 48 8b 95 a8 01 00 00 48 8b 8d e8 00 00 00 ff 15 90 01 04 85 c0 75 90 00 } //01 00 
		$a_02_3 = {48 8b d0 48 8d 90 01 05 e8 90 01 04 0f b6 00 83 f0 7e 48 63 8d 24 02 00 00 48 8b 95 08 02 00 00 88 04 0a eb 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}