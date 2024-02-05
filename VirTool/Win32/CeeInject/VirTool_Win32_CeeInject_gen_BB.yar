
rule VirTool_Win32_CeeInject_gen_BB{
	meta:
		description = "VirTool:Win32/CeeInject.gen!BB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 03 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 8b 85 90 01 02 ff ff 8b 48 50 51 8b 95 90 01 02 ff ff 8b 42 34 50 8b 8d 90 01 02 ff ff 51 ff 15 90 00 } //02 00 
		$a_03_1 = {0f b7 48 06 39 8d 90 01 02 ff ff 7d 51 8b 95 90 01 02 ff ff 8b 42 3c 8b 8d 90 01 02 ff ff 6b c9 28 90 00 } //02 00 
		$a_03_2 = {81 e1 ff 00 00 80 79 08 49 81 c9 00 ff ff ff 41 8b 45 08 03 85 90 01 02 ff ff 0f b6 10 33 94 8d 90 01 02 ff ff 8b 45 08 03 85 90 01 02 ff ff 88 10 e9 90 00 } //01 00 
		$a_01_3 = {ff ff 07 00 01 00 8b 45 0c 89 85 } //01 00 
	condition:
		any of ($a_*)
 
}