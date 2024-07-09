
rule VirTool_Win64_ExplPerz_A_MTB{
	meta:
		description = "VirTool:Win64/ExplPerz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {c7 45 74 00 00 00 00 48 8d ?? ?? 48 8b 8d 38 01 00 00 ff 15 ?? ?? ?? ?? 85 c0 75 14 } //1
		$a_02_1 = {45 33 c9 44 0f b7 85 a0 04 00 00 48 8b 95 98 04 00 00 48 8b 8d f8 00 00 00 ff 15 ?? ?? ?? ?? 48 89 85 18 01 00 00 } //1
		$a_02_2 = {48 89 45 38 48 c7 45 48 00 00 00 00 48 c7 45 50 00 00 00 00 c7 44 24 50 00 00 00 00 48 c7 44 24 48 00 00 00 00 c7 44 24 40 20 00 00 00 c7 44 24 38 05 00 00 00 c7 44 24 30 00 00 00 00 c7 44 24 28 80 00 00 00 48 c7 44 24 20 00 00 00 00 4c 8d ?? ?? 4c 8d ?? ?? ba 16 01 12 00 48 8d ?? ?? ?? ?? ?? e8 95 bd ff ff } //1
		$a_02_3 = {48 89 44 24 28 48 8d ?? ?? 48 89 44 24 20 45 33 c9 45 33 c0 33 d2 48 8b 8d d8 00 00 00 e8 } //1
		$a_02_4 = {41 b8 04 01 00 00 33 d2 48 8d ?? ?? ?? ?? ?? e8 ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? ff } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}