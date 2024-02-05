
rule VirTool_Win32_VBInject_gen_DY{
	meta:
		description = "VirTool:Win32/VBInject.gen!DY,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 02 00 "
		
	strings :
		$a_03_0 = {66 33 0c 42 e8 90 01 04 8a d8 90 02 18 88 18 90 00 } //01 00 
		$a_03_1 = {8b 40 1c 03 41 10 0f 80 90 09 0c 00 8b 85 90 01 02 ff ff 8b 8d 90 01 02 ff ff 90 00 } //01 00 
		$a_00_2 = {6d 00 75 00 6e 00 45 00 5c 00 6b 00 73 00 69 00 44 00 5c 00 73 00 65 00 63 00 69 00 76 00 72 00 65 00 53 00 5c 00 31 00 30 00 30 00 74 00 65 00 53 00 6c 00 6f 00 72 00 74 00 6e 00 6f 00 43 00 5c 00 4d 00 45 00 54 00 53 00 59 00 53 00 } //01 00 
		$a_00_3 = {2a 00 58 00 4f 00 42 00 56 00 2a 00 00 00 00 00 0c 00 00 00 2a 00 55 00 4d 00 45 00 51 00 2a 00 } //01 00 
		$a_01_4 = {65 00 73 00 72 00 65 00 76 00 65 00 52 00 00 00 12 00 00 00 65 00 6c 00 69 00 66 00 20 00 70 00 6f 00 72 00 44 00 } //01 00 
	condition:
		any of ($a_*)
 
}