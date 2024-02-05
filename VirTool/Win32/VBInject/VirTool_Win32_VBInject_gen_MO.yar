
rule VirTool_Win32_VBInject_gen_MO{
	meta:
		description = "VirTool:Win32/VBInject.gen!MO,SIGNATURE_TYPE_PEHSTR_EXT,64 00 04 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {60 6a 30 5e 90 0a 03 00 c7 90 00 } //01 00 
		$a_03_1 = {64 ad 8b 40 90 0a 03 00 c7 90 00 } //01 00 
		$a_03_2 = {56 51 31 c0 90 0a 03 00 c7 90 00 } //01 00 
		$a_03_3 = {64 8b 70 30 90 0a 03 00 c7 90 00 } //01 00 
		$a_03_4 = {80 39 6e 74 90 0a 03 00 c7 90 00 } //01 00 
		$a_03_5 = {eb ec 59 5e 90 0a 03 00 c7 90 00 } //9c ff 
		$a_01_6 = {4e 00 65 00 74 00 6c 00 75 00 78 00 20 00 53 00 79 00 73 00 74 00 65 00 6d 00 73 00 20 00 50 00 72 00 69 00 76 00 61 00 74 00 65 00 20 00 4c 00 69 00 6d 00 69 00 74 00 65 00 64 00 } //00 00 
		$a_00_7 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}