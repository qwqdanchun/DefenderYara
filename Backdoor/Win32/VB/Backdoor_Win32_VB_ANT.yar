
rule Backdoor_Win32_VB_ANT{
	meta:
		description = "Backdoor:Win32/VB.ANT,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 58 00 50 00 } //01 00 
		$a_01_1 = {50 00 55 00 54 00 20 00 43 00 3a 00 5c 00 57 00 49 00 4e 00 44 00 4f 00 57 00 53 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 2e 00 74 00 78 00 74 00 20 00 4c 00 6f 00 67 00 73 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {53 00 63 00 72 00 69 00 70 00 74 00 69 00 6e 00 67 00 2e 00 46 00 69 00 6c 00 65 00 53 00 79 00 73 00 74 00 65 00 6d 00 4f 00 62 00 6a 00 65 00 63 00 74 00 } //01 00 
		$a_01_3 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_4 = {52 00 65 00 67 00 57 00 72 00 69 00 74 00 65 00 } //01 00 
		$a_01_5 = {4b 00 61 00 79 00 6e 00 61 00 6b 00 20 00 4b 00 6f 00 64 00 5c 00 56 00 69 00 73 00 75 00 61 00 6c 00 20 00 42 00 61 00 73 00 69 00 63 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 } //01 00 
		$a_01_6 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 43 00 57 00 53 00 70 00 65 00 63 00 69 00 61 00 4c 00 } //00 00 
	condition:
		any of ($a_*)
 
}