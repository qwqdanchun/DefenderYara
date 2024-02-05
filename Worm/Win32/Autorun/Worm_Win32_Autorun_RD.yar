
rule Worm_Win32_Autorun_RD{
	meta:
		description = "Worm:Win32/Autorun.RD,SIGNATURE_TYPE_PEHSTR,07 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 00 3a 00 5c 00 54 00 40 00 78 00 4d 00 40 00 6e 00 40 00 67 00 33 00 72 00 5c 00 50 00 72 00 6f 00 6a 00 65 00 63 00 74 00 31 00 2e 00 76 00 62 00 70 00 } //01 00 
		$a_01_1 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 20 00 2f 00 73 00 20 00 } //01 00 
		$a_01_2 = {5b 00 41 00 55 00 54 00 4f 00 52 00 55 00 4e 00 5d 00 } //01 00 
		$a_01_3 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 42 00 75 00 6c 00 75 00 42 00 65 00 62 00 65 00 6b 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 49 00 6d 00 61 00 67 00 65 00 20 00 46 00 69 00 6c 00 65 00 20 00 45 00 78 00 65 00 63 00 75 00 74 00 69 00 6f 00 6e 00 20 00 4f 00 70 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 53 00 50 00 59 00 58 00 58 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 41 00 64 00 76 00 61 00 6e 00 63 00 65 00 64 00 5c 00 46 00 6f 00 6c 00 64 00 65 00 72 00 5c 00 48 00 69 00 64 00 64 00 65 00 6e 00 5c 00 48 00 69 00 64 00 65 00 46 00 69 00 6c 00 65 00 45 00 78 00 74 00 } //01 00 
		$a_01_6 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}