
rule VirTool_Win32_Adeximport_A_MTB{
	meta:
		description = "VirTool:Win32/Adeximport.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_00_0 = {8b 95 ac 02 00 00 89 d0 c1 e0 02 01 d0 c1 e0 02 89 85 44 02 00 00 8b 85 44 02 00 00 83 c0 28 89 85 40 02 00 00 8b 85 40 02 00 00 48 89 c1 e8 } //1
		$a_00_1 = {8b 95 b8 02 00 00 48 8b 85 58 02 00 00 48 01 d0 48 89 85 60 02 00 00 48 8b 85 60 02 00 00 8b 40 0c } //1
		$a_00_2 = {48 8b 85 c0 02 00 00 48 83 c0 08 8b 08 48 8b 85 28 02 00 00 48 8b 95 78 02 00 00 41 89 c8 48 89 c1 e8 } //1
		$a_02_3 = {8b 45 20 2b 45 28 89 c1 8b 55 28 48 8b 45 18 48 01 c2 4c 8d ?? ?? 48 8b 45 f0 48 c7 44 24 20 00 00 00 00 4d 89 c1 41 89 c8 48 89 c1 48 8b } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}