
rule Backdoor_Win32_Venik_K{
	meta:
		description = "Backdoor:Win32/Venik.K,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 50 41 58 00 00 00 00 90 01 08 2e 50 41 44 00 90 00 } //01 00 
		$a_01_1 = {00 4c 6f 61 64 46 72 6f 6d 4d 65 6d 6f 72 79 20 45 4e 44 2d 2d 2d 0d 0a 00 } //01 00 
		$a_01_2 = {00 68 6d 50 72 6f 78 79 21 3d 20 4e 55 4c 4c 0d 0a 00 } //01 00 
		$a_01_3 = {c6 45 f0 53 c6 45 f1 59 c6 45 f2 53 c6 45 f3 54 c6 45 f4 45 c6 45 f5 4d c6 45 f6 5c c6 45 f7 53 c6 45 f8 65 c6 45 f9 74 c6 45 fa 75 c6 45 fb 70 } //01 00 
		$a_01_4 = {3c 2f 63 6f 64 65 3e 00 3c 63 6f 64 65 3e 00 00 47 45 54 20 2f 69 6e 64 65 78 2e 70 68 70 3f 69 70 3d 25 73 } //00 00 
		$a_00_5 = {5d 04 00 } //00 26 
	condition:
		any of ($a_*)
 
}