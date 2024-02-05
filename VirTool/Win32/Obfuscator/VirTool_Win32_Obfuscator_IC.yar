
rule VirTool_Win32_Obfuscator_IC{
	meta:
		description = "VirTool:Win32/Obfuscator.IC,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {b8 00 00 00 27 90 09 02 00 83 90 09 1e 00 81 90 01 01 90 04 01 10 a0 2d af 00 00 00 90 0a 1a 00 8b 90 01 01 24 0c 90 00 } //01 00 
		$a_02_1 = {64 ff 35 00 00 00 00 90 01 09 64 89 25 00 00 00 00 90 00 } //01 00 
		$a_02_2 = {b8 00 00 00 27 90 01 05 33 c0 c3 90 01 10 64 8f 05 00 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}