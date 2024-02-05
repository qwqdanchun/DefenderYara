
rule PWS_Win32_Enterak_A{
	meta:
		description = "PWS:Win32/Enterak.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 61 73 70 3f 75 70 3d 25 73 26 70 70 3d 25 73 } //01 00 
		$a_01_1 = {5c 72 65 73 5c 50 43 4f 54 50 2e 6f 6b 66 } //01 00 
		$a_01_2 = {4c 69 6e 65 61 67 65 20 57 69 6e 64 6f 77 73 20 43 6c 69 65 6e 74 } //01 00 
		$a_01_3 = {44 69 61 62 6c 6f 20 49 49 49 2e 65 78 65 } //01 00 
		$a_01_4 = {43 4f 4e 46 49 47 5f 43 48 41 4e 4e 45 4c 5f 53 45 4c 45 43 54 5f 53 45 52 56 45 52 3d } //01 00 
		$a_01_5 = {56 33 4c 54 72 61 79 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Enterak_A_2{
	meta:
		description = "PWS:Win32/Enterak.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {2e 61 73 70 3f 75 70 3d 25 73 26 70 70 3d 25 73 } //01 00 
		$a_03_1 = {74 65 65 6e 63 61 73 68 90 02 05 68 61 70 70 79 6d 6f 6e 65 79 90 02 05 63 75 6c 74 75 72 65 6c 61 6e 64 90 00 } //02 00 
		$a_01_2 = {7d 64 6f 63 75 6d 65 6e 74 2e 63 6f 6f 6b 69 65 3d 27 49 45 50 52 4f 58 59 3d 55 3a 27 2b 66 72 6d 5f 6c 6f 67 69 6e 2e 69 64 2e 76 61 6c 75 65 2b 27 2f 27 2b 6c 6f 67 69 6e 5f 73 69 74 65 2b 27 7c 27 2b 73 74 72 50 77 64 2b 27 3a 27 3b } //01 00 
		$a_01_3 = {26 70 5f 6c 65 76 65 6c 3d } //01 00 
		$a_01_4 = {26 70 5f 6d 6e 79 5f 62 61 6c 3d } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Enterak_A_3{
	meta:
		description = "PWS:Win32/Enterak.A,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {4c 6f 67 69 6e 43 6f 6e 74 61 69 6e 65 72 3a 74 78 74 50 61 73 73 77 } //01 00 
		$a_01_1 = {3a 74 78 74 45 6d 61 69 6c 41 63 63 6f 75 6e 74 } //01 00 
		$a_01_2 = {6c 69 6e 2e 61 73 70 2b 68 74 74 70 3a } //02 00 
		$a_03_3 = {2e 61 73 70 3f 75 90 02 01 3d 25 73 26 70 90 02 01 3d 25 73 90 00 } //01 00 
		$a_03_4 = {25 73 3f 61 90 02 01 3d 25 73 26 73 90 02 01 3d 25 73 26 90 00 } //01 00 
		$a_01_5 = {69 64 5f 68 69 64 64 65 6e } //01 00 
		$a_01_6 = {74 78 74 4d 65 6d 62 65 72 49 44 } //02 00 
		$a_01_7 = {26 73 74 72 53 53 4e 3d 00 } //01 00 
		$a_01_8 = {5c 72 65 73 5c 50 43 4f 54 50 2e 6f 6b 66 } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Enterak_A_4{
	meta:
		description = "PWS:Win32/Enterak.A,SIGNATURE_TYPE_PEHSTR_EXT,2a 00 2a 00 08 00 00 0a 00 "
		
	strings :
		$a_02_0 = {0f 87 b4 00 00 00 be 90 01 02 00 10 ff 36 57 e8 90 01 02 00 00 59 85 c0 59 74 10 83 c6 04 81 fe 90 01 02 00 10 7c e7 e9 91 00 00 00 90 00 } //0a 00 
		$a_00_1 = {5c 66 6f 6f 6f 6c 2e 64 61 74 00 } //0a 00 
		$a_81_2 = {4c 6f 67 69 6e 43 6f 6e 74 61 69 6e 65 72 3a 74 78 74 50 61 73 73 77 64 00 } //0a 00 
		$a_00_3 = {49 00 45 00 48 00 65 00 6c 00 70 00 65 00 72 00 20 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 } //01 00 
		$a_81_4 = {65 61 72 74 68 77 6f 72 6d 32 } //01 00 
		$a_81_5 = {74 75 72 74 6c 65 32 } //01 00 
		$a_80_6 = {2e 68 61 6e 67 61 6d 65 2e 63 6f 6d } //.hangame.com  01 00 
		$a_80_7 = {2e 6e 65 78 6f 6e 2e 63 6f 6d } //.nexon.com  00 00 
	condition:
		any of ($a_*)
 
}