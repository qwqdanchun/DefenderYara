
rule VirTool_Win32_Admipesz_A_MTB{
	meta:
		description = "VirTool:Win32/Admipesz.A!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {55 89 e5 51 83 ec 44 90 02 29 89 44 24 10 c7 44 24 0c 02 00 00 00 c7 44 24 08 00 00 00 00 8b 45 f4 89 44 24 04 c7 04 24 02 00 00 80 90 01 05 83 ec 14 89 45 e8 83 7d e8 00 90 01 02 8b 45 e8 89 44 24 04 c7 04 24 bc 50 40 00 90 01 05 b8 01 00 00 00 90 00 } //01 00 
		$a_03_1 = {8b 45 ec 89 04 24 90 01 08 8b 45 e0 89 54 24 14 8b 55 ec 89 54 24 10 c7 44 24 0c 01 00 00 00 c7 44 24 08 00 00 00 00 8b 55 f0 89 54 24 04 89 04 24 90 01 05 83 ec 18 89 45 e4 83 7d e4 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}