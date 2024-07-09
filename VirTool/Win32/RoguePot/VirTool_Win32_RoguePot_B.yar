
rule VirTool_Win32_RoguePot_B{
	meta:
		description = "VirTool:Win32/RoguePot.B,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {c7 44 24 4c 00 00 00 00 50 6a 00 6a 00 6a 01 56 ff ?? ?? ?? ?? ?? 8b 44 24 4c 85 c0 ?? ?? ?? ?? ?? ?? 50 e8 ?? ?? ?? ?? 83 c4 04 8b f8 ?? ?? ?? ?? 50 ff 74 24 50 57 6a 01 56 ff ?? ?? ?? ?? ?? ff 37 ff 74 24 4c ff ?? ?? ?? ?? ?? 57 8b f0 e8 ?? ?? ?? ?? 83 c4 04 ff 74 24 48 e8 ?? ?? ?? ?? 83 c4 04 85 f6 ?? ?? ?? ?? ?? ?? ff 74 24 44 ff ?? ?? ?? ?? ?? 85 c0 } //1
		$a_03_1 = {8b 35 30 80 41 00 ?? ?? ?? ?? 83 c4 08 50 6a 01 6a 02 6a 00 68 ff 01 0f 00 ff 74 24 58 ff ?? 85 c0 } //1
		$a_03_2 = {50 6a 02 6a 02 6a 00 68 ff 01 0f 00 ff 74 24 58 ff ?? 85 c0 } //1
		$a_03_3 = {57 6a 00 ff ?? ?? ?? ?? ?? 8d ?? ?? ?? c7 44 24 0c 00 00 00 00 50 6a 01 6a 00 c7 44 24 14 00 00 00 00 ff ?? ?? ?? ?? ?? 8d ?? ?? ?? 50 6a 00 68 12 10 00 00 ff 74 24 14 ff ?? ?? ?? ?? ?? 6a 10 e8 ?? ?? ?? ?? 0f 57 c0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}