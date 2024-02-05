
rule VirTool_Win32_VBInject_gen_EE{
	meta:
		description = "VirTool:Win32/VBInject.gen!EE,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {f5 e8 00 00 00 71 78 ff 1e } //01 00 
		$a_03_1 = {f5 07 00 01 00 71 90 01 02 1e 90 00 } //01 00 
		$a_03_2 = {c2 08 08 00 8a 3c 00 fc 90 90 fd 67 90 01 02 04 90 01 02 28 90 01 04 fb b4 90 01 02 fb 9c 90 01 02 fb 17 90 00 } //01 00 
		$a_01_3 = {48 00 35 00 39 00 35 00 39 00 35 00 39 00 35 00 38 00 } //01 00 
		$a_03_4 = {f5 26 00 00 00 04 90 01 01 ff 0a 90 01 01 00 08 00 04 90 01 01 ff 3a 90 01 01 ff 90 01 01 00 fb ef 90 01 02 fc 46 71 90 00 } //01 00 
		$a_03_5 = {f5 58 59 59 59 90 03 05 28 71 90 01 02 1e 59 90 01 02 6c 90 01 02 f5 90 01 01 00 00 00 0a 90 01 01 00 0c 00 3c 90 03 01 0c 1e 6c 90 01 01 ff f5 90 01 01 00 00 00 90 00 } //01 00 
		$a_03_6 = {80 0c 00 4a e4 f4 03 fe 6b 90 01 01 90 03 01 01 fe ff 90 01 02 1e 90 00 } //01 00 
		$a_03_7 = {f4 58 fc 0d 0a 90 01 01 00 08 00 1e 90 01 02 90 02 30 04 90 01 01 ff f4 5b 90 00 } //01 00 
		$a_03_8 = {f5 58 00 00 00 fc 0e 0a 90 01 01 00 08 00 1e 90 01 02 90 02 60 04 90 01 01 90 17 03 01 01 01 fd fe ff 90 03 02 05 f4 5b f5 5b 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}