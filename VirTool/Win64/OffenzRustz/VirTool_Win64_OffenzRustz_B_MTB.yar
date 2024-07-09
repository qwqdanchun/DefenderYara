
rule VirTool_Win64_OffenzRustz_B_MTB{
	meta:
		description = "VirTool:Win64/OffenzRustz.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {4c 89 45 00 48 89 55 f8 48 89 4d e8 48 89 4d f0 48 89 95 58 02 00 00 4c 89 85 60 02 00 00 48 8d ?? ?? ?? ?? ?? 48 8d ?? ?? 41 b8 03 00 00 00 e8 } //1
		$a_02_1 = {4c 8b 45 c0 48 8b 55 c8 48 8d ?? ?? e8 ?? ?? ?? ?? eb 00 } //1
		$a_02_2 = {4c 8b 45 f8 4c 8b 4d 00 48 8b 45 30 48 89 45 60 0f 10 45 20 0f 29 45 50 48 8d ?? ?? 48 89 4d 08 } //1
		$a_02_3 = {48 89 e0 48 89 48 20 4c 8d ?? ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? 41 b9 0f 00 00 00 e8 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}