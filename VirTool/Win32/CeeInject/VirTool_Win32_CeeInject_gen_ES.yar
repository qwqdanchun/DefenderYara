
rule VirTool_Win32_CeeInject_gen_ES{
	meta:
		description = "VirTool:Win32/CeeInject.gen!ES,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {89 45 d8 8d 47 5c 50 53 ff d6 83 c7 2e } //01 00 
		$a_01_1 = {0f b7 46 06 ff 45 fc 83 45 08 28 39 45 fc 7c } //01 00 
		$a_03_2 = {6a 40 68 00 30 00 00 ff 76 50 ff 76 34 ff 75 90 01 01 ff 55 cc 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}