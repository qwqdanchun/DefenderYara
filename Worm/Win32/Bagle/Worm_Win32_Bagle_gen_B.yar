
rule Worm_Win32_Bagle_gen_B{
	meta:
		description = "Worm:Win32/Bagle.gen!B,SIGNATURE_TYPE_PEHSTR,0a 00 09 00 0f 00 00 03 00 "
		
	strings :
		$a_01_0 = {2e 77 61 62 00 2e 74 78 74 00 2e 6d 73 67 } //03 00 
		$a_01_1 = {45 48 4c 4f 20 5b 25 73 5d 0d 0a 00 52 53 45 54 } //01 00 
		$a_01_2 = {75 73 65 72 25 6c 75 40 } //01 00 
		$a_01_3 = {2e 6b 72 2f 31 2f 65 6d 6c 2e 70 68 70 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_4 = {2e 72 75 2f 31 2f 65 6d 6c 2e 70 68 70 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_5 = {2e 6b 72 2f 31 32 33 2e 67 69 66 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_6 = {2e 72 75 2f 31 32 33 2e 67 69 66 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_7 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 6c } //01 00 
		$a_01_8 = {73 6d 74 70 2e 6d 61 69 6c 2e 72 75 } //01 00 
		$a_01_9 = {64 72 76 5f 73 74 5f 6b 65 79 } //01 00 
		$a_01_10 = {5c 68 69 64 6e } //01 00 
		$a_01_11 = {6d 5f 68 6f 6f 6b } //01 00 
		$a_01_12 = {61 74 74 61 63 68 6d 65 6e 74 3b 20 66 69 6c 65 6e 61 6d 65 3d 22 25 73 25 73 25 73 22 } //01 00 
		$a_01_13 = {2d 73 74 72 65 61 6d 3b 20 6e 61 6d 65 3d 22 25 73 25 73 25 73 22 } //01 00 
		$a_01_14 = {46 52 4f 4d 3a 3c 25 73 3e 20 53 49 5a 45 3d 25 6c } //00 00 
	condition:
		any of ($a_*)
 
}