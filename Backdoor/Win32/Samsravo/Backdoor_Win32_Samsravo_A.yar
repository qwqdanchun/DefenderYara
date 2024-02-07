
rule Backdoor_Win32_Samsravo_A{
	meta:
		description = "Backdoor:Win32/Samsravo.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {8d 0c db 8d 34 8e b9 09 00 00 00 8d 7d 84 f3 a5 6a 24 8b 55 84 52 8b 45 08 50 ff 15 } //01 00 
		$a_01_1 = {8a 10 40 84 d2 75 f9 8b 56 10 2b c1 6a 14 83 c0 09 52 89 44 24 1c ff 15 } //01 00 
		$a_01_2 = {8b 44 24 10 51 8b 4c 24 10 68 0a 20 26 00 52 50 51 c7 06 } //01 00 
		$a_01_3 = {53 00 52 00 4d 00 73 00 76 00 72 00 00 00 00 00 2d 00 75 00 } //01 00 
		$a_01_4 = {7b 00 4d 00 53 00 43 00 2e 00 57 00 31 00 37 00 35 00 38 00 46 00 2d 00 41 00 41 00 34 00 33 00 38 00 46 00 31 00 32 00 39 00 43 00 2e 00 43 00 46 00 46 00 7d 00 } //01 00  {MSC.W1758F-AA438F129C.CFF}
		$a_03_5 = {5c 53 55 44 50 5c 52 65 6c 65 61 73 65 5c 90 02 10 2e 70 64 62 90 00 } //01 00 
		$a_01_6 = {4e 65 64 64 79 53 65 72 76 69 63 65 2e 70 64 62 } //01 00  NeddyService.pdb
		$a_03_7 = {75 f9 2b d1 33 c9 85 d2 7e 13 8a 81 90 01 02 41 00 34 fd 88 81 90 01 02 41 00 41 3b ca 7c ed 90 00 } //00 00 
		$a_00_8 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}