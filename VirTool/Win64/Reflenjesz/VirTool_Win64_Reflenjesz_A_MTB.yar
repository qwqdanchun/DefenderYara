
rule VirTool_Win64_Reflenjesz_A_MTB{
	meta:
		description = "VirTool:Win64/Reflenjesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {55 48 89 e5 48 83 ec 30 90 01 05 48 c7 45 f8 00 00 00 00 90 01 07 48 89 c1 90 01 05 48 89 45 f8 48 8b 45 f8 48 89 c1 90 01 05 48 8b 45 f8 48 89 c1 90 00 } //1
		$a_03_1 = {48 8b 45 e0 48 01 c8 0f b7 00 66 25 ff 0f 0f b7 c0 01 d0 89 c0 48 89 45 d8 48 c7 45 b0 00 00 00 00 48 8b 55 38 48 8b 45 d8 48 01 d0 48 89 c3 90 02 13 48 c7 44 24 20 00 00 00 00 41 b9 08 00 00 00 49 89 d0 48 89 da 48 89 c1 90 00 } //1
		$a_03_2 = {48 89 c1 48 8b 45 40 41 b9 40 00 00 00 41 b8 00 30 00 00 48 89 c2 90 01 09 48 89 45 38 48 8b 55 38 48 8b 45 48 48 8b 48 30 48 89 d0 48 29 c8 48 89 45 30 48 8b 45 48 8b 40 54 89 c2 48 8b 45 38 49 89 d0 48 8b 95 a0 00 00 00 48 89 c1 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}