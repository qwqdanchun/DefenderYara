
rule VirTool_Win64_Reapesez_A_MTB{
	meta:
		description = "VirTool:Win64/Reapesez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {4c 89 7c 24 60 48 8d 84 90 01 05 4c 89 7c 24 58 4c 8d 90 01 05 4c 89 7c 24 50 48 8d 90 01 05 4c 89 7c 24 48 41 b9 ff 01 0f 00 4c 89 7c 24 40 48 8b 90 00 } //1
		$a_03_1 = {45 33 c9 4c 89 7c 24 30 44 89 7c 24 28 48 8d 90 01 05 ba 00 00 00 40 c7 44 24 20 03 00 00 00 45 90 01 03 ff 15 90 01 04 48 83 90 00 } //1
		$a_03_2 = {c7 44 24 28 08 00 00 00 4c 90 01 04 48 89 4c 24 20 ba df 20 99 99 48 8b c8 4c 89 74 24 78 44 89 bc 24 80 00 00 00 ff 15 90 01 04 3b c7 90 01 02 48 8d 90 00 } //1
		$a_03_3 = {45 33 c0 33 d2 48 8b cd ff 15 90 01 04 3d 20 04 00 00 90 01 02 48 8d 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}