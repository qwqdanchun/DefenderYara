
rule Worm_Win32_Bagle_gen_A{
	meta:
		description = "Worm:Win32/Bagle.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 0d 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 57 69 6e 64 6f 77 73 32 30 30 30 } //01 00 
		$a_00_1 = {53 4f 46 54 57 41 52 45 5c 44 61 74 65 54 69 6d 65 } //01 00 
		$a_00_2 = {4d 41 49 4c 20 46 52 4f 4d 3a 3c 25 73 3e } //01 00 
		$a_00_3 = {52 43 50 54 20 54 4f 3a 3c 25 73 3e } //01 00 
		$a_00_4 = {25 25 5d 2e 65 78 65 22 } //01 00 
		$a_00_5 = {4d 65 73 73 61 67 65 2d 49 44 3a 20 3c 25 73 25 73 3e } //01 00 
		$a_02_6 = {54 6f 3a 20 90 02 01 25 73 90 00 } //01 00 
		$a_00_7 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 6c } //01 00 
		$a_00_8 = {4e 55 50 47 52 41 44 45 2e 45 58 45 } //01 00 
		$a_00_9 = {5b 25 52 41 4e 44 25 5d } //01 00 
		$a_00_10 = {40 61 76 70 2e } //01 00 
		$a_00_11 = {31 35 31 2e 32 30 31 2e 30 2e 33 39 } //01 00 
		$a_02_12 = {57 69 6e 64 6f 77 6e 20 90 02 08 20 42 65 74 61 20 4c 65 61 6b 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}