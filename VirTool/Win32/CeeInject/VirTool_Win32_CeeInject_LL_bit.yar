
rule VirTool_Win32_CeeInject_LL_bit{
	meta:
		description = "VirTool:Win32/CeeInject.LL!bit,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 05 00 00 05 00 "
		
	strings :
		$a_03_0 = {8d 69 06 c7 44 24 90 01 02 00 00 00 8d 9b 00 00 00 00 8a 04 0e 33 d2 0f b6 c0 f6 c1 01 75 0c f7 f5 66 0f be 82 90 01 03 00 eb 0c f7 74 24 90 01 01 66 0f be 82 90 01 03 00 66 89 04 4b 41 3b cf 72 d2 90 00 } //03 00 
		$a_03_1 = {72 d2 c6 04 3e 00 5f 5e 5b c3 90 09 1b 00 8b 04 dd 90 01 04 8a 89 90 01 04 32 0c 30 88 0c 3e 46 3b 34 dd 90 00 } //02 00 
		$a_01_2 = {8b 54 24 10 5e 8b 42 24 8d 04 78 0f b7 0c 28 8b 42 1c 5f 5b 8d 04 88 8b 4c 24 18 8b 04 28 03 c5 5d 89 01 } //01 00 
		$a_03_3 = {83 c4 18 33 f6 8d a4 24 00 00 00 00 ff d7 00 44 34 08 46 83 fe 04 72 f4 8b 44 24 08 5f a3 90 01 03 00 33 c0 5e 59 c3 90 00 } //01 00 
		$a_03_4 = {6a 04 68 00 30 00 00 57 6a 00 55 6a 05 68 90 01 04 6a 11 e8 90 01 03 ff 8b 1d 90 01 04 8b f0 83 c4 20 85 f6 75 15 ff d3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}