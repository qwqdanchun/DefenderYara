
rule VirTool_Win32_VBInject_ADZ{
	meta:
		description = "VirTool:Win32/VBInject.ADZ,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {81 fd 21 ff 21 ff 75 90 09 0c 00 66 0f 90 01 02 66 0f 90 01 02 66 0f 90 00 } //01 00 
		$a_03_1 = {81 78 fc 10 10 10 10 75 90 01 01 66 0f 90 01 02 66 0f 90 01 02 66 0f 90 00 } //01 00 
		$a_00_2 = {80 } //10 00 
	condition:
		any of ($a_*)
 
}