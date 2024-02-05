
rule VirTool_Win32_Obfuscator_ANU{
	meta:
		description = "VirTool:Win32/Obfuscator.ANU,SIGNATURE_TYPE_PEHSTR_EXT,64 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {8b 01 2b 03 33 03 35 ff ff ff ff 89 55 c0 8b 15 90 01 03 10 d1 e2 89 15 90 01 03 10 8b 55 c0 03 05 90 01 03 10 89 45 bc 8b 45 bc 89 85 54 ff ff ff ff b5 54 ff ff ff 8f 02 33 c0 90 00 } //01 00 
		$a_03_1 = {47 43 99 7d 81 3d 90 01 03 10 ee ab ed fe 75 05 e9 d0 f8 ff ff 90 09 06 00 81 05 90 01 03 10 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}