
rule VirTool_Win32_Obfuscator_YT{
	meta:
		description = "VirTool:Win32/Obfuscator.YT,SIGNATURE_TYPE_PEHSTR_EXT,64 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {f6 c1 01 74 14 a1 e8 90 03 01 01 b1 c1 90 03 01 01 42 43 00 8a 14 90 03 01 01 01 08 32 15 c8 90 03 01 01 b1 c1 90 03 01 01 42 43 00 80 f2 90 01 01 88 14 90 03 01 01 01 08 41 81 f9 88 e3 07 00 7c a2 8b 0d e8 90 03 01 01 b1 c1 90 03 01 01 42 43 00 8d 44 24 90 01 01 50 6a 00 6a 00 51 6a 00 6a 00 ff 15 e0 90 03 01 01 b0 c0 90 03 01 01 42 43 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}