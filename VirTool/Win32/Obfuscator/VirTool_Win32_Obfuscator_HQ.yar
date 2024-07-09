
rule VirTool_Win32_Obfuscator_HQ{
	meta:
		description = "VirTool:Win32/Obfuscator.HQ,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 01 00 04 00 00 "
		
	strings :
		$a_03_0 = {50 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 b9 ?? ?? ?? ?? 90 05 02 01 90 (f3|66) cf 64 8f 05 00 00 00 00 c9 90 03 02 02 ff e0 50 c3 } //1
		$a_03_1 = {50 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 b9 ?? ?? ?? ?? 81 c1 ?? ?? ?? ?? 90 05 02 01 90 f4 64 8f 05 00 00 00 00 83 c4 04 c9 (ff e0|50 c3) } //1
		$a_03_2 = {b8 0c 00 00 00 8b 14 04 8b 82 ?? 00 00 00 83 e8 01 89 82 ?? 00 00 00 75 0a 81 82 ?? 00 00 00 ?? 00 00 00 05 ?? 00 00 00 } //1
		$a_03_3 = {50 64 ff 35 00 00 00 00 64 89 25 00 00 00 00 b9 ?? ?? ?? ?? 81 e9 ?? ?? ?? ?? 0f 0b 64 8f 05 00 00 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=1
 
}