
rule VirTool_Win32_VBInject_gen_JT{
	meta:
		description = "VirTool:Win32/VBInject.gen!JT,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 45 00 35 00 79 00 56 00 33 00 52 00 70 00 56 00 6d 00 56 00 79 00 61 00 58 00 56 00 30 00 62 00 47 00 46 00 6c 00 54 00 57 00 39 00 74 00 65 00 58 00 49 00 3d 00 } //01 00 
		$a_01_1 = {57 00 56 00 4e 00 55 00 55 00 30 00 31 00 46 00 51 00 31 00 78 00 75 00 62 00 33 00 4a 00 30 00 62 00 47 00 39 00 6c 00 55 00 7a 00 42 00 30 00 4d 00 54 00 42 00 54 00 58 00 48 00 4a 00 6c 00 61 00 58 00 5a 00 6c 00 59 00 31 00 78 00 7a 00 61 00 55 00 52 00 72 00 63 00 30 00 56 00 63 00 64 00 57 00 35 00 74 00 } //01 00 
		$a_01_2 = {53 00 43 00 59 00 7a 00 51 00 77 00 3d 00 3d 00 } //01 00 
		$a_01_3 = {64 00 46 00 4a 00 45 00 62 00 47 00 4e 00 6c 00 62 00 57 00 39 00 79 00 63 00 48 00 4e 00 6c 00 51 00 6e 00 4e 00 6d 00 64 00 57 00 56 00 6d 00 63 00 67 00 3d 00 3d 00 } //01 00 
		$a_01_4 = {5a 00 45 00 46 00 31 00 61 00 6e 00 52 00 7a 00 62 00 31 00 52 00 6c 00 61 00 31 00 42 00 75 00 61 00 58 00 4a 00 70 00 64 00 6d 00 56 00 73 00 5a 00 57 00 64 00 7a 00 } //01 00 
		$a_01_5 = {54 00 31 00 4e 00 55 00 52 00 6b 00 46 00 58 00 52 00 56 00 4a 00 4e 00 58 00 47 00 4e 00 70 00 62 00 33 00 4a 00 76 00 63 00 33 00 52 00 6d 00 55 00 31 00 78 00 6a 00 5a 00 58 00 4a 00 31 00 64 00 47 00 6b 00 67 00 65 00 57 00 56 00 44 00 64 00 47 00 35 00 79 00 5a 00 51 00 3d 00 3d 00 } //01 00 
	condition:
		any of ($a_*)
 
}