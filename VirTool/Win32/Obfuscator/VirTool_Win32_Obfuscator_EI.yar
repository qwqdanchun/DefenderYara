
rule VirTool_Win32_Obfuscator_EI{
	meta:
		description = "VirTool:Win32/Obfuscator.EI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 6a 40 68 90 01 03 00 68 00 30 40 00 ff 15 90 01 01 20 40 00 68 00 30 40 00 33 90 01 01 33 90 00 } //01 00 
		$a_03_1 = {6a 00 6a 00 8d 45 e8 50 8d 45 ec 50 ff 15 90 01 01 20 40 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}