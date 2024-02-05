
rule TrojanDownloader_Win32_Adload_BF{
	meta:
		description = "TrojanDownloader:Win32/Adload.BF,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 67 6f 6e 4e 61 6d 65 00 00 00 53 4f 46 54 57 41 52 45 5c 53 6f 66 74 66 79 5c 50 6c 75 67 4e 61 6d 65 00 } //01 00 
		$a_01_1 = {68 74 74 70 3a 2f 2f 77 77 77 2e 66 79 65 64 69 74 2e 63 6e 2f 4d 61 69 6e 44 6c 6c 2f 53 6f 66 74 53 69 7a 65 2e 61 73 70 00 00 00 46 69 6e 64 20 66 6c 79 20 64 6c 6c 00 } //01 00 
		$a_01_2 = {49 6e 73 74 61 6c 6c 4d 79 44 6c 6c 00 72 75 6e 64 6c 6c 33 32 20 20 00 } //01 00 
		$a_01_3 = {2f 66 6c 79 6d 79 2e 64 6c 6c 00 00 53 65 72 76 65 72 46 69 6c 65 53 69 7a 65 3d 25 64 0a 00 } //00 00 
	condition:
		any of ($a_*)
 
}