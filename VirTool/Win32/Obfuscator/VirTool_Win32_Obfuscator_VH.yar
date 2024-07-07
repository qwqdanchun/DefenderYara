
rule VirTool_Win32_Obfuscator_VH{
	meta:
		description = "VirTool:Win32/Obfuscator.VH,SIGNATURE_TYPE_PEHSTR_EXT,03 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {e8 00 00 00 00 58 ba 90 01 01 ab 40 00 90 90 81 ea 90 01 01 ab 40 00 90 90 01 d0 89 c1 90 00 } //1
		$a_03_1 = {50 58 8b 02 2d 90 01 04 89 02 83 c2 04 e2 f2 59 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}