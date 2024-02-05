
rule BrowserModifier_Win32_Vonteera{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {8d 85 a0 fd ff ff 50 68 04 01 00 00 ff 15 90 01 04 68 90 01 04 8d 85 a0 fd ff ff 68 22 01 00 00 50 e8 90 01 04 68 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_2{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {7b 00 36 00 44 00 44 00 31 00 42 00 39 00 30 00 36 00 2d 00 34 00 35 00 46 00 41 00 2d 00 34 00 41 00 35 00 37 00 2d 00 39 00 41 00 43 00 36 00 2d 00 30 00 31 00 31 00 30 00 38 00 43 00 32 00 35 00 30 00 36 00 37 00 46 00 7d 00 } //01 00 
		$a_01_1 = {41 56 43 4e 6f 56 6f 6f 49 54 50 6c 75 67 69 6e 4d 6f 64 75 6c 65 40 40 } //01 00 
		$a_01_2 = {24 5f 49 44 69 73 70 45 76 65 6e 74 4c 6f 63 61 74 6f 72 40 24 30 30 24 31 3f 44 49 49 44 5f 44 57 65 62 42 72 6f 77 73 65 72 45 76 65 6e 74 73 } //00 00 
		$a_00_3 = {78 cd } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_3{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {54 79 70 65 4c 69 62 27 20 3d 20 73 20 27 7b 33 46 43 32 44 35 39 41 2d 35 43 37 36 2d 31 45 39 37 2d 33 30 44 43 2d 31 45 43 36 37 38 34 34 31 39 45 35 7d 27 } //01 00 
		$a_01_1 = {50 72 6f 67 49 44 20 3d 20 73 20 27 44 69 67 69 41 64 2e 44 69 67 69 41 64 2e 31 27 } //01 00 
		$a_01_2 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 32 45 44 33 35 39 36 33 2d 46 43 43 39 2d 34 36 39 38 2d 42 36 31 39 2d 37 38 37 46 45 31 43 37 35 30 37 39 7d 20 3d 20 73 20 27 44 69 67 69 41 64 20 43 6c 61 73 73 27 } //01 00 
		$a_01_3 = {73 63 72 69 70 74 2e 69 64 20 3d 20 22 61 64 6e 65 74 77 6f 72 6b 6d 65 5f 6a 73 22 } //00 00 
		$a_00_4 = {78 e7 } //00 00 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_4{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 64 64 6f 6e 40 56 6f 6e 74 65 65 72 61 2e 63 6f 6d } //01 00 
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 56 6f 6e 74 65 65 72 61 20 53 61 66 65 20 61 64 73 } //01 00 
		$a_01_2 = {53 4f 46 54 57 41 52 45 5c 4e 6f 56 6f 6f 49 54 53 65 74 } //01 00 
		$a_01_3 = {5c 4e 6f 56 6f 6f 49 54 41 64 64 6f 6e } //01 00 
		$a_01_4 = {77 77 77 2e 61 63 64 63 61 64 73 2e 63 6f 6d 2f 61 66 66 2f 74 68 61 6e 6b 73 2f 74 68 61 6e 6b 73 33 2e 70 68 70 3f 63 6f 64 65 3d } //01 00 
		$a_01_5 = {2f 00 6f 00 75 00 74 00 70 00 75 00 74 00 3a 00 22 00 73 00 6e 00 2e 00 74 00 78 00 74 00 22 00 20 00 62 00 69 00 6f 00 73 00 20 00 67 00 65 00 74 00 20 00 73 00 65 00 72 00 69 00 61 00 6c 00 6e 00 75 00 6d 00 62 00 65 00 72 00 } //00 00 
		$a_00_6 = {78 03 01 } //00 05 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_5{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 70 00 73 00 72 00 75 00 6e 00 6e 00 65 00 72 00 2f 00 41 00 44 00 53 00 4b 00 4f 00 2f 00 6e 00 6f 00 6f 00 64 00 6c 00 65 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_1 = {61 00 70 00 73 00 72 00 75 00 6e 00 6e 00 65 00 72 00 2f 00 41 00 44 00 53 00 4b 00 4f 00 2f 00 76 00 65 00 72 00 2e 00 74 00 78 00 74 00 } //01 00 
		$a_01_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 6e 00 6f 00 6f 00 64 00 73 00 72 00 75 00 6e 00 6e 00 65 00 72 00 } //01 00 
		$a_01_3 = {6e 00 6f 00 6f 00 64 00 72 00 75 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00 
		$a_01_4 = {2f 00 53 00 43 00 20 00 44 00 41 00 49 00 4c 00 59 00 20 00 2f 00 54 00 4e 00 20 00 22 00 6e 00 6f 00 64 00 30 00 31 00 22 00 } //01 00 
		$a_01_5 = {68 00 6a 00 6d 00 6a 00 74 00 2e 00 6b 00 6b 00 70 00 } //00 00 
		$a_00_6 = {78 05 01 } //00 07 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_6{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {54 79 70 65 4c 69 62 27 20 3d 20 73 20 27 7b 33 46 43 32 44 35 39 41 2d 35 43 37 36 2d 31 45 39 37 2d 33 30 44 43 2d 31 45 43 36 37 38 34 34 31 39 45 35 7d 27 } //02 00 
		$a_01_1 = {50 72 6f 67 49 44 20 3d 20 73 20 27 61 64 54 65 63 68 2e 61 64 54 65 63 68 2e 31 27 } //02 00 
		$a_01_2 = {46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 39 33 34 42 31 35 36 41 2d 33 44 31 37 2d 33 39 38 31 2d 42 37 38 41 2d 35 43 31 33 38 46 34 32 33 41 44 36 7d 20 3d 20 73 20 27 61 64 54 65 63 68 20 43 6c 61 73 73 27 } //01 00 
		$a_01_3 = {77 00 77 00 77 00 2e 00 61 00 64 00 6e 00 65 00 74 00 77 00 6f 00 72 00 6b 00 75 00 73 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_4 = {77 00 77 00 77 00 2e 00 61 00 64 00 66 00 61 00 63 00 74 00 6f 00 72 00 79 00 74 00 65 00 63 00 68 00 2e 00 63 00 6f 00 6d 00 } //00 00 
		$a_00_5 = {78 96 01 } //00 04 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_7{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 61 72 20 5f 30 78 65 63 30 33 3d 5b 22 22 2c 22 5c 78 36 38 5c 78 37 34 5c 78 37 34 5c 78 37 30 5c 78 33 41 5c 78 32 46 5c 78 32 46 5c 78 37 37 5c 78 37 37 5c 78 37 37 5c 78 32 45 5c 78 36 31 5c 78 36 43 5c 78 36 31 5c 78 37 32 5c 78 36 31 5c 78 36 32 5c 78 36 35 5c 78 37 39 5c 78 36 35 5c 78 37 33 5c 78 32 45 5c 78 36 33 5c 78 36 46 5c 78 36 44 } //01 00 
		$a_01_1 = {67 52 61 6e 64 53 63 72 69 70 74 55 72 6c 73 5b 5f 30 78 65 63 30 33 5b 35 36 5d 2b 5f 30 78 65 35 32 35 78 32 62 5b 30 5d 5d 5b 5f 30 78 65 63 30 33 5b 36 31 5d 5d } //01 00 
		$a_01_2 = {76 61 72 20 5f 30 78 65 35 32 35 78 32 37 3d 20 6e 65 77 20 58 4d 4c 48 74 74 70 52 65 71 75 65 73 74 28 29 3b 5f 30 78 65 35 32 35 78 32 37 5b 5f 30 78 65 63 30 33 5b 35 30 5d 5d 28 5f 30 78 65 63 30 33 5b 34 39 5d 2c } //01 00 
		$a_01_3 = {76 61 72 20 5f 30 78 65 35 32 35 78 32 33 3d 6c 6f 63 61 6c 53 74 6f 72 61 67 65 5b 5f 30 78 65 63 30 33 5b 34 35 5d 5d 3b 69 66 28 21 5f 30 78 65 35 32 35 78 32 33 7c 7c 70 61 72 73 65 49 6e 74 28 5f 30 78 65 35 32 35 78 32 33 29 3d 3d 3d 4e 61 4e 29 } //01 00 
		$a_01_4 = {2f 00 44 00 65 00 6c 00 65 00 74 00 65 00 20 00 2f 00 74 00 6e 00 20 00 22 00 6d 00 69 00 75 00 6d 00 30 00 64 00 22 00 20 00 2f 00 66 00 } //00 00 
		$a_00_5 = {78 b6 01 } //00 04 
	condition:
		any of ($a_*)
 
}
rule BrowserModifier_Win32_Vonteera_8{
	meta:
		description = "BrowserModifier:Win32/Vonteera,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {66 75 6e 63 74 69 6f 6e 20 69 6e 69 74 54 61 62 4e 65 77 48 6f 6f 6b 28 29 7b 0d 0a 90 0e 0a 00 63 68 72 6f 6d 65 2e 74 61 62 73 2e 6f 6e 43 72 65 61 74 65 64 2e 61 64 64 4c 69 73 74 65 6e 65 72 28 66 75 6e 63 74 69 6f 6e 28 74 61 62 29 7b 90 00 } //01 00 
		$a_03_1 = {63 68 72 6f 6d 65 2e 74 61 62 73 2e 67 65 74 28 74 61 62 5f 69 64 2c 90 0e 05 00 63 68 65 63 6b 5f 66 6f 72 5f 6a 73 5f 69 6e 6a 65 63 74 69 6f 6e 29 3b 90 00 } //01 00 
		$a_03_2 = {66 75 6e 63 74 69 6f 6e 20 61 64 64 5f 72 65 6d 6f 76 65 5f 73 63 72 69 70 74 28 75 72 6c 29 90 0e 05 00 7b 90 0e 05 00 72 65 74 75 72 6e 20 27 76 61 72 20 41 64 74 65 63 68 5f 75 73 65 72 73 5f 6a 73 90 00 } //01 00 
		$a_01_3 = {67 52 61 6e 64 53 63 72 69 70 74 55 72 6c 73 5b 22 68 74 22 20 2b 20 74 6d 70 5b 30 5d 5d 2e 70 75 73 68 28 22 68 74 22 20 2b 20 74 6d 70 5b 30 5d 20 2b 20 22 3a 2f 2f 22 20 2b 20 74 6d 70 5b 31 5d 20 2b 20 22 2e 22 20 2b 20 74 6d 70 5b 32 5d 20 2b 20 22 2f 22 20 2b 20 28 28 74 6d 70 5b 33 5d 20 3d 3d 3d 20 22 3a 22 29 20 3f 20 22 22 20 3a 20 28 74 6d 70 5b 33 5d 2e 72 65 70 6c 61 63 65 28 2f 5c 3a 2f 2c 20 22 22 29 20 2b 20 22 2f 22 29 29 20 2b 20 74 6d 70 5b 34 5d 20 2b 20 22 2e 6a 73 22 29 3b } //01 00 
		$a_01_4 = {63 6f 6e 73 6f 6c 65 2e 6c 6f 67 28 27 49 6e 6a 65 63 74 65 64 20 74 6f 27 2c 20 74 61 62 2e 75 72 6c 29 3b } //00 00 
		$a_00_5 = {7e 15 00 } //00 2b 
	condition:
		any of ($a_*)
 
}