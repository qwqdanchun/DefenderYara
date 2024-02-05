
rule VirTool_Win32_Obfuscator_ACZ{
	meta:
		description = "VirTool:Win32/Obfuscator.ACZ,SIGNATURE_TYPE_PEHSTR_EXT,64 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {81 7d e8 33 64 7a 7a 75 15 } //01 00 
		$a_03_1 = {4d 5a 00 00 74 08 8b 45 90 01 01 e9 90 01 02 00 00 8b 90 01 02 8b 90 01 01 08 03 90 01 01 3c 89 90 01 02 8b 90 01 02 81 90 01 01 50 45 00 00 74 08 8b 45 90 00 } //01 00 
		$a_01_2 = {74 04 eb 18 eb 16 8b } //01 00 
		$a_03_3 = {89 45 fc 83 f8 00 74 02 eb 90 01 01 ff 75 f8 ff 75 f8 ff 75 f8 ff 75 f8 8d 55 08 83 ea 10 52 e8 90 00 } //01 00 
		$a_03_4 = {ff 55 0c 89 45 90 01 01 89 45 90 01 01 83 90 01 01 ff 75 0c c7 45 90 01 01 00 00 00 00 e9 90 01 01 00 00 00 8b 90 01 02 83 90 01 01 00 74 19 8b 90 01 02 8b 90 01 01 e8 03 90 01 01 89 90 01 02 8b 90 01 02 8b 90 01 01 e8 03 90 01 01 10 89 90 01 02 eb 18 90 00 } //00 00 
		$a_00_5 = {5d 04 00 } //00 37 
	condition:
		any of ($a_*)
 
}