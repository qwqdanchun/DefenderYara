
rule VirTool_Win32_CeeInject_DG{
	meta:
		description = "VirTool:Win32/CeeInject.DG,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {8d 54 18 78 56 8b 32 03 f3 8b 46 24 8b 4e 1c 03 c3 89 45 90 01 01 8b 46 20 90 00 } //01 00 
		$a_03_1 = {8b 04 88 03 c3 50 ff 75 90 01 01 e8 90 01 03 00 59 59 85 c0 75 90 01 01 8b 4d 90 01 01 8b 45 90 01 01 0f b7 04 48 8b 4d 90 01 01 8b 3c 81 90 00 } //01 00 
		$a_01_2 = {25 73 25 73 25 73 25 73 25 73 25 73 } //01 00  %s%s%s%s%s%s
		$a_03_3 = {6a 07 33 c0 89 55 90 01 01 5a c6 45 90 01 01 00 8b ca 8d 7d 90 01 01 f3 ab 66 ab aa 33 c0 90 00 } //01 00 
		$a_03_4 = {ff 70 10 8b 50 14 8b 40 0c 03 41 34 03 d7 52 50 ff 75 90 01 01 ff 55 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}