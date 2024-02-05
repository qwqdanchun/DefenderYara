
rule TrojanDownloader_Win32_Phorpiex_MSR{
	meta:
		description = "TrojanDownloader:Win32/Phorpiex!MSR,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 00 20 00 73 00 74 00 61 00 72 00 74 00 20 00 5f 00 20 00 26 00 20 00 5f 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 20 00 26 00 20 00 65 00 78 00 69 00 74 00 } //01 00 
		$a_01_1 = {25 00 6c 00 73 00 5c 00 5f 00 5c 00 44 00 65 00 76 00 69 00 63 00 65 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_2 = {63 00 20 00 72 00 6d 00 64 00 69 00 72 00 20 00 2f 00 71 00 20 00 2f 00 73 00 20 00 22 00 25 00 6c 00 73 00 22 00 } //01 00 
		$a_01_3 = {53 00 59 00 53 00 54 00 45 00 4d 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 53 00 65 00 74 00 5c 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 5c 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 41 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 65 00 64 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 4c 00 69 00 73 00 74 00 } //01 00 
		$a_01_4 = {53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 44 00 65 00 66 00 65 00 6e 00 64 00 65 00 72 00 } //01 00 
		$a_01_5 = {44 00 69 00 73 00 61 00 62 00 6c 00 65 00 41 00 6e 00 74 00 69 00 53 00 70 00 79 00 77 00 61 00 72 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}