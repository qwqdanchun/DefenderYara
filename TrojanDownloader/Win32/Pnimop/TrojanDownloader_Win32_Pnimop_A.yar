
rule TrojanDownloader_Win32_Pnimop_A{
	meta:
		description = "TrojanDownloader:Win32/Pnimop.A,SIGNATURE_TYPE_PEHSTR_EXT,37 00 36 00 0a 00 00 0a 00 "
		
	strings :
		$a_01_0 = {7b 33 33 33 33 33 33 33 33 2d 41 41 41 41 2d 4f 4f 4f 4f 2d 34 34 34 34 2d 44 46 4b 4c 4a 4b 4a 44 46 4c 4a 44 7d } //0a 00 
		$a_00_1 = {4d 6f 7a 69 6c 6c 61 } //0a 00 
		$a_00_2 = {25 73 65 72 69 61 6c 25 } //0a 00 
		$a_00_3 = {4d 79 57 69 6e 50 6f 70 } //0a 00 
		$a_03_4 = {56 53 56 56 68 2c 01 00 00 68 90 90 01 00 00 56 57 68 00 00 cf 00 50 50 56 89 1d 90 01 02 43 00 ff 15 90 01 03 00 90 00 } //01 00 
		$a_00_5 = {43 6f 6e 6e 65 63 74 65 64 3a 20 25 30 32 69 3a 25 30 32 69 3a 25 30 32 69 } //01 00 
		$a_00_6 = {00 32 66 6b 66 6a 2e 65 78 65 00 } //01 00 
		$a_00_7 = {75 72 6c 5f 64 6f 77 6e 6c 6f 61 64 } //01 00 
		$a_00_8 = {4f 70 65 6e 69 6e 67 20 6d 6f 64 65 6d 20 70 6f 72 74 2e 2e 2e } //01 00 
		$a_00_9 = {00 31 2e 64 6c 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}