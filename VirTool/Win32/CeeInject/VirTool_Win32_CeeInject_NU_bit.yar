
rule VirTool_Win32_CeeInject_NU_bit{
	meta:
		description = "VirTool:Win32/CeeInject.NU!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {0f b7 14 41 8b 85 ?? ?? ?? ?? 0f af 85 ?? ?? ?? ?? 8b 8d ?? ?? ?? ?? 2b 8d ?? ?? ?? ?? 03 c1 03 d0 a1 ?? ?? ?? ?? 03 85 ?? ?? ?? ?? 88 10 } //1
		$a_03_1 = {8b cb 33 f6 66 d1 e8 66 d1 e0 8b 0d ?? ?? ?? ?? 97 8b d9 93 ff d0 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}