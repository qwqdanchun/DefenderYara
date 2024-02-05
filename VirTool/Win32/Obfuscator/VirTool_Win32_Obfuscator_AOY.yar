
rule VirTool_Win32_Obfuscator_AOY{
	meta:
		description = "VirTool:Win32/Obfuscator.AOY,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8a 0c 38 32 0c 13 32 ca 40 83 } //01 00 
		$a_01_1 = {8a 0a 88 0c 03 8b 4d fc 8b 54 8d ac 42 89 54 8d ac 41 83 f9 08 } //01 00 
		$a_01_2 = {8a 11 88 14 03 8b 4d f8 8b 54 8d ac 42 89 54 8d ac 41 83 f9 08 } //00 00 
		$a_00_3 = {80 } //10 00 
	condition:
		any of ($a_*)
 
}