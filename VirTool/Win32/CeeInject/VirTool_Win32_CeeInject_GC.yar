
rule VirTool_Win32_CeeInject_GC{
	meta:
		description = "VirTool:Win32/CeeInject.GC,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {0f a2 0f a2 0f 31 } //01 00 
		$a_01_1 = {0f 31 0f 31 0f a2 } //01 00 
		$a_03_2 = {0f a2 0f a2 e9 90 01 02 ff ff 90 00 } //01 00 
		$a_03_3 = {0f 31 0f 31 e9 90 01 02 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}