
rule VirTool_Win32_Obfuscator_KK_MTB{
	meta:
		description = "VirTool:Win32/Obfuscator.KK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 84 24 60 01 00 00 81 84 24 bc 01 00 00 90 01 04 81 44 24 20 39 2d 8e 45 81 84 24 14 02 00 00 90 01 04 81 ac 24 88 00 00 00 90 01 04 81 ac 24 e0 01 00 00 90 01 04 b8 90 01 04 f7 a4 24 e0 00 00 00 8b 84 24 e0 00 00 00 81 84 24 9c 02 00 00 90 01 04 81 6c 24 5c 90 01 04 81 84 24 44 02 00 00 90 01 04 30 0c 37 83 ee 01 0f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}