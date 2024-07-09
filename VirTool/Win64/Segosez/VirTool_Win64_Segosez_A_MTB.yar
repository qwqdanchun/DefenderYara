
rule VirTool_Win64_Segosez_A_MTB{
	meta:
		description = "VirTool:Win64/Segosez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {8b c1 48 8d 04 ?? ?? ?? ?? ?? 42 3b 1c 08 74 09 ff c1 83 f9 62 76 e9 eb } //1
		$a_03_1 = {89 54 24 30 48 8d ?? ?? ?? ?? ?? 48 8d ?? ?? ?? ?? ?? 48 89 44 24 28 49 8b c8 c7 44 24 20 05 00 00 00 ff 15 ?? ?? ?? ?? 48 85 c0 74 } //1
		$a_03_2 = {0f 11 00 0f 11 40 10 0f 11 40 20 0f 11 40 30 0f 11 40 40 0f 11 40 50 0f 11 40 60 48 8d ?? ?? ?? ?? ?? 0f 11 40 f0 48 83 eb 01 75 } //1
		$a_03_3 = {49 8b 4f 08 48 8b 89 f8 00 00 00 e8 ?? ?? ?? ?? 3d 01 00 00 c0 0f 84 24 02 00 00 49 8b 4f 08 b8 ff e0 00 00 48 8b 91 f8 00 00 00 48 89 15 63 43 00 00 66 39 02 0f 85 e5 01 00 00 4c 8b 05 4b 43 00 00 b8 cc cc 00 00 66 } //1
		$a_03_4 = {48 c7 44 24 28 00 00 00 00 45 33 c9 4c 8b c3 c7 44 24 20 00 00 00 00 33 d2 33 c9 ff 15 ?? ?? ?? ?? 48 8b d8 48 85 c0 74 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}