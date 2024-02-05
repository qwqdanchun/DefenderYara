
rule VirTool_Win32_VBInject_gen_IN{
	meta:
		description = "VirTool:Win32/VBInject.gen!IN,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 4d 36 30 2e 44 4c 4c 00 } //01 00 
		$a_00_1 = {44 00 3a 00 5c 00 46 00 72 00 61 00 6e 00 6b 00 79 00 5c 00 } //05 00 
		$a_03_2 = {32 31 41 23 2e 30 40 78 47 72 65 61 74 90 02 04 32 31 41 23 2e 30 40 78 90 02 32 32 31 41 23 2e 30 40 78 90 00 } //01 00 
		$a_03_3 = {ff f5 01 00 00 00 6c 74 ff 9e 2a 31 70 ff 32 04 00 90 01 01 ff 90 01 01 ff 00 14 f5 00 00 00 00 6c 74 ff 9e fc 33 f4 01 eb c8 1c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_gen_IN_2{
	meta:
		description = "VirTool:Win32/VBInject.gen!IN,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {0e 00 00 00 50 72 6f 63 65 73 73 33 32 4e 65 78 74 00 } //01 00 
		$a_03_1 = {ff f5 01 00 00 00 6c 74 ff 9e 2a 31 70 ff 32 04 00 90 01 01 ff 90 01 01 ff 00 14 f5 00 00 00 00 6c 74 ff 9e fc 33 f4 01 eb c8 1c 90 00 } //0a 00 
		$a_03_2 = {33 31 42 2a 2e 31 40 79 90 03 0a 03 90 04 06 06 61 2d 7a 41 2d 5a 90 01 01 90 03 01 01 3a 23 33 31 42 2a 2e 31 40 79 90 02 32 90 03 01 01 3a 23 33 31 42 2a 2e 31 40 79 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule VirTool_Win32_VBInject_gen_IN_3{
	meta:
		description = "VirTool:Win32/VBInject.gen!IN,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {ff f5 01 00 00 00 6c 74 ff 9e 2a 31 70 ff 32 04 00 90 01 01 ff 90 01 01 ff 00 14 f5 00 00 00 00 6c 74 ff 9e fc 33 f4 01 eb c8 1c 90 00 } //01 00 
		$a_03_1 = {59 6f 75 41 6c 6c 41 76 53 75 63 6b 4d 79 44 69 63 6b 46 69 6e 61 6c 6c 79 3a 29 90 01 01 59 6f 75 41 6c 6c 41 76 53 75 63 6b 4d 79 44 69 63 6b 46 69 6e 61 6c 6c 79 3a 29 90 02 32 59 6f 75 41 6c 6c 41 76 90 00 } //01 00 
		$a_03_2 = {2e 2e 23 23 ae a9 33 32 35 35 39 5e 24 24 90 01 01 2e 2e 23 23 ae a9 33 32 35 35 39 90 00 } //01 00 
		$a_01_3 = {1e 28 32 3c 46 50 5a 64 32 1e 28 32 3c 46 50 5a } //00 00 
	condition:
		any of ($a_*)
 
}