
rule VirTool_Win32_VBInject_gen_DJ{
	meta:
		description = "VirTool:Win32/VBInject.gen!DJ,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {aa 08 08 00 8f 28 01 90 09 0a 00 94 90 01 02 1c 00 94 90 1b 01 10 00 90 00 } //01 00 
		$a_01_1 = {f5 44 00 00 00 08 08 00 8f 74 01 f5 07 00 01 00 08 08 00 } //01 00 
		$a_03_2 = {4a c2 f5 01 00 00 00 aa 90 02 1f e7 fb 13 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_gen_DJ_2{
	meta:
		description = "VirTool:Win32/VBInject.gen!DJ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {8b 03 8b 48 0c 8b 45 c0 66 0f b6 0c 11 66 33 0c 70 } //01 00 
		$a_01_1 = {3a 00 3b 00 54 00 4d 00 56 00 5a 00 4d 00 53 00 } //01 00 
		$a_02_2 = {8b c4 83 c0 04 93 8b e3 8b 5b fc 81 eb 90 01 02 40 00 87 dd 83 bd 90 01 02 40 00 01 0f 84 90 01 02 00 00 80 bd 90 01 02 40 00 90 90 74 90 01 01 8d 85 90 01 02 40 00 50 ff 95 90 01 02 40 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}