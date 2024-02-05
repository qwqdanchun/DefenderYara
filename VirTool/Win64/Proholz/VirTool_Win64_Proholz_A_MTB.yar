
rule VirTool_Win64_Proholz_A_MTB{
	meta:
		description = "VirTool:Win64/Proholz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 85 44 05 00 00 48 63 d0 48 8b 85 a0 04 00 00 c7 44 24 20 40 00 00 00 41 b9 00 30 00 00 49 89 d0 ba 00 00 00 00 48 89 c1 48 8b 05 34 cb 00 00 ff 90 01 01 48 89 85 30 05 00 00 48 83 bd 30 05 00 00 00 75 90 00 } //01 00 
		$a_03_1 = {48 89 4d 20 48 89 55 28 4c 89 45 30 4c 89 4d 38 48 90 01 03 48 89 45 f0 48 8b 5d f0 b9 01 00 00 00 48 8b 05 6d 7b 00 00 ff 90 01 01 48 90 00 } //01 00 
		$a_03_2 = {48 89 c1 e8 90 01 04 b9 12 00 00 00 48 8b 05 e0 c9 00 00 ff 90 01 01 48 8b 85 a8 04 00 00 48 89 c1 48 8b 05 b5 c9 00 00 ff 90 01 01 48 8d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}