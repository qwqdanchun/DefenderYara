
rule VirTool_Win32_CeeInject_gen_IX{
	meta:
		description = "VirTool:Win32/CeeInject.gen!IX,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0f bf 5d 06 4b 3b 90 01 05 0f 8c 90 01 02 00 00 ff 35 90 01 04 68 28 00 00 00 8b 1d 90 01 04 8d 2d 90 01 04 8b 7d 3c 8b 35 90 01 04 6b f6 28 01 f7 81 c7 f8 00 00 00 90 03 01 01 01 11 fb 53 90 00 } //01 00 
		$a_03_1 = {ff 75 0c ff 75 08 e8 90 01 04 85 c0 74 13 ff 75 20 ff 75 1c ff 75 18 ff 75 14 ff 75 10 ff d0 eb 02 33 c0 5d c2 1c 00 90 00 } //01 00 
		$a_03_2 = {8d 45 18 89 c3 8b 2d 90 01 04 0f bf 45 14 01 c3 89 1d 90 01 04 c7 05 90 01 04 00 00 00 00 8b 2d 90 01 04 0f bf 5d 06 4b 3b 1d 90 01 04 0f 8c 90 01 01 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_CeeInject_gen_IX_2{
	meta:
		description = "VirTool:Win32/CeeInject.gen!IX,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {b8 67 66 66 66 f7 eb c1 fa 02 8b cb 8b da } //01 00 
		$a_03_1 = {ff 75 0c ff 75 08 e8 90 01 04 85 90 01 01 74 22 ff 75 34 ff 75 30 ff 75 2c ff 75 28 ff 75 24 ff 75 20 ff 75 1c ff 75 18 ff 75 14 ff 75 10 ff d0 eb 02 33 c0 5d c2 30 00 90 00 } //01 00 
		$a_03_2 = {31 fb 8b 7c 24 90 01 01 31 fb 8b 7c 24 04 6b ff 03 8b 74 24 04 01 f6 29 f7 31 fb 8b 7c 24 90 01 01 31 fb 89 d8 88 44 24 90 01 01 0f be 44 24 90 01 01 50 8b 5c 24 90 01 01 03 5c 24 90 01 01 89 d8 e8 90 01 04 ff 44 24 90 01 01 8b 5c 24 90 01 01 3b 5c 24 90 01 01 7e 08 c7 44 24 90 01 01 00 00 00 00 ff 44 24 90 01 01 0f 81 90 01 02 ff ff 90 00 } //01 00 
		$a_03_3 = {0f bf 5d 06 4b 3b 90 01 05 0f 8c 90 01 02 00 00 ff 35 90 01 04 68 28 00 00 00 8b 1d 90 01 04 8d 2d 90 01 04 8b 7d 3c 8b 35 90 01 04 6b f6 28 01 f7 81 c7 f8 00 00 00 01 fb 53 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}