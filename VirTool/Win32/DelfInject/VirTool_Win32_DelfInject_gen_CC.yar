
rule VirTool_Win32_DelfInject_gen_CC{
	meta:
		description = "VirTool:Win32/DelfInject.gen!CC,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {50 6a 04 8d 45 ?? 50 8b 87 a4 00 00 00 83 c0 08 50 8b 45 ?? 50 ff 15 ?? ?? ?? ?? 8b 45 ?? 03 43 28 89 87 b0 00 00 00 57 8b 45 ?? 50 ff 15 ?? ?? ?? ?? 8b 45 ?? 50 ff 15 } //1
		$a_03_1 = {50 33 c9 ba ?? ?? ?? ?? b8 ?? ?? ?? ?? e8 ?? ?? ?? ?? 8b 45 ?? e8 ?? ?? ?? ?? 50 53 ff 16 a3 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}