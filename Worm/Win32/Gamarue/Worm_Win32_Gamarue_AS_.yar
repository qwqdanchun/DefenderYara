
rule Worm_Win32_Gamarue_AS_{
	meta:
		description = "Worm:Win32/Gamarue.AS!!Gamarue.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {35 63 6a 6e 69 50 8d 85 e4 fd ff ff 53 50 ff d7 } //01 00 
		$a_01_1 = {8b 56 1c 81 f9 4b 43 41 50 75 46 57 52 8d 7e 2c 57 53 e8 } //01 00 
		$a_01_2 = {4b 00 42 00 25 00 30 00 38 00 6c 00 75 00 2e 00 65 00 78 00 65 00 00 00 25 00 54 00 45 00 4d 00 50 00 25 00 5c 00 00 00 25 00 54 00 4d 00 50 00 25 00 5c 00 } //01 00 
		$a_01_3 = {5c 00 6d 00 73 00 25 00 73 00 2e 00 65 00 78 00 65 00 00 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 00 00 } //01 00 
		$a_01_4 = {45 00 6e 00 61 00 62 00 6c 00 65 00 4c 00 55 00 41 00 00 00 48 00 69 00 64 00 65 00 53 00 43 00 41 00 48 00 65 00 61 00 6c 00 74 00 68 00 00 00 54 00 61 00 73 00 6b 00 62 00 61 00 72 00 4e 00 6f 00 4e 00 6f 00 74 00 69 00 66 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_5 = {7b 22 69 64 22 3a 25 6c 75 2c 22 74 69 64 22 3a 25 6c 75 2c 22 65 72 72 22 3a 25 6c 75 2c 22 77 33 32 22 3a 25 6c 75 7d } //00 00 
	condition:
		any of ($a_*)
 
}