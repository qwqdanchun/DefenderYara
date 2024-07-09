
rule VirTool_Win32_VBInject_AGH_bit{
	meta:
		description = "VirTool:Win32/VBInject.AGH!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {c7 01 55 89 e5 e8 8b 4d ?? c7 41 04 ?? ?? 00 00 8b 4d ?? c7 81 ?? ?? 00 00 ?? ?? ?? ?? 8b 4d ?? c7 81 ?? ?? 00 00 ?? ?? ?? ?? 8b 4d ?? c7 81 ?? ?? 00 00 ?? ?? ?? ?? 8b 4d ?? c7 81 ?? ?? 00 00 ?? ?? ?? ?? 8b 4d ?? c7 81 ?? ?? 00 00 ?? ?? ?? ?? 8b 4d } //1
		$a_03_1 = {31 37 83 c7 8b 45 ?? c7 80 ?? ?? 00 00 04 85 c0 75 8b 4d ?? c7 41 ?? ?? ?? ?? ?? 8b 45 ?? c7 40 ?? ?? ?? ?? ?? 8b 4d } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*2) >=3
 
}