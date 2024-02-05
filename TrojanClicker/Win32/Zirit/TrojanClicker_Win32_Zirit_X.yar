
rule TrojanClicker_Win32_Zirit_X{
	meta:
		description = "TrojanClicker:Win32/Zirit.X,SIGNATURE_TYPE_PEHSTR_EXT,ffffff9b 00 ffffff97 00 0c 00 00 03 00 "
		
	strings :
		$a_00_0 = {44 6f 6d 61 69 6e 73 } //03 00 
		$a_00_1 = {46 65 65 64 55 72 6c } //03 00 
		$a_00_2 = {54 6f 46 65 65 64 } //03 00 
		$a_00_3 = {5f 73 65 6c 66 00 } //03 00 
		$a_00_4 = {63 6c 69 63 6b 74 69 6d 65 } //03 00 
		$a_00_5 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 68 65 6c 6c 53 65 72 76 69 63 65 4f 62 6a 65 63 74 44 65 6c 61 79 } //03 00 
		$a_00_6 = {3f 70 69 64 3d 25 30 34 64 26 } //01 00 
		$a_00_7 = {62 6f 74 2e 64 6c 6c } //01 00 
		$a_00_8 = {52 65 73 6f 75 72 63 65 73 2e 64 6c 6c } //03 00 
		$a_00_9 = {73 65 74 75 70 2e 6a 6f 62 75 73 69 6e 65 73 73 2e 6f 72 67 } //1e 00 
		$a_02_10 = {2b c7 3d 30 75 00 00 73 2b 8b 6c 24 14 8b 1d 90 01 02 00 10 6a 00 6a 01 55 ff 15 90 01 02 00 10 85 c0 75 90 01 01 68 e8 03 00 00 ff d3 ff d6 2b c7 3d 30 75 00 00 72 90 00 } //64 00 
		$a_02_11 = {6a 01 68 00 00 00 80 68 90 02 0e ff 15 90 01 02 00 10 8b f0 83 fe ff 74 90 01 01 8d 44 24 10 50 56 ff 15 90 01 02 00 10 90 02 02 83 c0 da 90 02 02 50 56 ff 15 90 01 02 00 10 8d 4c 24 0c 90 02 02 51 6a 26 68 90 01 02 00 10 56 ff 15 90 01 02 00 10 85 c0 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}