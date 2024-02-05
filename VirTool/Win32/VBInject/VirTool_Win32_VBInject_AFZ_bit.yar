
rule VirTool_Win32_VBInject_AFZ_bit{
	meta:
		description = "VirTool:Win32/VBInject.AFZ!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 35 00 35 00 38 00 39 00 45 00 35 00 45 00 38 00 } //01 00 
		$a_01_1 = {38 00 42 00 33 00 43 00 32 00 34 00 42 00 38 00 41 00 34 00 30 00 33 00 30 00 30 00 30 00 30 00 38 00 33 00 45 00 38 00 30 00 34 00 33 00 31 00 33 00 37 00 38 00 33 00 43 00 37 00 30 00 34 00 38 00 35 00 43 00 30 00 37 00 35 00 46 00 34 00 43 00 33 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}