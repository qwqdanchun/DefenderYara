
rule VirTool_Win32_Obfuscator_ALB{
	meta:
		description = "VirTool:Win32/Obfuscator.ALB,SIGNATURE_TYPE_PEHSTR_EXT,32 00 0f 00 08 00 00 "
		
	strings :
		$a_03_0 = {66 66 2e 0f 1f 84 00 00 00 00 00 55 89 e5 83 ec [0-08] e8 ?? ff ff ff [0-15] 8b 40 30 83 c4 ?? 5d c3 [0-05] 0f 1f } //5
		$a_03_1 = {66 66 2e 0f 1f 84 00 00 00 00 00 55 89 e5 [0-03] 81 e4 ?? ff ff ff (81|83) ec } //5
		$a_01_2 = {a7 6e 19 a6 } //5
		$a_01_3 = {8c 61 10 b1 } //5
		$a_01_4 = {0f 1f 84 00 00 00 00 00 55 89 e5 53 57 56 } //2
		$a_01_5 = {89 04 24 c7 44 24 08 00 2e 01 00 c7 44 24 04 00 00 00 00 ff } //1
		$a_01_6 = {b9 00 5c 02 00 89 4c 24 08 31 ff 89 7c 24 04 89 04 24 ff d6 83 ec 0c } //1
		$a_01_7 = {24 08 ba 00 04 00 00 89 54 24 04 89 0c 24 ff d0 83 ec 10 31 c0 89 85 } //1
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_01_2  & 1)*5+(#a_01_3  & 1)*5+(#a_01_4  & 1)*2+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=15
 
}