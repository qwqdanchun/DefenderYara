
rule VirTool_Win32_VBInject_gen_BX{
	meta:
		description = "VirTool:Win32/VBInject.gen!BX,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {94 1c fb 1c 00 94 1c fb 10 00 aa 71 24 fc 04 60 } //01 00 
		$a_01_1 = {94 54 fa 1c 00 94 54 fa 10 00 aa 71 9c fd } //02 00 
		$a_00_2 = {38 00 42 00 34 00 43 00 32 00 34 00 30 00 38 00 35 00 31 00 3c 00 50 00 41 00 54 00 43 00 48 00 31 00 3e 00 45 00 38 00 3c 00 50 00 41 00 54 00 43 00 48 00 32 00 3e 00 35 00 39 00 38 00 39 00 30 00 31 00 36 00 36 00 33 00 31 00 43 00 30 00 43 00 33 00 } //01 00 
	condition:
		any of ($a_*)
 
}