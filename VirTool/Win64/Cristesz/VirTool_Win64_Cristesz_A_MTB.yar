
rule VirTool_Win64_Cristesz_A_MTB{
	meta:
		description = "VirTool:Win64/Cristesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {45 33 c9 48 89 44 24 48 90 01 0b 45 33 c0 48 89 44 24 40 33 c9 48 89 7c 24 38 4c 89 74 24 30 c7 44 24 28 20 00 00 00 44 89 74 24 20 ff 90 00 } //1
		$a_03_1 = {48 8b 5c 24 60 4c 8b c3 90 01 07 ba 02 90 01 03 e8 90 01 04 33 d2 c7 44 24 20 04 00 00 00 41 b9 00 30 00 00 41 b8 00 90 01 03 48 8b cb ff 90 01 05 48 8b f8 90 00 } //1
		$a_03_2 = {41 b9 00 04 00 00 4d 8b c7 48 89 44 24 20 48 8b d7 48 8b cb ff 90 01 05 85 c0 90 01 02 48 81 7c 24 50 00 04 00 00 90 01 02 4c 8b 4e 08 90 00 } //1
		$a_03_3 = {4c 8b cf 48 89 44 24 30 45 33 c0 44 89 74 24 28 33 d2 48 8b cb 4c 89 74 24 20 ff 90 01 05 48 8b f8 90 00 } //1
		$a_03_4 = {44 8b c0 e8 90 01 04 48 8b 4e 10 e8 90 01 04 48 8b 4e 08 4c 8b f0 e8 90 01 04 4c 8b c0 90 01 07 8b d7 48 8b d8 e8 90 01 04 4d 8b c6 90 01 07 8b d7 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}