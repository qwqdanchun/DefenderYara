
rule VirTool_Win32_VBInject_PK_bit{
	meta:
		description = "VirTool:Win32/VBInject.PK!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 30 00 68 00 74 00 6d 00 6c 00 2e 00 6c 00 6e 00 6b 00 } //01 00 
		$a_01_1 = {5c 00 70 00 6f 00 5c 00 43 00 64 00 6d 00 61 00 74 00 6f 00 72 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_2 = {35 00 35 00 38 00 39 00 45 00 35 00 35 00 35 00 36 00 35 00 39 00 30 00 39 00 30 00 34 00 32 00 33 00 36 00 39 00 30 00 39 00 30 00 39 00 30 00 39 00 30 00 39 00 30 00 39 00 30 00 39 00 30 00 39 00 30 00 45 00 38 00 41 00 } //01 00 
		$a_01_3 = {44 00 34 00 38 00 33 00 36 00 38 00 35 00 32 00 34 00 30 00 44 00 44 00 39 00 44 00 36 00 44 00 30 00 34 00 34 00 43 00 } //00 00 
	condition:
		any of ($a_*)
 
}