
rule VirTool_Win64_LocPoto_A_MTB{
	meta:
		description = "VirTool:Win64/LocPoto.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_02_0 = {48 c7 44 24 28 00 00 00 00 c7 44 24 20 00 00 00 00 45 33 c9 4c 8d 90 01 05 33 d2 33 c9 ff 90 00 } //1
		$a_00_1 = {89 44 24 20 44 8b 8d 78 01 00 00 4c 8b 85 70 01 00 00 48 8b 95 68 01 00 00 48 8b 8d 60 01 00 00 ff } //1
		$a_00_2 = {45 33 c9 45 33 c0 ba 0a 00 00 00 33 c9 ff } //1
		$a_02_3 = {48 8b 45 28 48 83 c0 20 41 b8 08 00 00 00 48 8b d0 48 8d 90 01 05 e8 90 01 04 48 8b 0d 2c 85 01 00 ff 90 00 } //1
		$a_02_4 = {33 c9 ff 15 90 01 04 48 8b 45 08 48 8b 00 4c 8d 90 01 05 45 33 c0 48 8b 55 28 48 8b 4d 08 ff 90 00 } //1
		$a_02_5 = {b9 00 20 00 00 ff 15 90 01 04 48 89 85 a8 00 00 00 b9 00 20 00 00 ff 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1+(#a_02_5  & 1)*1) >=6
 
}