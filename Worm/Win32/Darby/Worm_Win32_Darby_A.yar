
rule Worm_Win32_Darby_A{
	meta:
		description = "Worm:Win32/Darby.A,SIGNATURE_TYPE_PEHSTR,33 00 33 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00 
		$a_01_1 = {73 00 79 00 6d 00 61 00 6e 00 74 00 65 00 63 00 } //0a 00 
		$a_01_2 = {6d 00 65 00 73 00 73 00 61 00 67 00 65 00 6c 00 61 00 62 00 } //0a 00 
		$a_01_3 = {5c 00 56 00 69 00 72 00 75 00 73 00 5c 00 42 00 61 00 72 00 64 00 69 00 65 00 6c 00 2e 00 44 00 5c 00 53 00 61 00 67 00 2e 00 76 00 62 00 70 00 } //0a 00 
		$a_01_4 = {5c 00 49 00 6d 00 61 00 67 00 65 00 30 00 58 00 2e 00 73 00 63 00 72 00 } //01 00 
		$a_01_5 = {53 00 65 00 63 00 75 00 72 00 69 00 74 00 79 00 2d 00 32 00 30 00 30 00 34 00 2d 00 55 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_6 = {54 00 68 00 65 00 20 00 48 00 61 00 63 00 6b 00 65 00 72 00 20 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 35 00 2e 00 37 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_7 = {53 00 63 00 72 00 65 00 65 00 6e 00 20 00 73 00 61 00 76 00 65 00 72 00 20 00 63 00 68 00 72 00 69 00 73 00 74 00 69 00 6e 00 61 00 20 00 61 00 67 00 75 00 69 00 6c 00 65 00 72 00 61 00 20 00 6e 00 61 00 6b 00 65 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_8 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 4b 00 65 00 79 00 47 00 65 00 6e 00 65 00 72 00 61 00 74 00 6f 00 72 00 2d 00 41 00 6c 00 6c 00 6d 00 6f 00 73 00 74 00 20 00 61 00 6c 00 6c 00 20 00 6d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 73 00 74 00 75 00 66 00 66 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}