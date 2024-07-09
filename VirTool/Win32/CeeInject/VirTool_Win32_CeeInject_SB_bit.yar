
rule VirTool_Win32_CeeInject_SB_bit{
	meta:
		description = "VirTool:Win32/CeeInject.SB!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 d8 8b 45 fc 69 c0 ?? ?? ?? ?? 99 b9 ?? ?? ?? ?? f7 f9 88 9c 05 ?? ?? ?? ?? 8b 45 fc 69 c0 ?? ?? ?? ?? 99 b9 ?? ?? ?? ?? f7 f9 33 d2 8a 94 05 ?? ?? ?? ?? 83 fa } //1
		$a_03_1 = {8b 45 fc 69 c0 ?? ?? ?? ?? 99 b9 ?? ?? ?? ?? f7 f9 33 d2 8a 94 05 ?? ?? ?? ?? 8b ca 83 e9 01 8b 45 fc 69 c0 ?? ?? ?? ?? 99 be ?? ?? ?? ?? f7 fe 88 8c 05 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}