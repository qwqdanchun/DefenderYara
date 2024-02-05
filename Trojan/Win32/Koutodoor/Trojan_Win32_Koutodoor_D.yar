
rule Trojan_Win32_Koutodoor_D{
	meta:
		description = "Trojan:Win32/Koutodoor.D,SIGNATURE_TYPE_PEHSTR,08 00 08 00 05 00 00 03 00 "
		
	strings :
		$a_01_0 = {5c 5c 2e 5c 47 6c 6f 62 61 6c 5c 6b 73 64 72 76 00 } //03 00 
		$a_01_1 = {73 74 61 72 74 2e 70 68 70 3f 69 64 3d 25 64 } //01 00 
		$a_01_2 = {73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 25 73 2e 73 79 73 00 } //01 00 
		$a_01_3 = {00 72 73 74 72 61 79 2e 65 78 65 00 } //01 00 
		$a_01_4 = {00 33 36 30 74 72 61 79 2e 65 78 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Koutodoor_D_2{
	meta:
		description = "Trojan:Win32/Koutodoor.D,SIGNATURE_TYPE_PEHSTR,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {33 32 39 41 36 32 34 41 2d 31 44 32 32 2d 34 38 61 65 2d 39 35 37 36 2d 41 30 32 46 31 45 44 42 31 33 37 32 } //02 00 
		$a_01_1 = {73 74 61 72 74 2e 70 68 70 3f 69 64 3d 25 64 } //01 00 
		$a_01_2 = {73 79 73 74 65 6d 33 32 5c 64 72 69 76 65 72 73 5c 25 73 2e 73 79 73 00 } //01 00 
		$a_01_3 = {6b 73 77 65 62 73 68 69 65 6c 64 2e 64 6c 6c 00 } //01 00 
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 44 61 74 65 54 69 6d 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}