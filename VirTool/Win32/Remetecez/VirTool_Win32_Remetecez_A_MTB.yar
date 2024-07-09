
rule VirTool_Win32_Remetecez_A_MTB{
	meta:
		description = "VirTool:Win32/Remetecez.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {51 6a 5a 68 ?? ?? ?? ?? 50 56 ?? ?? ?? ?? ?? ?? 85 c0 8b 45 f8 ?? ?? ?? ?? ?? ?? 83 f8 5a ?? ?? ?? ?? ?? ?? ?? ?? ?? c7 45 f8 00 00 00 00 50 8b 45 e8 6a 71 68 18 50 40 00 83 c0 5a } //1
		$a_03_1 = {c6 00 00 8d ?? ?? 83 e9 01 ?? ?? ?? ?? ?? ?? 50 ?? ?? ?? ?? 50 51 51 6a 04 51 51 51 ?? ?? ?? ?? ?? ?? ?? 50 51 ?? ?? ?? ?? ?? ?? 85 c0 } //1
		$a_03_2 = {51 6a 10 50 57 56 ?? ?? ?? ?? ?? ?? 8b 3d 14 30 40 00 85 c0 ?? ?? 83 7d f8 10 ?? ?? 8b 95 0c fd ff ff 8b 7d f4 c7 85 08 fd ff ff 01 00 00 00 8b 02 8b 4a 04 a3 ?? ?? ?? ?? 8b 45 f0 89 0d ?? ?? ?? ?? 8b 0d ?? ?? ?? ?? 89 3d } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}