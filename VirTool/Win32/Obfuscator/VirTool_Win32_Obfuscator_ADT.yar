
rule VirTool_Win32_Obfuscator_ADT{
	meta:
		description = "VirTool:Win32/Obfuscator.ADT,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {88 5c 38 01 b3 65 b2 4d b0 46 b1 57 } //01 00 
		$a_03_1 = {ff d6 8b 3d 90 01 04 50 ff d7 a3 90 09 18 00 c6 45 90 01 01 43 c6 45 90 01 01 6f c6 45 90 01 01 75 c6 45 90 01 01 6e c6 45 90 01 01 74 c6 45 90 01 01 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}