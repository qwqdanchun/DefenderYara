
rule VirTool_Win32_Obfuscator_TL{
	meta:
		description = "VirTool:Win32/Obfuscator.TL,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 40 68 30 04 00 00 68 90 01 04 ff 15 90 00 } //01 00 
		$a_03_1 = {8b 45 10 25 ff 00 00 00 85 c0 74 90 01 01 8b 4d 0c 8b 11 03 55 f8 8b 45 0c 89 10 eb 90 01 01 8b 4d 0c 8b 11 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}