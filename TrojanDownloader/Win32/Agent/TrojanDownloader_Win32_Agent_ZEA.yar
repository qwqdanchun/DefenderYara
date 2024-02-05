
rule TrojanDownloader_Win32_Agent_ZEA{
	meta:
		description = "TrojanDownloader:Win32/Agent.ZEA,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 4d 6f 64 75 6c 65 46 69 6c 65 4e 61 6d 65 45 78 41 00 74 72 6f 6a 64 69 65 2e 6b 78 70 2c 61 73 73 69 73 74 73 65 2e 65 78 65 2c 72 66 77 2e 65 78 65 2c 6b 61 76 70 66 77 2e 65 78 65 2c 6b 70 66 77 73 76 63 2e 65 78 65 2c 6b 61 76 73 74 61 72 74 2e 65 78 65 2c 6b 77 61 74 63 68 2e 65 78 65 2c 6b 61 76 70 6c 75 73 2e 65 78 65 00 6d 69 72 2e 65 78 65 2c 6d 69 72 2e 64 61 74 00 20 00 22 00 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 0d 0a 46 6f 72 74 68 67 6f 65 72 00 48 54 54 50 2f 31 2e 30 00 } //01 00 
		$a_01_1 = {1c 32 30 30 20 25 73 3d 25 73 3d 25 73 2f 25 73 3d 25 73 3d 25 73 2f 25 73 3d 25 73 00 68 } //01 00 
		$a_01_2 = {15 77 61 76 5c 4c 6f 67 2d 69 6e 2d 6c 6f 6e 67 32 2e 77 61 76 00 ff } //01 00 
		$a_01_3 = {76 77 77 77 2e 67 61 6d 65 6e 65 74 65 2e 63 6f 6d 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6c 6f 6f 6b 2f 6c 6f 67 69 6e 2e 61 73 70 00 00 00 00 00 00 2f 6c 6f 6f 6b 2f 70 69 70 2e 61 73 70 00 00 00 00 00 } //01 00 
		$a_01_4 = {00 31 30 30 00 33 30 30 00 33 32 30 00 37 35 30 20 6f 6e 6c 69 6e 65 21 00 37 35 30 20 6f 66 66 6c 69 6e 65 21 00 38 30 31 00 38 30 32 00 38 30 33 00 38 30 34 00 38 35 30 00 38 35 30 20 6f 66 66 6c 69 6e 65 21 00 39 35 30 20 31 2e 35 30 00 39 37 34 00 39 39 30 00 39 39 31 20 31 00 39 39 31 20 30 00 3a 3a 00 39 30 30 20 55 73 65 72 3a 00 20 50 61 73 73 3a 00 34 30 30 20 00 2e 00 2f } //01 00 
		$a_01_5 = {00 53 4f 46 54 57 41 52 45 5c 77 53 6b 79 73 6f 66 74 00 7e 78 51 00 50 4f 53 54 00 68 74 74 70 3a 2f 2f 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}