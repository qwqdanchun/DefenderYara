
rule TrojanDownloader_Win32_Perintal_A{
	meta:
		description = "TrojanDownloader:Win32/Perintal.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 64 00 32 00 2e 00 33 00 64 00 70 00 72 00 6f 00 74 00 65 00 63 00 74 00 2e 00 6e 00 65 00 74 00 3a 00 39 00 30 00 2f 00 75 00 70 00 64 00 61 00 74 00 65 00 2f 00 3f 00 69 00 64 00 3d 00 25 00 64 00 } //01 00 
		$a_01_1 = {53 75 70 65 72 49 6e 73 74 61 6c 6c 32 00 } //01 00 
		$a_01_2 = {2d 00 30 00 39 00 33 00 36 00 42 00 37 00 38 00 42 00 31 00 30 00 42 00 32 00 7d 00 00 00 25 00 74 00 65 00 6d 00 70 00 25 00 5c 00 75 00 70 00 64 00 61 00 74 00 65 00 2e 00 69 00 6e 00 69 00 00 00 47 00 6c 00 6f 00 62 00 61 00 6c 00 5c 00 7b 00 35 00 46 00 30 00 32 00 44 00 33 00 37 00 30 00 2d 00 32 00 45 00 39 00 43 00 2d 00 34 00 66 00 61 00 64 00 2d 00 39 00 43 00 46 00 31 00 2d 00 44 00 35 00 46 00 36 00 44 00 43 00 39 00 36 00 41 00 30 00 38 00 42 00 7d 00 00 00 } //01 00 
		$a_03_3 = {56 56 6a 01 8d 4c 24 24 51 ff 15 90 01 04 68 90 01 04 68 08 b6 00 00 56 6a 04 8d 44 24 18 50 8d 54 24 2c 6a ff c7 44 24 20 0c 00 00 00 89 74 24 28 89 54 24 24 ff 15 90 01 04 a3 b4 28 45 00 ff 15 90 01 04 8b 0d 90 01 04 3b ce 74 90 01 01 3d b7 00 00 00 75 90 01 01 89 35 b0 28 45 00 68 08 b6 00 00 56 56 68 1f 00 0f 00 51 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}