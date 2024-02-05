
rule VirTool_Win32_Obfuscator_VE{
	meta:
		description = "VirTool:Win32/Obfuscator.VE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {33 cf 03 ce 3b ca 8b 4d f8 8a 09 88 4d ff 90 03 07 0c 90 02 20 0f b6 4d ff 90 17 03 0c 11 16 90 02 20 90 18 90 02 20 0f b6 4d ff 90 02 20 90 18 90 02 20 90 18 90 02 20 0f b6 4d ff 90 02 20 90 18 90 02 20 90 18 90 02 20 90 18 90 02 20 0f b6 4d ff 90 03 05 0a 90 02 20 83 f1 90 02 20 90 18 90 02 20 83 f1 90 02 20 81 c1 90 01 01 00 00 00 90 00 } //01 00 
		$a_02_1 = {8b 45 dc 03 45 f8 90 02 20 8d 34 08 90 02 20 8a c1 90 02 20 02 45 f8 90 02 20 02 4d f8 90 02 20 04 04 90 03 05 0a 90 02 20 fe c1 90 02 20 90 18 90 02 20 fe c1 90 02 20 f6 e9 90 03 05 09 90 02 20 30 06 90 02 20 90 18 90 02 20 30 06 ff 45 f8 8b 4d ec be 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}