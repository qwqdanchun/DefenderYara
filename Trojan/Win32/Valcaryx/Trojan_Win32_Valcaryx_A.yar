
rule Trojan_Win32_Valcaryx_A{
	meta:
		description = "Trojan:Win32/Valcaryx.A,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0a 00 00 04 00 "
		
	strings :
		$a_01_0 = {2f 00 79 00 73 00 2e 00 38 00 67 00 79 00 73 00 2e 00 63 00 6f 00 6d 00 2f 00 6e 00 65 00 77 00 2f 00 } //03 00 
		$a_01_1 = {77 00 77 00 77 00 2e 00 61 00 70 00 70 00 65 00 61 00 6c 00 7a 00 6f 00 6e 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 76 00 34 00 2e 00 70 00 68 00 70 00 } //02 00 
		$a_01_2 = {63 00 61 00 76 00 61 00 6c 00 72 00 79 00 70 00 6c 00 61 00 79 00 65 00 72 00 } //02 00 
		$a_01_3 = {50 00 6f 00 70 00 75 00 70 00 52 00 65 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //03 00 
		$a_03_4 = {61 00 63 00 74 00 3d 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 26 00 6f 00 70 00 3d 00 90 02 18 26 00 72 00 69 00 3d 00 25 00 73 00 26 00 6d 00 63 00 3d 00 25 00 73 00 26 00 76 00 73 00 3d 00 25 00 73 00 26 00 74 00 6d 00 3d 00 25 00 73 00 26 00 6f 00 73 00 3d 00 25 00 73 00 26 00 73 00 63 00 3d 00 25 00 73 00 26 00 90 00 } //01 00 
		$a_01_5 = {76 00 69 00 70 00 2e 00 78 00 69 00 6e 00 67 00 68 00 75 00 61 00 63 00 68 00 75 00 6e 00 39 00 2e 00 63 00 6f 00 6d 00 2f 00 33 00 36 00 30 00 } //01 00 
		$a_01_6 = {30 00 2e 00 63 00 6e 00 2f 00 3f 00 73 00 72 00 63 00 3d 00 6c 00 6d 00 26 00 6c 00 73 00 3d 00 6e 00 36 00 65 00 32 00 62 00 36 00 33 00 36 00 39 00 39 00 37 00 2f 00 } //01 00 
		$a_01_7 = {28 78 38 36 29 5c 6a 69 6b 61 69 5c } //01 00 
		$a_01_8 = {5c 63 61 76 61 6c 72 79 70 6c 61 79 65 72 64 6c 67 2e 63 70 70 } //01 00 
		$a_01_9 = {70 00 6f 00 70 00 75 00 70 00 77 00 6e 00 64 00 72 00 65 00 73 00 74 00 61 00 72 00 74 00 } //00 00 
		$a_00_10 = {80 10 00 00 8e } //56 da 
	condition:
		any of ($a_*)
 
}