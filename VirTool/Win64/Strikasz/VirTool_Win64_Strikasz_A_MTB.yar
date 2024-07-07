
rule VirTool_Win64_Strikasz_A_MTB{
	meta:
		description = "VirTool:Win64/Strikasz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 8b 95 80 0b 00 00 48 8b 85 78 0b 00 00 90 01 07 48 89 4c 24 40 90 01 07 48 89 4c 24 38 90 01 07 48 89 4c 24 30 90 01 07 48 89 4c 24 28 90 01 07 48 89 4c 24 20 48 89 c1 90 01 05 48 8b 85 78 0b 00 00 48 89 c1 90 01 05 89 c2 48 8b 85 78 0b 00 00 48 89 c1 90 01 05 48 90 00 } //1
		$a_03_1 = {48 89 e0 48 89 c3 48 8b 85 a8 0b 00 00 c7 44 24 20 00 00 00 00 41 b9 00 00 00 00 41 b8 00 00 00 00 ba 00 00 00 00 48 89 c1 48 8b 05 c6 dc 00 00 90 01 02 48 89 85 68 0b 00 00 8b 85 94 0b 00 00 0f b7 c8 48 8b 95 a0 0b 00 00 48 8b 85 68 0b 00 00 48 c7 44 24 90 00 } //1
		$a_03_2 = {8b 85 e0 04 00 00 89 c2 48 8b 85 38 0b 00 00 48 89 c1 90 01 05 c7 85 d8 04 00 00 04 00 00 00 8b 85 e0 04 00 00 89 c0 41 b9 40 00 00 00 41 b8 00 30 00 00 48 89 c2 b9 00 00 00 00 48 8b 05 2b d7 00 00 90 01 02 48 89 85 20 0b 00 00 48 8b 85 20 0b 00 00 48 89 c2 90 01 07 48 89 c1 90 01 05 8b 85 e0 04 00 00 89 c1 48 8b 95 38 0b 00 00 48 8b 85 20 0b 00 00 49 89 c8 48 89 c1 90 01 0c 48 89 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}