
rule VirTool_Win64_Primasz_A_MTB{
	meta:
		description = "VirTool:Win64/Primasz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 89 c1 e8 ?? ?? ?? ?? 48 89 85 c8 00 00 00 48 c7 45 00 00 04 00 00 48 8d ?? ?? ?? ?? ?? 48 89 45 08 c6 85 87 00 00 00 00 48 8b 85 c8 00 00 00 48 8d ?? ?? ?? ?? ?? 48 89 c1 e8 ?? ?? ?? ?? 88 85 87 00 00 00 80 bd 87 00 00 00 00 0f 85 ef 00 00 00 48 c7 } //1
		$a_03_1 = {48 8b 4c 24 20 48 8b 54 24 38 41 b8 40 00 00 00 b8 04 00 00 00 44 0f 44 c0 48 03 1d 85 4e 03 00 48 89 4b 08 49 89 d9 48 89 53 10 ff 15 ?? ?? ?? ?? 85 c0 75 } //1
		$a_03_2 = {4c 8b 10 48 8d ?? ?? ?? ?? ?? 48 8b 45 b8 49 89 d1 41 b8 40 00 00 00 ba 06 00 00 00 48 89 c1 41 ?? ?? 89 85 2c ff ff ff c6 85 2b ff ff ff 00 8b 85 2c ff } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}