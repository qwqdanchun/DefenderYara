
rule TrojanDownloader_Win32_Banload_BFL{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFL,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 41 00 73 00 73 00 6f 00 63 00 69 00 61 00 74 00 69 00 6f 00 6e 00 73 00 } //01 00 
		$a_01_1 = {4c 00 6f 00 77 00 52 00 69 00 73 00 6b 00 46 00 69 00 6c 00 65 00 54 00 79 00 70 00 65 00 73 00 } //01 00 
		$a_01_2 = {34 00 73 00 68 00 61 00 72 00 65 00 64 00 2e 00 63 00 6f 00 6d 00 2f 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 2f 00 } //0a 00 
		$a_01_3 = {54 46 6f 72 6d 75 6c 61 72 69 6f 5f 31 } //0a 00 
		$a_01_4 = {54 69 6d 65 72 42 58 54 69 6d 65 72 } //00 00 
		$a_00_5 = {78 de 00 00 04 00 04 00 08 00 00 } //01 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_BFL_2{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 61 4b 33 31 4d 41 53 54 45 52 30 } //01 00 
		$a_01_1 = {70 6b 62 61 63 6b 23 20 00 } //01 00 
		$a_03_2 = {4c 4f 43 41 4c 41 50 50 44 41 54 41 90 02 10 5c 90 02 07 2e 64 61 74 90 00 } //01 00 
		$a_03_3 = {4c 4f 43 41 4c 41 50 50 44 41 54 41 90 01 10 90 02 10 90 03 01 01 6a 4a 61 76 61 90 02 06 2e 65 78 65 90 00 } //01 00 
		$a_03_4 = {4c 4f 43 41 4c 41 50 50 44 41 54 41 90 01 10 90 02 10 50 4c 55 47 42 4f 58 2e 65 78 65 90 00 } //01 00 
		$a_03_5 = {4c 4f 43 41 4c 41 50 50 44 41 54 41 90 01 10 90 02 10 4a 61 76 61 62 6f 78 2e 90 00 } //01 00 
		$a_03_6 = {2d 61 70 70 90 0f 04 00 2f 64 69 73 6e 65 69 90 0f 06 00 2e 7a 79 79 90 00 } //01 00 
		$a_01_7 = {54 77 69 74 65 72 50 6c 61 79 65 73 2e } //00 00 
		$a_00_8 = {78 2d 01 } //00 04 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_BFL_3{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {63 00 3a 00 5c 00 6f 00 6b 00 90 02 02 2e 00 74 00 78 00 74 00 90 00 } //01 00 
		$a_01_1 = {70 00 6b 00 62 00 61 00 63 00 6b 00 23 00 } //01 00 
		$a_01_2 = {73 00 6e 00 78 00 68 00 6b 00 36 00 34 00 2e 00 64 00 6c 00 6c 00 } //01 00 
		$a_01_3 = {2f 00 6e 00 6f 00 74 00 69 00 66 00 79 00 2e 00 70 00 68 00 70 00 } //01 00 
		$a_01_4 = {55 00 4c 00 54 00 52 00 41 00 37 00 37 00 2e 00 42 00 41 00 4b 00 } //01 00 
		$a_01_5 = {52 00 45 00 53 00 45 00 52 00 56 00 41 00 2e 00 42 00 41 00 4b 00 } //01 00 
		$a_03_6 = {50 00 6f 00 72 00 74 00 75 00 67 00 75 00 ea 00 73 00 20 00 28 00 42 00 72 00 61 00 73 00 69 00 6c 00 29 90 02 12 4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 90 00 } //01 00 
		$a_03_7 = {b8 e8 03 00 00 e8 90 01 04 8d 45 fc e8 90 01 04 8b 45 fc e8 90 01 04 8b d0 b8 90 01 04 e8 90 01 04 85 c0 74 54 8d 55 f0 b8 90 01 04 e8 90 01 04 ff 75 f0 68 90 01 04 68 90 01 04 8d 45 f4 ba 03 00 00 00 90 00 } //00 00 
		$a_00_8 = {78 47 01 } //00 1f 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_BFL_4{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFL,SIGNATURE_TYPE_PEHSTR_EXT,1f 00 1f 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {41 00 4e 00 55 00 4e 00 42 00 49 00 30 00 2e 00 42 00 41 00 4b 00 } //0a 00 
		$a_01_1 = {2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 2f 00 73 00 69 00 6c 00 65 00 6e 00 74 00 } //0a 00 
		$a_01_2 = {5c 00 54 00 45 00 4d 00 50 00 41 00 43 00 54 00 30 00 } //01 00 
		$a_03_3 = {63 00 6f 00 6e 00 73 00 65 00 6e 00 74 00 2e 00 65 00 78 00 65 00 90 02 10 4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 90 00 } //01 00 
		$a_03_4 = {74 00 65 00 6d 00 70 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 90 02 10 4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 90 00 } //01 00 
		$a_03_5 = {74 00 65 00 6d 00 70 00 5f 00 64 00 69 00 6e 00 6f 00 90 02 10 4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 90 00 } //01 00 
		$a_03_6 = {74 00 65 00 6d 00 70 00 6f 00 72 00 61 00 72 00 69 00 6f 00 5f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 90 02 10 4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 90 00 } //00 00 
		$a_00_7 = {78 90 01 00 04 00 04 00 0c 00 00 01 00 0e 01 70 00 6b 00 62 00 } //61 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Banload_BFL_5{
	meta:
		description = "TrojanDownloader:Win32/Banload.BFL,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 0c 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 00 6b 00 62 00 61 00 63 00 6b 00 23 00 } //01 00 
		$a_01_1 = {5c 00 54 00 45 00 4d 00 50 00 41 00 43 00 54 00 30 00 } //01 00 
		$a_03_2 = {5c 00 61 00 4b 00 33 00 31 00 4d 00 41 00 53 00 54 00 45 00 52 00 30 00 90 01 02 2e 00 90 00 } //01 00 
		$a_01_3 = {2f 00 69 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 20 00 2f 00 73 00 69 00 6c 00 65 00 6e 00 74 00 00 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_02_4 = {4c 00 4f 00 43 00 41 00 4c 00 41 00 50 00 50 00 44 00 41 00 54 00 41 00 90 01 0a 90 02 0a 5c 00 90 02 16 2e 00 64 00 61 00 74 00 90 00 } //01 00 
		$a_01_5 = {54 69 6d 65 72 42 58 54 69 6d 65 72 } //01 00 
		$a_01_6 = {54 69 6d 65 72 61 63 61 70 61 75 6c 63 6f 54 69 6d 65 72 } //01 00 
		$a_01_7 = {54 69 6d 65 72 4c 55 4e 41 54 49 43 4f 53 54 69 6d 65 72 } //01 00 
		$a_01_8 = {54 46 6f 72 6d 75 6c 61 72 69 6f 5f 31 } //01 00 
		$a_01_9 = {6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 41 00 73 00 73 00 6f 00 63 00 69 00 61 00 74 00 69 00 6f 00 6e 00 73 00 } //01 00 
		$a_01_10 = {4c 00 6f 00 77 00 52 00 69 00 73 00 6b 00 46 00 69 00 6c 00 65 00 54 00 79 00 70 00 65 00 73 00 } //01 00 
		$a_03_11 = {64 89 20 8d 55 f4 b8 90 01 04 e8 90 01 03 ff ff 75 f4 68 90 01 04 ff 35 90 01 04 68 90 01 04 68 90 01 04 8d 45 f8 ba 05 00 00 00 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}