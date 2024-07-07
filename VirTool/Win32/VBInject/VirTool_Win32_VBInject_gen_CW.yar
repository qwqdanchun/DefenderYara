
rule VirTool_Win32_VBInject_gen_CW{
	meta:
		description = "VirTool:Win32/VBInject.gen!CW,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_01_0 = {8b 85 84 fe ff ff 83 c4 24 03 45 ac } //2
		$a_01_1 = {83 c4 24 8b 45 ac 03 85 84 fe ff ff } //2
		$a_03_2 = {66 b9 c3 00 90 01 11 66 b9 cc 00 90 00 } //1
		$a_03_3 = {c6 45 dc c3 90 01 09 c6 45 dc cc 90 00 } //1
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}