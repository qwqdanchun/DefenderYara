
rule VirTool_Win32_Obfuscator_TT{
	meta:
		description = "VirTool:Win32/Obfuscator.TT,SIGNATURE_TYPE_PEHSTR_EXT,05 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 55 fc 0f b7 49 16 81 f2 90 01 04 81 c2 90 00 } //01 00 
		$a_01_1 = {ff 50 24 81 7d f8 88 13 00 00 76 cc } //01 00 
		$a_01_2 = {ff 70 50 6a 00 ff d1 83 65 f8 00 89 45 fc 8b 45 fc } //01 00 
		$a_03_3 = {eb 0a 80 f1 90 01 01 80 90 03 01 01 c1 e9 90 01 01 88 08 40 42 8a 0a 80 f9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}