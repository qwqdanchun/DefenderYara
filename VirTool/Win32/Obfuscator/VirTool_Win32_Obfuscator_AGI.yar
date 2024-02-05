
rule VirTool_Win32_Obfuscator_AGI{
	meta:
		description = "VirTool:Win32/Obfuscator.AGI,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 ec 1c c7 45 90 01 03 00 00 6a 00 e8 90 01 03 ff 83 c4 04 c7 45 90 01 03 00 00 e8 90 01 02 ff ff c7 45 90 01 03 00 00 e8 90 01 02 ff ff c7 45 90 01 03 00 00 e8 90 01 02 ff ff c7 45 90 01 03 00 00 68 90 01 02 40 00 6a 00 6a 00 68 90 01 02 40 00 6a 00 6a 00 ff 15 90 01 02 40 00 a3 90 01 02 40 00 c7 45 90 01 03 00 00 6a ff a1 90 01 02 40 00 50 ff 15 90 01 02 40 00 c7 45 90 01 03 00 00 33 c0 8b e5 5d c2 10 00 90 00 } //01 00 
		$a_03_1 = {51 6a 00 6a 00 68 90 01 02 40 00 6a 00 6a 00 ff 15 90 01 02 40 00 89 45 90 01 01 6a ff 8b 55 90 01 01 52 ff 15 90 01 02 40 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}