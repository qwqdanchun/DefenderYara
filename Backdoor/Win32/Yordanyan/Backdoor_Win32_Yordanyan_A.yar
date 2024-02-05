
rule Backdoor_Win32_Yordanyan_A{
	meta:
		description = "Backdoor:Win32/Yordanyan.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {26 00 61 00 67 00 65 00 6e 00 74 00 5f 00 69 00 64 00 3d 00 } //01 00 
		$a_01_1 = {26 00 61 00 67 00 65 00 6e 00 74 00 5f 00 66 00 69 00 6c 00 65 00 5f 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 } //01 00 
		$a_01_2 = {52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 20 00 4e 00 65 00 77 00 20 00 41 00 67 00 65 00 6e 00 74 00 20 00 61 00 6e 00 64 00 20 00 74 00 65 00 72 00 6d 00 69 00 6e 00 61 00 74 00 69 00 6e 00 67 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 72 00 21 00 } //01 00 
		$a_01_3 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00 
		$a_01_4 = {49 00 27 00 6d 00 20 00 4b 00 65 00 65 00 70 00 52 00 75 00 6e 00 6e 00 65 00 72 00 21 00 } //01 00 
		$a_01_5 = {49 00 27 00 6d 00 20 00 55 00 70 00 64 00 61 00 74 00 65 00 72 00 21 00 } //00 00 
	condition:
		any of ($a_*)
 
}