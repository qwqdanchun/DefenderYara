
rule BrowserModifier_Win32_Riccietex{
	meta:
		description = "BrowserModifier:Win32/Riccietex,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0f 00 00 01 00 "
		
	strings :
		$a_03_0 = {2c 71 71 62 72 6f 77 73 65 72 90 03 04 00 2e 65 78 65 2c 75 63 62 72 6f 77 73 65 72 90 1b 00 2c 62 61 69 64 75 62 72 6f 77 73 65 72 90 1b 00 2c 69 65 78 70 6c 6f 72 65 90 1b 00 2c 74 68 65 77 6f 72 6c 64 90 00 } //01 00 
		$a_03_1 = {73 6f 67 6f 75 65 78 70 6c 6f 72 65 72 90 03 04 00 2e 65 78 65 2c 32 33 34 35 65 78 70 6c 6f 72 65 72 90 1b 00 2c 63 68 72 6f 6d 65 90 1b 00 2c 6a 75 7a 69 90 1b 00 2c 68 61 6f 31 32 33 6a 75 7a 69 90 1b 00 2c 66 69 72 65 66 6f 78 90 00 } //01 00 
		$a_01_2 = {55 6e 5f 41 64 73 } //01 00 
		$a_01_3 = {55 6e 5f 4d 61 69 6e 50 61 67 65 } //01 00 
		$a_01_4 = {43 68 6b 5f 44 65 73 6b 74 6f 70 4c 69 6e 6b } //01 00 
		$a_01_5 = {43 68 6b 5f 48 6f 6d 65 50 61 67 65 } //01 00 
		$a_01_6 = {43 68 6b 5f 51 75 69 63 6b 4c 61 75 6e 63 68 } //01 00 
		$a_01_7 = {2f 72 65 61 64 2e 70 68 70 3f 74 3d } //01 00 
		$a_03_8 = {63 6e 7a 7a 2e 64 90 05 04 01 20 6f 90 05 04 01 20 38 90 05 04 01 20 73 2e 63 6f 6d 2f 63 6f 72 65 2e 6a 73 3f 74 3d 90 00 } //01 00 
		$a_01_9 = {4b 6e 67 53 74 72 5f 49 41 4d } //01 00 
		$a_01_10 = {49 41 4d 5f 53 45 54 49 45 48 50 } //01 00 
		$a_01_11 = {49 41 4d 5f 44 4c } //01 00 
		$a_01_12 = {72 20 65 20 61 20 64 20 2e 20 70 20 68 20 20 70 20 3f 20 74 3d 20 61 20 64 20 73 20 26 64 3d } //01 00 
		$a_01_13 = {71 20 71 20 62 20 20 72 20 6f 20 77 20 20 73 20 65 20 72 20 20 2c 75 20 63 20 62 20 20 72 20 6f 20 77 20 20 73 20 65 20 72 20 20 2c 62 20 61 20 69 20 20 64 20 75 20 62 20 20 72 20 6f 20 77 20 20 73 20 65 20 72 20 20 2c 69 20 65 20 78 20 20 70 20 6c 20 6f 20 20 72 20 65 20 2c 74 20 68 20 65 20 20 77 20 6f 20 72 20 20 6c 20 64 } //01 00 
		$a_01_14 = {73 20 6f 20 67 20 20 6f 20 75 20 65 20 20 78 20 70 20 6c 20 20 6f 20 72 20 65 20 20 72 20 2c 32 20 33 20 34 20 20 35 20 65 20 78 20 20 70 20 6c 20 6f 20 20 72 20 65 20 72 20 20 2c 63 20 68 20 72 20 20 6f 20 6d 20 65 20 20 2c 6a 20 75 20 7a 20 20 69 20 2c 68 20 61 20 6f 20 20 31 20 32 20 33 20 20 6a 20 75 20 7a 20 20 69 20 2c 66 20 69 20 72 20 20 65 20 66 20 6f 20 20 78 } //00 00 
		$a_00_15 = {5d 04 00 00 be 78 } //03 00 
	condition:
		any of ($a_*)
 
}