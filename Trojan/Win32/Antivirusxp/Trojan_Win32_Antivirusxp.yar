
rule Trojan_Win32_Antivirusxp{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_02_0 = {55 6e 69 6e 73 74 61 6c 6c 20 70 72 6f 67 72 61 6d 90 02 04 41 6e 74 69 76 69 72 75 73 20 58 50 90 00 } //02 00 
		$a_00_1 = {00 5c 41 6e 74 69 76 69 72 75 73 20 58 50 20 } //01 00 
		$a_00_2 = {54 68 69 73 20 69 73 20 74 72 69 61 6c 20 76 65 72 73 69 6f 6e } //01 00 
		$a_00_3 = {64 65 6c 73 65 6c 66 2e 62 61 74 00 40 65 63 68 6f 20 6f 66 66 } //01 00 
		$a_00_4 = {2e 6c 6e 6b 00 53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Antivirusxp_2{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {70 61 72 74 79 70 6f 6b 65 72 2e 63 6f 6d 00 00 6d 65 64 69 61 66 69 72 65 2e 63 6f 6d } //01 00 
		$a_01_1 = {61 64 75 6c 74 66 72 69 65 6e 64 66 69 6e 64 65 72 2e 63 6f 6d 00 00 73 6b 79 72 6f 63 6b 2e 63 6f 6d } //01 00 
		$a_01_2 = {3c 21 2d 2d 4f 4c 44 5f 55 52 4c 2d 2d 3e 00 00 49 44 52 5f 57 41 52 4e } //01 00 
		$a_01_3 = {65 63 68 6f 20 3e 20 25 31 } //01 00 
		$a_01_4 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f } //02 00 
		$a_01_5 = {b8 39 32 32 39 eb 04 8b 44 24 10 8b 4c 24 38 33 c1 8b d1 81 f2 39 32 32 39 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Antivirusxp_3{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 0a 00 "
		
	strings :
		$a_02_0 = {61 6e 74 69 76 69 72 75 73 90 02 02 32 30 90 01 02 2e 63 6f 6d 90 00 } //02 00 
		$a_00_1 = {34 32 37 64 62 41 65 30 2d 37 37 39 39 2d 34 36 31 31 2d 39 37 38 39 2d 64 65 62 33 36 31 35 36 64 31 61 64 4c 4f 41 44 45 44 4d 55 54 58 } //01 00 
		$a_00_2 = {5c 64 61 74 61 62 61 73 65 2e 64 61 74 00 00 00 45 6e 61 62 6c 65 4c 6f 67 67 69 6e 67 00 00 00 6c 6f 67 2e 74 78 74 } //01 00 
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 49 6e 74 65 72 6e 65 74 20 53 65 74 74 69 6e 67 73 5c 55 73 65 72 20 41 67 65 6e 74 5c 50 6f 73 74 20 50 6c 61 74 66 6f 72 6d } //01 00 
		$a_00_4 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 53 68 65 6c 6c 20 45 78 74 65 6e 73 69 6f 6e 73 5c 41 70 70 72 6f 76 65 64 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Antivirusxp_4{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR_EXT,ffffffa0 00 ffffff8c 00 16 00 00 0a 00 "
		
	strings :
		$a_01_0 = {2f 62 75 79 32 2f } //0a 00 
		$a_01_1 = {42 75 79 55 72 6c 00 } //0a 00 
		$a_01_2 = {2f 70 75 72 63 68 61 73 65 32 2f } //0a 00 
		$a_00_3 = {42 75 79 44 69 73 63 55 72 6c 00 } //0a 00 
		$a_00_4 = {5c 70 69 6e 2e 76 62 73 20 22 } //0a 00 
		$a_00_5 = {64 61 74 61 62 61 73 65 2e 64 61 74 00 } //0a 00 
		$a_01_6 = {44 61 74 61 62 61 73 65 56 65 72 73 69 6f 6e 00 } //0a 00 
		$a_01_7 = {50 72 6f 67 72 61 6d 56 65 72 73 69 6f 6e 00 } //0a 00 
		$a_01_8 = {45 6e 67 69 6e 65 56 65 72 73 69 6f 6e 00 } //0a 00 
		$a_01_9 = {47 75 69 56 65 72 73 69 6f 6e 00 } //0a 00 
		$a_01_10 = {53 63 61 6e 50 72 69 6f 72 69 74 79 00 } //0a 00 
		$a_01_11 = {44 61 79 73 49 6e 74 65 72 76 61 6c 00 } //0a 00 
		$a_01_12 = {53 63 61 6e 44 65 70 74 68 00 } //0a 00 
		$a_01_13 = {53 63 61 6e 53 79 73 74 65 6d 4f 6e 53 74 61 72 74 75 70 00 } //0a 00 
		$a_01_14 = {41 75 74 6f 6d 61 74 69 63 61 6c 6c 79 55 70 64 61 74 65 73 00 } //0a 00 
		$a_01_15 = {42 61 63 6b 67 72 6f 75 6e 64 53 63 61 6e 00 } //0a 00 
		$a_01_16 = {42 61 63 6b 67 72 6f 75 6e 64 53 63 61 6e 54 69 6d 65 6f 75 74 00 } //0a 00 
		$a_00_17 = {34 32 37 64 62 41 65 30 2d 37 37 39 39 2d 34 36 31 31 2d 39 37 38 39 2d 64 65 62 33 36 31 35 36 64 31 61 64 4c 4f 41 44 45 44 4d 55 54 58 } //0a 00 
		$a_00_18 = {68 74 74 70 3a 2f 2f 77 77 77 2e 25 64 6f 6d 61 69 6e 25 2f 75 70 64 61 74 65 73 2f 63 68 65 63 6b 2e 68 74 6d 6c 00 } //05 00 
		$a_00_19 = {2f 52 45 47 49 53 54 45 52 00 } //05 00 
		$a_01_20 = {2f 72 65 67 69 73 74 72 61 74 69 6f 6e 2f } //05 00 
		$a_00_21 = {5c 6c 69 63 65 6e 73 65 2e 74 78 74 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Antivirusxp_5{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR,04 00 04 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {5c 41 6e 74 69 76 69 72 75 73 20 58 50 20 32 30 30 38 00 } //01 00 
		$a_01_1 = {2e 65 78 65 00 4b 69 6c 6c 50 72 6f 63 } //01 00 
		$a_01_2 = {4d 75 74 65 78 2e 64 6c 6c 00 4d 75 74 65 78 43 68 65 63 6b } //01 00 
		$a_01_3 = {4d 61 63 68 69 6e 65 4b 65 79 2e 64 6c 6c 00 47 65 74 4b 65 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Antivirusxp_6{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 2d 00 78 00 70 00 70 00 72 00 6f 00 2d 00 32 00 30 00 30 00 39 00 2e 00 63 00 6f 00 6d 00 2f 00 62 00 75 00 79 00 2f 00 3f 00 63 00 6f 00 64 00 65 00 3d 00 } //01 00 
		$a_01_1 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 58 00 50 00 } //01 00 
		$a_01_2 = {5c 56 69 72 75 73 49 73 6f 6c 61 74 6f 72 5c } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_Win32_Antivirusxp_7{
	meta:
		description = "Trojan:Win32/Antivirusxp,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 03 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 00 75 00 70 00 70 00 6f 00 72 00 74 00 40 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 78 00 70 00 32 00 30 00 30 00 38 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 61 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 78 00 70 00 32 00 30 00 30 00 38 00 2e 00 63 00 6f 00 6d 00 } //01 00 
		$a_01_2 = {41 00 6e 00 74 00 69 00 76 00 69 00 72 00 75 00 73 00 20 00 58 00 50 00 20 00 32 00 30 00 30 00 38 00 } //00 00 
	condition:
		any of ($a_*)
 
}