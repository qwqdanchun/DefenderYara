
rule VirTool_Win32_VBInject_AA{
	meta:
		description = "VirTool:Win32/VBInject.AA,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {43 00 61 00 72 00 62 00 30 00 6e 00 20 00 43 00 72 00 79 00 70 00 74 00 65 00 72 00 } //0a 00  Carb0n Crypter
		$a_03_1 = {58 00 58 00 58 00 58 00 58 00 00 90 02 10 41 00 41 00 41 00 41 00 41 00 00 90 00 } //02 00 
		$a_01_2 = {53 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //02 00  SetThreadContext
		$a_01_3 = {57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}