
rule VirTool_Win32_VBInject_gen_BE{
	meta:
		description = "VirTool:Win32/VBInject.gen!BE,SIGNATURE_TYPE_PEHSTR_EXT,08 00 07 00 0f 00 00 05 00 "
		
	strings :
		$a_01_0 = {5c 00 41 00 6e 00 67 00 65 00 6c 00 69 00 63 00 61 00 6c 00 5c 00 4d 00 69 00 73 00 20 00 64 00 6f 00 63 00 75 00 6d 00 65 00 6e 00 74 00 6f 00 73 00 5c 00 41 00 72 00 6d 00 61 00 20 00 58 00 20 00 32 00 20 00 53 00 6f 00 75 00 72 00 63 00 65 00 5c 00 } //02 00 
		$a_01_1 = {23 00 23 00 53 00 53 00 23 00 23 00 } //02 00 
		$a_01_2 = {49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 49 00 4f 00 49 00 4b 00 4b 00 4b 00 4b 00 4b 00 4b 00 4b 00 4b 00 4b 00 } //03 00 
		$a_03_3 = {6a 04 51 56 c7 45 90 01 01 58 59 59 59 e8 90 00 } //02 00 
		$a_03_4 = {66 0f b6 0c 11 66 33 0c 70 ff 15 90 01 04 8b 0b 8b 75 90 01 01 8b 51 0c 88 04 3a 90 00 } //01 00 
		$a_01_5 = {74 00 78 00 65 00 74 00 6e 00 6f 00 43 00 64 00 61 00 65 00 72 00 68 00 54 00 74 00 65 00 47 00 } //01 00 
		$a_00_6 = {32 00 33 00 4c 00 45 00 4e 00 52 00 45 00 4b 00 } //01 00 
		$a_01_7 = {6e 00 6f 00 69 00 74 00 63 00 65 00 53 00 66 00 4f 00 77 00 65 00 69 00 56 00 70 00 61 00 6d 00 6e 00 55 00 74 00 4e 00 } //01 00 
		$a_01_8 = {78 00 45 00 63 00 6f 00 6c 00 6c 00 41 00 6c 00 61 00 75 00 74 00 72 00 69 00 56 00 } //01 00 
		$a_01_9 = {79 00 72 00 6f 00 6d 00 65 00 4d 00 73 00 73 00 65 00 63 00 6f 00 72 00 50 00 65 00 74 00 69 00 72 00 57 00 } //01 00 
		$a_01_10 = {74 00 78 00 65 00 74 00 6e 00 6f 00 43 00 64 00 61 00 65 00 72 00 68 00 54 00 74 00 65 00 53 00 } //01 00 
		$a_01_11 = {64 00 61 00 65 00 72 00 68 00 54 00 65 00 6d 00 75 00 73 00 65 00 52 00 } //01 00 
		$a_01_12 = {79 00 72 00 6f 00 6d 00 65 00 4d 00 6c 00 61 00 75 00 74 00 72 00 69 00 56 00 65 00 74 00 69 00 72 00 57 00 74 00 4e 00 } //01 00 
		$a_01_13 = {64 00 61 00 65 00 72 00 68 00 54 00 74 00 78 00 65 00 74 00 6e 00 6f 00 43 00 74 00 65 00 47 00 74 00 4e 00 } //01 00 
		$a_01_14 = {64 00 61 00 65 00 72 00 68 00 54 00 74 00 78 00 65 00 74 00 6e 00 6f 00 43 00 74 00 65 00 53 00 74 00 4e 00 } //01 00 
	condition:
		any of ($a_*)
 
}