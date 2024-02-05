
rule VirTool_Win32_CeeInject_gen_CV{
	meta:
		description = "VirTool:Win32/CeeInject.gen!CV,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {6a 40 68 00 30 00 00 8b 55 90 01 01 52 8b 45 90 01 01 50 8b 0d 90 01 04 51 ff 55 90 00 } //01 00 
		$a_03_1 = {eb 0f 8b 85 90 01 02 ff ff 83 c0 01 89 85 90 1b 00 ff ff 8b 8d 90 01 02 ff ff 0f b7 51 06 39 95 90 1b 00 ff ff 0f 8d 90 00 } //01 00 
		$a_03_2 = {ff ff 8b 48 34 8b 95 90 01 02 ff ff 03 4a 28 89 8d 90 01 02 ff ff 90 09 04 00 8b 85 90 1b 00 90 00 } //01 00 
		$a_03_3 = {81 e1 ff 00 00 80 79 08 49 81 c9 00 ff ff ff 41 8b 45 08 90 03 00 07 03 85 90 01 02 ff ff 0f b6 10 33 94 8d 90 01 02 ff ff 8b 45 08 03 85 90 01 02 ff ff 88 10 90 00 } //01 00 
		$a_01_4 = {ff ff 07 00 01 00 8b 45 0c 89 85 } //01 00 
	condition:
		any of ($a_*)
 
}