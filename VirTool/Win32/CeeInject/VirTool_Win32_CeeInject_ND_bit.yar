
rule VirTool_Win32_CeeInject_ND_bit{
	meta:
		description = "VirTool:Win32/CeeInject.ND!bit,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 45 78 70 6c 6f 72 65 72 00 4e 6f 52 75 6e 00 00 00 4e 6f 44 72 69 76 65 73 } //01 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 4e 65 74 77 6f 72 6b 00 00 4e 6f 45 6e 74 69 72 65 4e 65 74 77 6f 72 6b } //02 00 
		$a_03_2 = {0f b7 06 8b c8 c1 e9 0c 25 90 01 04 83 f9 03 75 90 01 01 8b 4d 0c 01 0c 18 8b 42 04 83 e8 08 47 d1 e8 83 c6 02 3b f8 72 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}