
rule Backdoor_Win32_Zegost_AP{
	meta:
		description = "Backdoor:Win32/Zegost.AP,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 02 00 "
		
	strings :
		$a_01_0 = {89 50 08 88 48 0c 8b c6 8a 08 40 3a cb 75 f9 57 8d } //01 00 
		$a_01_1 = {25 73 2f 63 67 69 2f 63 6f 6d 6d 61 6e 64 2e 61 73 70 3f 68 6f 73 74 6e 61 6d 65 3d 25 73 26 63 6f 6d 6d 61 6e 64 3d 74 65 73 74 26 64 65 6c 3d 64 65 6c 66 69 6c 65 00 } //01 00 
		$a_01_2 = {2f 63 67 69 2f 74 65 78 74 75 70 2e 61 73 70 00 } //01 00 
		$a_01_3 = {6f 6e 6c 69 6e 65 2e 61 73 70 3f 68 6f 73 74 6e 61 6d 65 3d 25 73 26 68 74 74 70 74 79 70 65 3d 25 73 00 } //01 00 
		$a_01_4 = {25 73 5c 73 79 73 74 65 6d 5c 25 64 2e 74 78 74 } //01 00 
		$a_01_5 = {75 70 66 69 6c 65 00 00 64 6f 77 6e 66 69 6c 65 00 } //01 00 
		$a_01_6 = {68 74 74 70 3a 2f 2f 25 73 2f 63 67 69 2f 25 73 2e 74 78 74 00 } //01 00 
		$a_01_7 = {5c 68 65 6c 70 6d 73 67 2e 74 65 6d 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}