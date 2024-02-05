
rule Backdoor_Win32_VB_CCA{
	meta:
		description = "Backdoor:Win32/VB.CCA,SIGNATURE_TYPE_PEHSTR_EXT,1c 00 1a 00 0d 00 00 0a 00 "
		
	strings :
		$a_00_0 = {5a 00 52 00 48 00 55 00 57 00 46 00 56 00 48 00 5e 00 4e 00 69 00 68 00 76 00 72 00 75 00 70 00 66 00 79 00 60 00 5a 00 6b 00 6f 00 64 00 74 00 7b 00 76 00 5e 00 44 00 75 00 77 00 76 00 68 00 70 00 75 00 56 00 6a 00 76 00 76 00 6b 00 70 00 6e 00 61 00 } //05 00 
		$a_00_1 = {76 62 35 63 68 73 2e 64 6c 6c } //05 00 
		$a_02_2 = {64 75 6d 70 72 65 70 90 01 01 2e 64 6c 6c 90 00 } //03 00 
		$a_00_3 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //02 00 
		$a_00_4 = {6e 65 74 63 66 67 77 2e 64 6c 6c } //02 00 
		$a_01_5 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //02 00 
		$a_01_6 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //02 00 
		$a_00_7 = {4b 00 42 00 39 00 35 00 38 00 34 00 32 00 2e 00 6c 00 6f 00 67 00 } //01 00 
		$a_00_8 = {6e 00 70 00 6b 00 63 00 72 00 79 00 70 00 74 00 2e 00 73 00 79 00 73 00 } //01 00 
		$a_00_9 = {6e 00 70 00 6b 00 63 00 72 00 79 00 70 00 74 00 2e 00 76 00 78 00 64 00 } //01 00 
		$a_00_10 = {73 00 79 00 73 00 6c 00 64 00 72 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_00_11 = {48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //01 00 
		$a_00_12 = {50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 45 00 58 00 45 00 } //00 00 
	condition:
		any of ($a_*)
 
}