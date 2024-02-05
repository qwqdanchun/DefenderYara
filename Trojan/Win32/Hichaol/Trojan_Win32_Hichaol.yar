
rule Trojan_Win32_Hichaol{
	meta:
		description = "Trojan:Win32/Hichaol,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0e 00 00 01 00 "
		
	strings :
		$a_01_0 = {25 73 3f 61 63 74 69 6f 6e 3d 61 6f 6c 73 62 6d 26 6d 6f 64 65 3d 72 65 73 26 76 3d 31 26 73 74 61 74 75 73 3d 25 64 26 69 64 3d 25 73 26 68 61 72 64 69 64 3d 25 73 } //01 00 
		$a_01_1 = {45 52 52 4f 52 3a 20 6e 6f 20 74 61 73 6b 20 69 64 } //01 00 
		$a_01_2 = {73 61 76 65 64 20 69 64 20 64 6f 65 73 6e 27 74 20 6d 61 74 63 68 20 74 61 73 6b } //01 00 
		$a_01_3 = {41 6f 6c 20 73 75 62 6d 69 74 20 73 74 61 72 74 } //01 00 
		$a_01_4 = {68 61 73 68 20 63 68 65 63 6b 20 66 61 69 6c 65 64 } //01 00 
		$a_01_5 = {68 47 68 64 79 36 73 } //01 00 
		$a_01_6 = {63 72 79 70 74 65 64 20 63 6f 64 65 20 64 65 74 65 63 74 65 64 } //01 00 
		$a_01_7 = {23 42 4c 55 45 4c 41 42 45 4c } //01 00 
		$a_01_8 = {4d 61 69 6e 20 64 6f 6d 61 69 6e 20 69 73 20 6e 6f 74 20 72 65 73 70 6f 6e 64 69 6e 67 } //01 00 
		$a_01_9 = {64 75 6d 70 20 72 65 73 70 6f 6e 63 65 } //01 00 
		$a_01_10 = {25 73 6b 4c 61 25 73 } //01 00 
		$a_01_11 = {23 42 6c 41 63 } //01 00 
		$a_01_12 = {70 61 72 73 65 20 72 65 73 70 6f 6e 63 65 } //01 00 
		$a_01_13 = {25 73 3f 61 63 74 69 6f 6e 3d 25 73 26 76 3d 31 26 68 61 72 64 69 64 3d 25 73 26 69 64 3d 25 64 } //00 00 
	condition:
		any of ($a_*)
 
}