
rule Trojan_Win32_FusionBlaze_B_dha{
	meta:
		description = "Trojan:Win32/FusionBlaze.B!dha,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 16 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 00 25 00 73 00 5c 00 25 00 73 00 2e 00 6d 00 75 00 69 00 00 00 } //01 00 
		$a_01_1 = {00 00 25 00 73 00 5c 00 65 00 6e 00 2d 00 55 00 53 00 5c 00 63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 2e 00 6d 00 75 00 69 00 00 00 } //01 00 
		$a_01_2 = {00 0d 0a 0d 0a 61 50 4c 69 62 20 76 31 2e 30 31 20 20 2d 20 20 74 68 65 20 73 6d 61 6c 6c 65 72 20 74 68 65 20 62 65 74 74 65 72 20 3a 29 00 } //01 00 
		$a_01_3 = {00 00 72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 20 00 25 00 73 00 20 00 25 00 73 00 20 00 25 00 73 00 20 00 67 00 6f 00 20 00 22 00 25 00 73 00 22 00 00 00 } //01 00 
		$a_01_4 = {00 25 30 32 64 2f 25 30 32 64 2f 25 64 20 20 25 30 32 64 3a 25 30 32 64 00 } //01 00 
		$a_01_5 = {00 6e 65 77 20 62 61 73 65 3a 25 70 00 } //01 00 
		$a_01_6 = {00 68 6b 20 70 6f 72 74 20 6d 75 74 65 78 00 } //02 00 
		$a_01_7 = {25 00 64 00 20 00 43 00 6f 00 72 00 65 00 20 00 25 00 2e 00 32 00 66 00 20 00 47 00 48 00 7a 00 00 00 } //02 00 
		$a_01_8 = {00 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 50 00 61 00 74 00 68 00 3d 00 25 00 5b 00 5e 00 7c 00 5d 00 00 00 } //02 00 
		$a_01_9 = {00 00 77 00 69 00 6e 00 4d 00 61 00 69 00 6e 00 20 00 73 00 74 00 61 00 74 00 69 00 63 00 20 00 67 00 72 00 65 00 65 00 6e 00 00 00 } //02 00 
		$a_01_10 = {00 00 64 00 6c 00 6c 00 6d 00 61 00 69 00 6e 00 20 00 73 00 74 00 61 00 74 00 69 00 63 00 20 00 67 00 72 00 65 00 65 00 6e 00 00 00 } //02 00 
		$a_01_11 = {00 31 7c 25 5b 5e 7c 5d 7c 25 5b 5e 7c 5d 7c 25 5b 5e 7c 5d 7c 00 } //02 00 
		$a_01_12 = {00 50 4b 54 5f 46 49 4c 45 5f 44 52 49 56 45 5f 52 45 51 00 } //02 00 
		$a_01_13 = {00 72 65 63 76 20 46 49 4c 45 5f 4d 47 52 5f 44 49 52 00 } //02 00 
		$a_01_14 = {00 72 65 63 76 20 46 49 4c 45 5f 4d 47 52 5f 52 45 4e 41 4d 45 00 } //02 00 
		$a_01_15 = {00 72 65 63 76 20 46 49 4c 45 5f 4d 47 52 5f 4e 45 57 44 49 52 00 } //02 00 
		$a_01_16 = {00 72 65 63 76 20 46 49 4c 45 5f 4d 47 52 5f 44 45 4c 45 54 45 00 } //02 00 
		$a_01_17 = {00 50 4b 54 5f 46 49 4c 45 5f 44 4f 57 4e 4c 4f 41 44 5f 52 45 51 00 } //02 00 
		$a_01_18 = {00 50 4b 54 5f 46 49 4c 45 5f 55 50 4c 4f 41 44 5f 52 45 51 00 } //03 00 
		$a_01_19 = {00 00 5b 00 47 00 72 00 65 00 65 00 6e 00 5d 00 20 00 70 00 69 00 64 00 3d 00 25 00 64 00 20 00 74 00 69 00 64 00 3d 00 25 00 64 00 20 00 6d 00 6f 00 64 00 75 00 6c 00 65 00 50 00 61 00 74 00 68 00 3d 00 25 00 73 00 7c 00 00 00 } //03 00 
		$a_01_20 = {00 00 5b 00 47 00 72 00 65 00 65 00 6e 00 20 00 72 00 65 00 67 00 73 00 76 00 72 00 33 00 32 00 5d 00 20 00 70 00 69 00 64 00 3d 00 25 00 64 00 20 00 74 00 69 00 64 00 3d 00 25 00 64 00 20 00 63 00 75 00 72 00 72 00 65 00 6e 00 74 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 3d 00 25 00 73 00 20 00 72 00 65 00 61 00 6c 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 3d 00 25 00 73 00 00 00 } //03 00 
		$a_01_21 = {00 00 25 00 73 00 20 00 5b 00 50 00 45 00 4c 00 6f 00 61 00 64 00 65 00 72 00 5d 00 20 00 70 00 69 00 64 00 3d 00 25 00 64 00 20 00 74 00 69 00 64 00 3d 00 25 00 64 00 20 00 68 00 4d 00 6f 00 64 00 75 00 6c 00 65 00 3d 00 30 00 78 00 25 00 70 00 20 00 65 00 6e 00 74 00 72 00 79 00 3d 00 30 00 78 00 25 00 70 00 00 00 } //00 00 
	condition:
		any of ($a_*)
 
}