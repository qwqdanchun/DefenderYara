
rule VirTool_Win32_Injector_BY{
	meta:
		description = "VirTool:Win32/Injector.BY,SIGNATURE_TYPE_PEHSTR_EXT,64 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 a1 30 00 00 00 83 c0 68 3e 8b 00 83 f8 70 74 09 c7 45 fc 00 00 00 00 eb 07 c7 45 fc 01 00 00 00 } //01 00 
		$a_03_1 = {58 59 59 59 53 50 8d 85 90 01 01 ff fe ff 50 e8 90 09 03 00 c7 45 90 00 } //01 00 
		$a_03_2 = {58 59 59 59 6a 04 5b 53 90 09 03 00 c7 45 90 00 } //01 00 
		$a_03_3 = {59 50 00 00 e8 90 01 04 8b 55 10 83 c4 30 85 d2 6a 06 5e 7e 90 09 03 00 c7 45 90 00 } //01 00 
		$a_03_4 = {59 50 00 00 6a 02 8d 45 90 01 01 50 8d 45 90 01 01 50 90 09 03 00 c7 45 90 00 } //01 00 
		$a_01_5 = {0f 31 8b d8 0f 31 2b c3 50 83 f8 01 74 f2 58 3d 00 02 00 00 72 09 c7 45 fc 01 00 00 00 eb 07 } //00 00 
		$a_00_6 = {78 da } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Injector_BY_2{
	meta:
		description = "VirTool:Win32/Injector.BY,SIGNATURE_TYPE_PEHSTR_EXT,64 00 15 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {64 a1 30 00 00 00 83 90 01 01 68 3e 8b 00 83 f8 70 74 09 c7 45 fc 00 00 00 00 eb 07 c7 45 fc 01 00 00 00 90 00 } //0a 00 
		$a_01_1 = {0f 31 8b d8 0f 31 2b c3 50 83 f8 01 74 f2 58 3d 00 02 00 00 72 09 c7 45 fc 01 00 00 00 eb 07 } //01 00 
		$a_03_2 = {58 59 59 59 b8 59 50 00 00 66 89 45 90 01 01 6a 06 58 90 09 03 00 c7 45 90 00 } //01 00 
		$a_03_3 = {c7 45 ec 58 59 59 59 e8 90 01 02 00 00 6a 02 8d 45 ec 50 8d 45 7c 50 c7 45 90 01 01 59 50 00 00 90 00 } //01 00 
		$a_03_4 = {c7 45 e4 58 59 59 59 6a 04 8d 45 e4 50 8d 45 78 50 e8 90 01 02 00 00 c7 45 e4 59 50 00 00 90 00 } //01 00 
		$a_01_5 = {c7 45 78 58 59 59 59 b8 59 50 00 00 66 11 45 7c 6a 06 58 33 c9 3b fb 7e 32 } //00 00 
	condition:
		any of ($a_*)
 
}