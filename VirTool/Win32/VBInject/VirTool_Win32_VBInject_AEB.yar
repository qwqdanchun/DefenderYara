
rule VirTool_Win32_VBInject_AEB{
	meta:
		description = "VirTool:Win32/VBInject.AEB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {31 74 ff 6c 74 ff 1b 06 00 2a 31 74 ff 6c 74 ff 1b 07 00 2a 31 74 ff 6c 74 ff 1b 08 00 2a 31 74 ff 6c 74 ff 1b 09 00 2a 31 74 ff 6c 74 ff 1b 0a 00 2a 31 74 ff 6c 74 ff 1b 0b 00 2a 31 74 ff 6c 74 ff 1b 0c 00 2a 31 74 ff 6c 74 ff 1b 0d 00 2a 31 74 ff } //01 00 
		$a_01_1 = {38 00 31 00 37 00 43 00 31 00 44 00 46 00 43 00 34 00 33 00 34 00 33 00 } //01 00 
		$a_01_2 = {38 00 31 00 46 00 39 00 38 00 35 00 43 00 30 00 38 00 35 00 43 00 30 00 } //01 00 
		$a_01_3 = {34 00 30 00 33 00 31 00 43 00 31 00 } //01 00 
		$a_00_4 = {78 e6 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_AEB_2{
	meta:
		description = "VirTool:Win32/VBInject.AEB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {34 00 30 00 33 00 31 00 43 00 31 00 38 00 31 00 46 00 39 00 38 00 39 00 44 00 38 00 38 00 39 00 44 00 38 00 37 00 35 00 43 00 45 00 } //01 00 
		$a_01_1 = {34 00 33 00 34 00 33 00 38 00 33 00 43 00 33 00 30 00 32 00 38 00 31 00 37 00 43 00 31 00 44 00 46 00 43 00 34 00 45 00 34 00 45 00 } //01 00 
		$a_01_2 = {38 00 42 00 35 00 34 00 31 00 44 00 30 00 30 00 36 00 36 00 30 00 46 00 46 00 } //01 00 
		$a_03_3 = {ff 8b d0 8d 4d 90 01 01 e8 90 01 03 ff ff 75 90 01 01 68 90 01 03 00 e8 90 01 03 ff 8b d0 8d 4d 90 01 01 e8 90 01 03 ff ff 75 90 01 01 68 90 01 03 00 e8 90 01 03 ff 8b d0 8d 4d 90 01 01 e8 90 01 03 ff ff 75 90 01 01 68 90 01 03 00 90 09 09 00 68 90 01 03 00 e8 90 00 } //01 00 
		$a_00_4 = {78 11 } //01 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_AEB_3{
	meta:
		description = "VirTool:Win32/VBInject.AEB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {ff 8b d0 8d 4d 90 01 01 e8 90 01 03 ff ff 75 90 01 01 68 90 01 03 00 e8 90 01 03 ff 8b d0 8d 4d 90 01 01 e8 90 01 03 ff ff 75 90 01 01 68 90 01 03 00 e8 90 01 03 ff 8b d0 8d 4d 90 01 01 e8 90 01 03 ff ff 75 90 01 01 68 90 01 03 00 90 09 09 00 68 90 01 03 00 e8 90 00 } //01 00 
		$a_03_1 = {ff 8b d0 8b 4d 90 01 01 e8 90 01 03 ff 8b 45 90 01 01 ff 30 68 90 01 03 00 e8 90 01 03 ff 8b d0 8b 4d 0c e8 90 01 03 ff 8b 45 90 01 01 ff 30 68 90 01 03 00 e8 90 01 03 ff 8b d0 8b 4d 90 01 01 e8 90 01 03 ff 8b 45 90 01 01 ff 30 68 90 01 03 00 90 09 09 00 68 90 01 03 00 e8 90 00 } //01 00 
		$a_01_2 = {34 00 30 00 33 00 31 00 43 00 31 00 } //01 00 
		$a_01_3 = {34 00 33 00 34 00 33 00 38 00 33 00 43 00 33 00 30 00 32 00 38 00 31 00 37 00 43 00 31 00 44 00 } //01 00 
		$a_01_4 = {38 00 42 00 35 00 34 00 31 00 44 00 30 00 30 00 } //01 00 
		$a_00_5 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}