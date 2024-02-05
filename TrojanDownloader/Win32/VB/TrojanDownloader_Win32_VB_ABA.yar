
rule TrojanDownloader_Win32_VB_ABA{
	meta:
		description = "TrojanDownloader:Win32/VB.ABA,SIGNATURE_TYPE_PEHSTR_EXT,ffffff9a 02 ffffff9a 02 17 00 00 64 00 "
		
	strings :
		$a_01_0 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //64 00 
		$a_00_1 = {5b 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 5d 00 } //64 00 
		$a_00_2 = {6f 00 70 00 65 00 6e 00 20 00 3d 00 20 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //64 00 
		$a_00_3 = {73 00 68 00 65 00 6c 00 6c 00 65 00 78 00 65 00 63 00 75 00 74 00 65 00 20 00 3d 00 20 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //64 00 
		$a_00_4 = {57 69 6e 45 78 65 63 } //64 00 
		$a_00_5 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //0a 00 
		$a_00_6 = {5c 00 31 00 2e 00 62 00 61 00 74 00 } //0a 00 
		$a_00_7 = {54 69 6d 52 75 6e 44 } //0a 00 
		$a_00_8 = {54 69 6d 44 4c 4c 48 30 53 54 } //0a 00 
		$a_00_9 = {54 69 6d 41 75 74 6f 52 75 6e } //0a 00 
		$a_00_10 = {53 00 56 00 43 00 48 00 30 00 53 00 54 00 2e 00 45 00 58 00 45 00 } //0a 00 
		$a_00_11 = {44 00 4c 00 4c 00 48 00 30 00 53 00 54 00 2e 00 45 00 58 00 45 00 } //01 00 
		$a_00_12 = {73 00 79 00 73 00 74 00 65 00 6d 00 2e 00 69 00 6e 00 69 00 } //01 00 
		$a_00_13 = {45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_14 = {55 00 53 00 42 00 4b 00 69 00 6c 00 6c 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_15 = {6b 00 76 00 78 00 70 00 2e 00 6b 00 78 00 70 00 } //01 00 
		$a_00_16 = {52 00 61 00 76 00 4d 00 6f 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_17 = {52 00 61 00 76 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_18 = {33 00 36 00 30 00 74 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_19 = {57 00 6f 00 6d 00 63 00 63 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_00_20 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 } //01 00 
		$a_00_21 = {3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00 
		$a_00_22 = {3a 00 5c 00 61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}