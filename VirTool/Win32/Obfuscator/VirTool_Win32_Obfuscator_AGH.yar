
rule VirTool_Win32_Obfuscator_AGH{
	meta:
		description = "VirTool:Win32/Obfuscator.AGH,SIGNATURE_TYPE_PEHSTR_EXT,02 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 02 8d 85 90 01 02 00 00 50 57 ff d6 85 c0 75 90 01 01 8b 35 90 01 03 00 53 57 57 6a 02 57 6a 01 bb 00 00 00 80 53 8d 85 90 01 02 00 00 50 ff d6 83 f8 ff 75 90 01 01 57 57 6a 03 57 6a 02 68 00 00 00 40 8d 85 90 01 02 00 00 50 ff d6 83 f8 ff 75 90 01 01 57 57 6a 03 57 6a 01 53 8d 85 90 01 02 00 00 50 ff d6 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}