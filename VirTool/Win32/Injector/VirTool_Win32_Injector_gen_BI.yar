
rule VirTool_Win32_Injector_gen_BI{
	meta:
		description = "VirTool:Win32/Injector.gen!BI,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0b 00 06 00 00 05 00 "
		
	strings :
		$a_00_0 = {64 a1 18 00 00 00 8b 40 30 8b 40 0c 8b 40 1c 8b 50 08 8b 42 3c 8b 44 10 78 83 65 f0 00 } //05 00 
		$a_02_1 = {c1 e9 02 b8 90 01 04 bf 04 00 00 00 50 31 02 d1 c0 03 d7 e2 f8 90 00 } //01 00 
		$a_09_2 = {4c 64 72 55 6e 6c 6f 61 64 44 6c 6c 00 } //01 00 
		$a_09_3 = {47 64 69 70 44 69 73 70 6f 73 65 49 6d 61 67 65 00 } //01 00 
		$a_09_4 = {5a 77 41 6c 6c 6f 63 61 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 00 } //01 00 
		$a_09_5 = {4c 64 72 47 65 74 50 72 6f 63 65 64 75 72 65 41 64 64 72 65 73 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}