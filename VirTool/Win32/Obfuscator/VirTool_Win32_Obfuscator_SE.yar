
rule VirTool_Win32_Obfuscator_SE{
	meta:
		description = "VirTool:Win32/Obfuscator.SE,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {3b 45 08 0f 85 90 01 02 00 00 8b 52 04 8b 45 08 03 40 3c 8b 40 28 03 45 08 89 42 90 02 20 e8 90 16 8d 64 24 90 02 20 ff 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}