
rule VirTool_Win32_Obfuscator_AIV{
	meta:
		description = "VirTool:Win32/Obfuscator.AIV,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {30 02 42 49 75 fa c3 } //01 00 
		$a_01_1 = {89 45 f0 8b 45 fc 8b 40 28 03 45 f4 8b 55 f0 89 42 04 } //00 00 
	condition:
		any of ($a_*)
 
}