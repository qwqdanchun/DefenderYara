
rule VirTool_Win32_VBInject_gen_HO{
	meta:
		description = "VirTool:Win32/VBInject.gen!HO,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {c7 04 48 56 00 90 02 40 66 c7 04 48 57 00 90 02 40 66 c7 04 48 8b 00 90 02 40 66 c7 04 48 90 04 01 02 7c 6c 00 90 02 40 66 c7 04 48 24 00 90 00 } //01 00 
		$a_02_1 = {c7 42 1a 14 00 90 02 10 66 c7 42 1c f3 00 90 02 10 66 c7 42 1e a4 00 90 02 10 66 c7 42 20 5f 00 90 02 10 66 c7 42 22 5e 00 90 00 } //01 00 
		$a_02_2 = {c7 43 1a 14 00 90 02 10 66 c7 43 1c f3 00 90 02 10 66 c7 43 1e a4 00 90 02 10 66 c7 43 20 5f 00 90 02 10 66 c7 43 22 5e 00 90 00 } //01 00 
	condition:
		any of ($a_*)
 
}