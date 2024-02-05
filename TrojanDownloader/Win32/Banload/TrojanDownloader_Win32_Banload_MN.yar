
rule TrojanDownloader_Win32_Banload_MN{
	meta:
		description = "TrojanDownloader:Win32/Banload.MN,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {2a 68 74 74 70 3a 2f 2f 77 77 77 2e 62 6c 6f 67 64 61 66 65 73 74 61 32 30 31 30 2e 63 6f 6d 2f 4d 73 6e 6c 6f 67 65 2e 67 69 66 06 } //01 00 
		$a_01_1 = {2a 68 74 74 70 3a 2f 2f 77 77 77 2e 62 6c 6f 67 64 61 66 65 73 74 61 32 30 31 30 2e 63 6f 6d 2f 4d 73 6e 6d 65 73 73 2e 67 69 66 06 } //01 00 
		$a_01_2 = {56 68 74 74 70 3a 2f 2f 6c 68 33 2e 67 67 70 68 74 2e 63 6f 6d 2f 5f 72 68 32 6f 33 57 52 32 36 4b 6b 2f 53 7a 43 7a 44 42 35 53 54 41 49 2f 41 41 41 41 41 41 41 41 41 42 63 2f 41 42 5f 67 71 4c 4b 33 62 67 30 2f 73 34 30 30 2f 69 6d 61 67 65 6d 31 2e 6a 70 67 05 } //00 00 
	condition:
		any of ($a_*)
 
}