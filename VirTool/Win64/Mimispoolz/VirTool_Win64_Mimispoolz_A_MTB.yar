
rule VirTool_Win64_Mimispoolz_A_MTB{
	meta:
		description = "VirTool:Win64/Mimispoolz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {48 89 45 e7 [0-04] ff 15 ?? ?? ?? ?? 4c 8d ?? ?? ba ff 01 0f 00 48 8b c8 ff 15 ?? ?? ?? ?? 85 c0 0f 84 ?? ?? ?? ?? 48 8b 4d b7 48 8d ?? ?? 48 89 44 24 28 44 8d ?? ?? 45 33 c0 c7 44 24 20 01 00 00 00 ba 00 00 00 02 ff 15 ?? ?? ?? ?? 85 c0 0f 84 ?? ?? ?? ?? 48 8b 55 6f 48 8d ?? ?? 45 33 c0 ff 15 ?? ?? ?? ?? 85 c0 } //1
		$a_03_1 = {48 8b 4d 6f ba 0c 00 00 00 44 8d ?? ?? ff 15 ?? ?? ?? ?? 85 c0 ?? ?? 48 8b 4d 6f 48 8d ?? ?? 48 89 44 24 50 48 8d ?? ?? ?? ?? ?? 48 8d ?? ?? 45 33 c9 48 89 44 24 48 45 33 c0 48 83 64 24 40 00 48 8b 45 7f 48 89 44 24 38 c7 44 24 30 10 04 00 00 83 64 24 28 00 48 83 64 24 20 00 ff 15 ?? ?? ?? ?? 85 c0 } //1
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 00 00 77 00 69 00 6e 00 73 00 74 00 61 00 30 00 5c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}