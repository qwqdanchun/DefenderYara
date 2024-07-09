
rule VirTool_Win32_Proholz_A_MTB{
	meta:
		description = "VirTool:Win32/Proholz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {8b 55 e0 8b 45 84 c7 44 24 10 40 00 00 00 c7 44 24 0c 00 30 00 00 89 54 24 08 c7 44 24 04 00 00 00 00 89 04 24 e8 ?? ?? ?? ?? 83 ec 14 89 45 d8 83 7d d8 00 } //1
		$a_03_1 = {c7 04 24 e8 51 40 00 e8 ?? ?? ?? ?? c7 04 24 12 00 00 00 e8 ?? ?? ?? ?? 83 ec 04 8b 45 88 89 04 24 e8 ?? ?? ?? ?? 83 ec 04 c7 04 24 1c 52 40 00 e8 ?? ?? ?? ?? 8b } //1
		$a_03_2 = {8b 55 e0 8b 45 84 c7 44 24 10 00 00 00 00 89 54 24 0c 8b 55 dc 89 54 24 08 8b 55 d8 89 54 24 04 89 04 24 e8 ?? ?? ?? ?? 83 ec 14 85 c0 75 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}