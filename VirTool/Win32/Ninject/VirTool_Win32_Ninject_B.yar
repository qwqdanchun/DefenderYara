
rule VirTool_Win32_Ninject_B{
	meta:
		description = "VirTool:Win32/Ninject.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {8a 04 11 8b 95 ?? ?? ?? ?? 30 84 15 ?? ?? ?? ?? ff 85 } //1
		$a_03_1 = {8a 04 11 8b 55 ?? 8b 8d ?? ?? ?? ?? 30 04 0a ff 85 ?? ?? ?? ?? 8b 85 ?? ?? ?? ?? 99 f7 bd } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}