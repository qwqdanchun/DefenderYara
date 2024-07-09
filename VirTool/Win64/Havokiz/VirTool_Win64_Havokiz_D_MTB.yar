
rule VirTool_Win64_Havokiz_D_MTB{
	meta:
		description = "VirTool:Win64/Havokiz.D!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {48 b8 61 6d 73 69 2e 64 6c 6c 41 54 56 53 48 83 ec 70 48 8d ?? ?? ?? 66 c7 44 24 6e 00 00 c7 44 24 4a b8 57 00 07 66 c7 44 24 4e 80 c3 48 89 44 24 66 e8 ?? ?? ?? ?? ba 8e d1 fc 29 48 89 c1 e8 } //1
		$a_02_1 = {48 83 ec 58 48 63 41 3c 89 94 24 a8 00 00 00 48 c7 44 24 38 00 00 00 00 48 01 c8 48 c7 44 24 40 00 00 00 00 8b 98 88 00 00 00 48 c7 44 24 48 00 00 00 00 8b 80 8c 00 00 00 48 01 cb 8b 73 20 44 8b 6b 1c 89 44 24 2c 44 8b 73 24 44 39 7b 18 0f 86 ?? ?? ?? ?? 44 89 ff 49 8d ?? ?? 8b 2c 30 4c 01 e5 48 89 e9 e8 ?? ?? ?? ?? 3b 84 24 a8 00 00 00 } //1
		$a_02_2 = {41 5b 48 83 c4 08 48 8b 44 24 18 4c 8b 10 4c 89 14 24 4c 8b 50 08 4c 89 58 08 48 89 58 10 48 8d [0-05] 48 89 18 48 89 c3 41 ff e2 } //1
		$a_00_3 = {48 83 ec 10 48 89 d9 48 8b 59 10 ff 61 08 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_00_3  & 1)*1) >=4
 
}