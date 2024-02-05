
rule Backdoor_Win32_VB_U{
	meta:
		description = "Backdoor:Win32/VB.U,SIGNATURE_TYPE_PEHSTR,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 6d 00 69 00 6e 00 67 00 5c 00 43 00 68 00 61 00 72 00 6f 00 6e 00 5c 00 43 00 6c 00 69 00 65 00 6e 00 74 00 5c 00 } //01 00 
		$a_01_1 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 43 00 68 00 61 00 72 00 6f 00 6e 00 } //01 00 
		$a_01_2 = {5c 00 44 00 61 00 74 00 61 00 5c 00 53 00 65 00 74 00 74 00 69 00 6e 00 67 00 73 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_3 = {5c 00 72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 2e 00 65 00 78 00 65 00 20 00 2f 00 73 00 20 00 } //01 00 
		$a_01_4 = {43 68 61 72 6f 6e 2e 75 63 53 79 73 54 72 61 79 } //01 00 
		$a_01_5 = {66 72 6d 52 65 6d 6f 74 65 5f 53 63 72 69 70 74 } //01 00 
		$a_01_6 = {6d 6e 75 53 65 72 76 65 72 5f 52 65 6d 6f 76 65 } //01 00 
		$a_01_7 = {50 69 6e 67 4d 61 73 74 65 72 } //01 00 
		$a_01_8 = {66 72 6d 57 65 62 63 61 6d } //00 00 
	condition:
		any of ($a_*)
 
}