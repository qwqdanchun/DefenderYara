
rule VirTool_Win32_CeeInject_gen_GM{
	meta:
		description = "VirTool:Win32/CeeInject.gen!GM,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {00 44 00 00 00 c7 05 90 01 03 00 07 00 01 00 90 09 05 00 c7 05 90 00 } //02 00 
		$a_03_1 = {68 00 30 00 00 ff 76 50 ff 76 34 ff 75 90 01 01 e8 90 01 04 53 ff 76 54 57 ff 76 34 ff 75 90 01 01 ff 15 90 01 04 33 c0 66 3b 46 06 73 90 01 01 21 45 0c 8b 47 3c 03 45 0c 6a 00 8d 84 38 f8 00 00 00 ff 70 10 8b 48 14 8b 40 0c 03 46 34 03 cf 90 00 } //02 00 
		$a_03_2 = {6a 00 68 00 30 00 00 8b 45 f8 8b 48 50 51 8b 55 f8 8b 42 34 50 8b 4d 90 01 01 51 e8 90 01 04 6a 00 8b 55 f8 8b 42 54 50 8b 4d 0c 51 8b 55 f8 8b 42 34 50 8b 4d 90 01 01 51 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}