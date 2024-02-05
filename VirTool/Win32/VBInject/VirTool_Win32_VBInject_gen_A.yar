
rule VirTool_Win32_VBInject_gen_A{
	meta:
		description = "VirTool:Win32/VBInject.gen!A,SIGNATURE_TYPE_PEHSTR,0e 00 0b 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {2d 00 2d 00 5a 00 30 00 30 00 50 00 2d 00 2d 00 } //01 00 
		$a_01_1 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_01_2 = {47 00 65 00 74 00 44 00 72 00 69 00 76 00 65 00 } //01 00 
		$a_01_3 = {53 00 59 00 4e 00 54 00 48 00 45 00 54 00 49 00 43 00 55 00 53 00 45 00 52 00 2e 00 46 00 47 00 56 00 53 00 } //01 00 
		$a_01_4 = {5c 00 45 00 76 00 65 00 72 00 77 00 6f 00 6f 00 64 00 5c 00 } //02 00 
		$a_01_5 = {41 70 70 6c 69 63 61 74 69 6f 6e 45 6e 63 72 79 70 74 69 6f 6e } //01 00 
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00 
		$a_01_7 = {53 74 75 62 00 63 73 72 73 73 } //00 00 
	condition:
		any of ($a_*)
 
}