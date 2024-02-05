
rule PWS_Win32_Fareit_SF_MTB{
	meta:
		description = "PWS:Win32/Fareit.SF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 e0 5e 00 00 90 02 05 59 90 02 05 83 e9 04 90 02 05 8b 1c 0f 90 02 20 31 f3 90 02 20 09 1c 08 90 02 20 83 f9 00 7f 90 00 } //01 00 
		$a_02_1 = {b9 70 2b 41 41 90 02 05 81 c1 d1 15 00 00 90 02 05 46 90 02 20 8b 1f 90 02 05 31 f3 90 02 05 39 cb 75 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Fareit_SF_MTB_2{
	meta:
		description = "PWS:Win32/Fareit.SF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 04 00 "
		
	strings :
		$a_00_0 = {01 d3 81 fb 3f 4a a9 cc 66 85 db eb 05 00 00 00 00 00 89 0b 66 85 c0 85 d2 eb 05 00 00 00 00 00 83 c2 04 3d 6f f1 ec 9c 81 ff 96 3b 30 f5 83 c7 04 eb 09 00 00 00 00 00 00 00 00 00 66 85 db 66 85 db 81 fa c4 b7 00 00 eb 02 00 00 74 20 } //01 00 
		$a_01_1 = {70 00 44 00 4f 00 48 00 56 00 34 00 4d 00 62 00 43 00 52 00 62 00 58 00 77 00 44 00 42 00 44 00 55 00 71 00 41 00 53 00 52 00 50 00 52 00 4e 00 33 00 41 00 4f 00 31 00 31 00 32 00 } //01 00 
		$a_01_2 = {77 00 61 00 45 00 50 00 42 00 47 00 58 00 7a 00 41 00 6e 00 63 00 62 00 36 00 62 00 38 00 44 00 64 00 42 00 4c 00 66 00 35 00 32 00 77 00 32 00 4b 00 64 00 4a 00 6e 00 61 00 33 00 68 00 50 00 41 00 79 00 44 00 70 00 39 00 63 00 59 00 32 00 34 00 32 00 } //01 00 
		$a_01_3 = {4d 00 36 00 70 00 7a 00 32 00 6b 00 32 00 32 00 53 00 69 00 52 00 4a 00 7a 00 37 00 32 00 73 00 4f 00 6e 00 71 00 30 00 65 00 37 00 73 00 31 00 38 00 33 00 } //01 00 
		$a_01_4 = {44 00 69 00 54 00 4d 00 4b 00 59 00 38 00 79 00 6b 00 51 00 53 00 70 00 43 00 79 00 6b 00 47 00 6a 00 68 00 57 00 49 00 4f 00 36 00 31 00 } //00 00 
	condition:
		any of ($a_*)
 
}