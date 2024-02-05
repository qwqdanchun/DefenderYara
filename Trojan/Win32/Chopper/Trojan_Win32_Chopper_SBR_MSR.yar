
rule Trojan_Win32_Chopper_SBR_MSR{
	meta:
		description = "Trojan:Win32/Chopper.SBR!MSR,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 09 00 00 05 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6d 00 61 00 69 00 63 00 61 00 69 00 64 00 61 00 6f 00 2e 00 63 00 6f 00 6d 00 } //03 00 
		$a_01_1 = {43 00 68 00 6f 00 70 00 70 00 65 00 72 00 20 00 46 00 69 00 6c 00 65 00 } //01 00 
		$a_01_2 = {44 00 72 00 69 00 76 00 65 00 72 00 3d 00 7b 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 20 00 41 00 63 00 63 00 65 00 73 00 73 00 20 00 44 00 72 00 69 00 76 00 65 00 72 00 20 00 28 00 2a 00 2e 00 6d 00 64 00 62 00 29 00 7d 00 3b 00 44 00 42 00 51 00 3d 00 25 00 73 00 5c 00 63 00 61 00 63 00 68 00 65 00 2e 00 74 00 6d 00 70 00 3b 00 45 00 78 00 63 00 6c 00 75 00 73 00 69 00 76 00 65 00 3d 00 31 00 3b 00 70 00 77 00 64 00 } //01 00 
		$a_01_3 = {50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 3d 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 2e 00 4a 00 65 00 74 00 2e 00 4f 00 4c 00 45 00 44 00 42 00 2e 00 34 00 2e 00 30 00 3b 00 64 00 61 00 74 00 61 00 20 00 73 00 6f 00 75 00 72 00 63 00 65 00 3d 00 25 00 73 00 5c 00 63 00 61 00 63 00 68 00 65 00 2e 00 74 00 6d 00 70 00 3b 00 4a 00 65 00 74 00 20 00 4f 00 4c 00 45 00 44 00 42 00 3a 00 44 00 61 00 74 00 61 00 62 00 61 00 73 00 65 00 20 00 50 00 61 00 73 00 73 00 77 00 6f 00 72 00 64 00 } //01 00 
		$a_01_4 = {53 00 45 00 4c 00 45 00 43 00 54 00 20 00 54 00 4f 00 50 00 20 00 31 00 20 00 5b 00 49 00 74 00 65 00 6d 00 5d 00 2c 00 5b 00 44 00 61 00 74 00 5d 00 20 00 46 00 52 00 4f 00 4d 00 20 00 5b 00 43 00 41 00 43 00 48 00 45 00 5d 00 20 00 57 00 48 00 45 00 52 00 45 00 20 00 5b 00 49 00 74 00 65 00 6d 00 5d 00 } //01 00 
		$a_01_5 = {45 00 78 00 65 00 63 00 75 00 74 00 65 00 28 00 22 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 53 00 63 00 72 00 69 00 70 00 74 00 54 00 69 00 6d 00 65 00 6f 00 75 00 74 00 } //01 00 
		$a_01_6 = {44 00 72 00 69 00 76 00 65 00 72 00 3d 00 7b 00 4d 00 79 00 53 00 51 00 4c 00 7d 00 3b 00 53 00 65 00 72 00 76 00 65 00 72 00 3d 00 6c 00 6f 00 63 00 61 00 6c 00 68 00 6f 00 73 00 74 00 3b 00 64 00 61 00 74 00 61 00 62 00 61 00 73 00 65 00 3d 00 6d 00 79 00 73 00 71 00 6c 00 3b 00 55 00 49 00 44 00 3d 00 72 00 6f 00 6f 00 74 00 3b 00 50 00 57 00 44 00 3d 00 } //01 00 
		$a_01_7 = {64 00 69 00 72 00 6e 00 61 00 6d 00 65 00 28 00 24 00 5f 00 53 00 45 00 52 00 56 00 45 00 52 00 5b 00 22 00 53 00 43 00 52 00 49 00 50 00 54 00 5f 00 46 00 49 00 4c 00 45 00 4e 00 41 00 4d 00 45 00 22 00 5d 00 29 00 } //01 00 
		$a_01_8 = {45 00 58 00 45 00 43 00 20 00 6d 00 61 00 73 00 74 00 65 00 72 00 2e 00 2e 00 78 00 70 00 5f 00 63 00 6d 00 64 00 73 00 68 00 65 00 6c 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}