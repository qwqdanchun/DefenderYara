
rule VirTool_Win32_CeeInject_ST_bit{
	meta:
		description = "VirTool:Win32/CeeInject.ST!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {33 ff 0f b7 05 ?? ?? ?? ?? 8b 15 ?? ?? ?? ?? 35 ?? ?? ?? ?? 33 c7 8a 88 ?? ?? ?? ?? 47 81 ff ?? ?? ?? ?? 88 0c 10 7c } //1
		$a_03_1 = {8b c1 6a 03 99 5f f7 ff 85 d2 74 17 66 81 3d ?? ?? ?? ?? ?? ?? 75 21 a1 ?? ?? ?? ?? 03 c1 80 30 ?? eb } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}