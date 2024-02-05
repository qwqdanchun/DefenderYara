
rule TrojanSpy_Win32_VB_EU{
	meta:
		description = "TrojanSpy:Win32/VB.EU,SIGNATURE_TYPE_PEHSTR,11 00 10 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 00 79 00 73 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 69 00 6e 00 66 00 6f 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 6c 00 6e 00 66 00 6f 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 3b 00 6e 00 65 00 74 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 3b 00 6e 00 65 00 74 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 65 00 78 00 65 00 3b 00 73 00 79 00 73 00 74 00 65 00 6d 00 63 00 68 00 6b 00 2e 00 65 00 78 00 65 00 3b 00 63 00 73 00 72 00 63 00 73 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 4e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 5c 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 70 00 62 00 6b 00 5c 00 72 00 61 00 73 00 70 00 68 00 6f 00 6e 00 65 00 2e 00 70 00 62 00 6b 00 } //01 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 59 00 61 00 68 00 6f 00 6f 00 5c 00 50 00 61 00 67 00 65 00 72 00 } //01 00 
		$a_01_3 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 5c 00 54 00 65 00 72 00 6d 00 69 00 6e 00 61 00 6c 00 20 00 53 00 65 00 72 00 76 00 65 00 72 00 } //01 00 
		$a_01_4 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 54 00 6c 00 6e 00 74 00 53 00 76 00 72 00 } //01 00 
		$a_01_5 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 4c 00 61 00 62 00 } //01 00 
		$a_01_6 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 5a 00 6f 00 6e 00 65 00 20 00 4c 00 61 00 62 00 73 00 5c 00 5a 00 6f 00 6e 00 65 00 41 00 6c 00 61 00 72 00 6d 00 } //01 00 
		$a_01_7 = {3c 00 73 00 63 00 72 00 69 00 70 00 74 00 20 00 6c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 3d 00 76 00 62 00 73 00 63 00 72 00 69 00 70 00 74 00 3e 00 66 00 6f 00 72 00 6d 00 39 00 2e 00 73 00 75 00 62 00 6d 00 69 00 74 00 3c 00 2f 00 73 00 63 00 72 00 69 00 70 00 74 00 3e 00 } //00 00 
	condition:
		any of ($a_*)
 
}