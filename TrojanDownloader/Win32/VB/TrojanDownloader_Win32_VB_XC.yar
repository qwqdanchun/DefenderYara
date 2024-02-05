
rule TrojanDownloader_Win32_VB_XC{
	meta:
		description = "TrojanDownloader:Win32/VB.XC,SIGNATURE_TYPE_PEHSTR_EXT,28 00 1e 00 08 00 00 05 00 "
		
	strings :
		$a_01_0 = {40 00 20 00 72 00 65 00 67 00 69 00 73 00 74 00 72 00 61 00 7a 00 69 00 6f 00 6e 00 65 00 20 00 64 00 69 00 20 00 63 00 6f 00 6d 00 70 00 6f 00 6e 00 65 00 6e 00 74 00 69 00 20 00 62 00 } //05 00 
		$a_01_1 = {41 00 2a 00 5c 00 41 00 47 00 3a 00 5c 00 56 00 61 00 6c 00 65 00 6e 00 74 00 69 00 6e 00 61 00 5c 00 57 00 49 00 4e 00 4d 00 53 00 47 00 52 00 2e 00 56 00 42 00 50 00 } //05 00 
		$a_01_2 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 56 00 61 00 6c 00 65 00 6e 00 74 00 69 00 6e 00 61 00 } //05 00 
		$a_01_3 = {6c 00 61 00 66 00 69 00 67 00 6c 00 69 00 61 00 64 00 65 00 6c 00 72 00 65 00 64 00 69 00 63 00 61 00 74 00 73 00 69 00 67 00 6c 00 69 00 61 00 6e 00 6f 00 6e 00 65 00 72 00 61 00 75 00 6e 00 61 00 67 00 72 00 61 00 6e 00 6d 00 65 00 72 00 61 00 76 00 69 00 67 00 6c 00 69 00 61 00 } //05 00 
		$a_01_4 = {71 00 6e 00 65 00 6c 00 70 00 64 00 63 00 } //05 00 
		$a_01_5 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 66 00 74 00 70 00 2e 00 65 00 78 00 65 00 20 00 2d 00 73 00 3a 00 } //05 00 
		$a_01_6 = {67 00 65 00 74 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //05 00 
		$a_01_7 = {5c 00 74 00 65 00 6d 00 70 00 5c 00 63 00 61 00 75 00 70 00 64 00 2e 00 66 00 74 00 70 00 20 00 66 00 72 00 65 00 67 00 61 00 6d 00 6e 00 65 00 74 00 2e 00 63 00 6f 00 6d 00 } //00 00 
	condition:
		any of ($a_*)
 
}