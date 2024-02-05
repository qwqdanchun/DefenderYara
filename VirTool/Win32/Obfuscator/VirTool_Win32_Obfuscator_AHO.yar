
rule VirTool_Win32_Obfuscator_AHO{
	meta:
		description = "VirTool:Win32/Obfuscator.AHO,SIGNATURE_TYPE_PEHSTR_EXT,05 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {8a 10 83 c0 04 32 d1 88 94 35 90 01 04 46 3d 90 01 04 7c ea 8d 85 90 1b 00 ff d0 90 00 } //01 00 
		$a_03_1 = {83 c2 01 89 95 90 01 04 81 bd 90 01 06 00 00 7d 90 01 01 8b 85 90 01 04 8b 8c 85 90 01 04 33 8d 90 01 04 8b 95 90 01 04 88 90 01 06 eb 90 01 01 8d 85 90 01 04 ff d0 90 09 06 00 8b 95 90 00 } //01 00 
		$a_03_2 = {83 c2 01 89 95 90 01 04 81 bd 90 01 06 00 00 7d 90 01 01 8b 85 90 01 04 8b 8c 85 90 01 04 33 8d 90 01 04 8b 95 90 01 04 88 8a 90 01 04 eb 90 01 01 b8 90 01 04 ff d0 90 09 06 00 8b 95 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}