
rule VirTool_Win32_Obfuscator_ON{
	meta:
		description = "VirTool:Win32/Obfuscator.ON,SIGNATURE_TYPE_PEHSTR_EXT,04 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 7b 3c 00 10 00 00 77 90 01 01 03 5b 3c 8b 43 08 90 00 } //01 00 
		$a_01_1 = {3d 83 a7 ab 4b 75 02 } //01 00 
		$a_03_2 = {3d 7c 58 54 b4 75 02 90 09 02 00 f7 d0 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}