
rule VirTool_Win32_Injector_FZ{
	meta:
		description = "VirTool:Win32/Injector.FZ,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {eb 08 83 45 90 01 01 01 83 45 90 01 01 01 81 7d 90 01 03 01 00 7e ef 90 00 } //01 00 
		$a_01_1 = {00 53 63 75 6c 6b 73 00 53 63 75 6c 6b 73 40 32 38 00 } //00 00  匀畣歬s捓汵獫㉀8
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Injector_FZ_2{
	meta:
		description = "VirTool:Win32/Injector.FZ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {ff 45 f8 ff 45 f8 81 7d f8 90 01 02 00 00 7c f1 90 09 0e 00 c7 45 f8 90 00 } //01 00 
		$a_01_1 = {b9 82 00 00 00 f3 a5 a4 } //01 00 
		$a_01_2 = {b9 51 00 00 00 f3 a5 a4 } //01 00 
		$a_01_3 = {00 53 74 65 72 6e 75 6d 00 5f 5f 5f 43 50 50 64 65 62 75 67 48 6f 6f 6b 00 } //00 00 
		$a_00_4 = {78 6b 00 } //00 03 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_Injector_FZ_3{
	meta:
		description = "VirTool:Win32/Injector.FZ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 f8 44 7d 0c 8a 4d 90 01 01 88 0c 02 40 83 f8 44 7c f4 8d 95 90 01 02 ff ff 8b 45 90 01 01 83 f8 10 90 00 } //01 00 
		$a_03_1 = {8b c8 83 c0 ff 85 c9 75 f1 33 c0 89 45 90 01 01 c7 45 90 01 03 00 00 90 00 } //01 00 
		$a_03_2 = {be 84 a0 40 00 8d bd 90 01 02 ff ff b9 90 01 01 00 00 00 f3 a5 90 00 } //00 00 
		$a_00_3 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}