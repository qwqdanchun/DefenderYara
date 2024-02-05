
rule TrojanClicker_Win32_VB_GB{
	meta:
		description = "TrojanClicker:Win32/VB.GB,SIGNATURE_TYPE_PEHSTR,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {52 65 61 64 79 53 74 61 74 65 00 73 68 64 6f 63 76 77 2e 64 6c 6c 00 53 48 44 6f 63 56 77 43 74 6c 2e 57 65 62 42 72 6f 77 73 65 72 00 57 65 62 42 72 6f 77 73 65 72 00 } //01 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 65 00 61 00 72 00 63 00 68 00 3f 00 68 00 6c 00 3d 00 65 00 6e 00 26 00 6e 00 65 00 77 00 77 00 69 00 6e 00 64 00 6f 00 77 00 3d 00 31 00 26 00 71 00 3d 00 } //01 00 
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 73 00 65 00 61 00 72 00 63 00 68 00 2e 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 65 00 61 00 72 00 63 00 68 00 3f 00 70 00 3d 00 } //01 00 
		$a_01_3 = {72 00 65 00 73 00 75 00 6c 00 74 00 73 00 5f 00 75 00 72 00 6c 00 5f 00 66 00 75 00 6c 00 6c 00 5f 00 77 00 69 00 64 00 74 00 68 00 5f 00 6c 00 69 00 6e 00 6b 00 } //01 00 
		$a_01_4 = {2f 00 70 00 61 00 67 00 65 00 61 00 64 00 2f 00 61 00 64 00 73 00 3f 00 63 00 6c 00 69 00 65 00 6e 00 74 00 } //01 00 
		$a_01_5 = {4d 00 79 00 46 00 69 00 72 00 65 00 43 00 6c 00 69 00 63 00 6b 00 } //00 00 
	condition:
		any of ($a_*)
 
}