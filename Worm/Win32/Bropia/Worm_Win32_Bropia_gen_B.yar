
rule Worm_Win32_Bropia_gen_B{
	meta:
		description = "Worm:Win32/Bropia.gen!B,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1c 00 0a 00 00 05 00 "
		
	strings :
		$a_01_0 = {5c 4d 65 73 73 65 6e 67 65 72 5c 6d 73 6d 73 67 73 2e 65 78 65 5c 33 } //05 00 
		$a_00_1 = {4d 53 4e 5f 4f 6e 49 4d 57 69 6e 64 6f 77 43 72 65 61 74 65 64 } //05 00 
		$a_01_2 = {45 56 45 4e 54 5f 53 49 4e 4b 5f 49 6e 76 6f 6b 65 } //05 00 
		$a_01_3 = {5c 00 4d 00 72 00 58 00 2d 00 77 00 6f 00 72 00 6c 00 64 00 2e 00 64 00 61 00 74 00 } //05 00 
		$a_01_4 = {57 00 73 00 63 00 72 00 69 00 70 00 74 00 2e 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00 
		$a_01_5 = {48 00 61 00 63 00 6b 00 20 00 47 00 65 00 6d 00 61 00 61 00 6b 00 74 00 20 00 44 00 6f 00 6f 00 72 00 20 00 4d 00 72 00 2e 00 58 00 } //01 00 
		$a_01_6 = {4d 00 73 00 6e 00 3a 00 20 00 6d 00 72 00 5f 00 78 00 5f 00 6d 00 35 00 6e 00 40 00 68 00 6f 00 74 00 6d 00 61 00 69 00 6c 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_7 = {53 00 69 00 74 00 65 00 3a 00 20 00 57 00 77 00 57 00 2e 00 4d 00 72 00 78 00 2d 00 57 00 6f 00 72 00 6c 00 64 00 2e 00 4e 00 65 00 74 00 } //01 00 
		$a_01_8 = {54 00 72 00 79 00 4d 00 73 00 6e 00 4d 00 73 00 67 00 72 00 53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 } //01 00 
		$a_01_9 = {4d 00 72 00 2e 00 58 00 20 00 2d 00 20 00 4d 00 73 00 6e 00 20 00 53 00 6f 00 6c 00 64 00 69 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}