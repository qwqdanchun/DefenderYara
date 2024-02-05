
rule VirTool_Win32_Obfuscator_SU{
	meta:
		description = "VirTool:Win32/Obfuscator.SU,SIGNATURE_TYPE_PEHSTR_EXT,05 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {83 f8 06 75 90 01 01 53 ff 15 90 01 04 c7 05 90 01 04 ef be ad de 90 00 } //01 00 
		$a_01_1 = {8b 48 18 8b 30 8b 78 04 8b 58 08 8b 68 0c 8b 60 10 ff e1 } //01 00 
		$a_01_2 = {8b 72 19 6a 04 68 00 30 00 00 81 c6 00 02 00 00 56 6a 00 ff 15 } //00 00 
	condition:
		any of ($a_*)
 
}