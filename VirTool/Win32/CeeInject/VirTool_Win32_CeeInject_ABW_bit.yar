
rule VirTool_Win32_CeeInject_ABW_bit{
	meta:
		description = "VirTool:Win32/CeeInject.ABW!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8a 14 0e 80 f2 1a 88 11 41 4f 75 d8 90 09 1c 00 8b 15 ?? ?? ?? ?? 0f af 15 ?? ?? ?? ?? 39 15 ?? ?? ?? ?? 7d 07 } //1
		$a_03_1 = {51 50 ff 54 24 ?? 6a 40 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 6a 00 ff d0 be ?? ?? ?? ?? 8b c8 2b f0 } //1
		$a_03_2 = {85 c0 8b 2d ?? ?? ?? ?? 0f 84 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 0f bf 3d ?? ?? ?? ?? 8b c6 33 c2 89 44 24 ?? 0f bf 05 ?? ?? ?? ?? 0f af c6 33 fe 8b 35 ?? ?? ?? ?? 89 44 24 ?? 89 7c 24 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}