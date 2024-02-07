
rule Backdoor_Win32_Drixed_C_{
	meta:
		description = "Backdoor:Win32/Drixed.C!!Drixed.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,0a 00 0a 00 1b 00 00 01 00 "
		
	strings :
		$a_00_0 = {62 63 6f 6e 6e 65 63 74 00 } //01 00 
		$a_00_1 = {62 6f 74 5f 69 64 00 } //01 00 
		$a_00_2 = {62 6f 74 5f 78 33 32 00 } //01 00  潢彴㍸2
		$a_00_3 = {63 6c 69 63 6b 73 68 6f 74 00 } //01 00  汣捩獫潨t
		$a_00_4 = {68 74 74 70 73 68 6f 74 00 } //01 00 
		$a_00_5 = {4e 6f 74 69 66 69 65 72 49 6e 69 74 00 } //01 00 
		$a_00_6 = {72 65 71 75 65 73 74 5f 75 72 69 00 } //01 00  敲畱獥彴牵i
		$a_00_7 = {73 6f 63 6b 73 5f 78 33 32 00 } //01 00  潳正彳㍸2
		$a_00_8 = {76 6e 63 5f 78 33 32 00 } //01 00  湶彣㍸2
		$a_00_9 = {76 6e 63 63 6f 6e 6e 65 63 74 00 } //01 00 
		$a_00_10 = {56 6e 63 53 74 61 72 74 53 65 72 76 65 72 00 } //01 00 
		$a_00_11 = {56 6e 63 53 74 6f 70 53 65 72 76 65 72 00 } //01 00  湖卣潴印牥敶r
		$a_00_12 = {77 6f 72 6b 65 72 5f 78 33 32 2e 64 6c 6c 00 } //01 00 
		$a_00_13 = {7c 45 58 49 53 54 0d 0a 00 } //01 00 
		$a_00_14 = {7c 4e 4f 4e 45 0d 0a 00 } //01 00 
		$a_00_15 = {69 00 65 00 2e 00 7a 00 69 00 70 00 00 00 } //01 00 
		$a_00_16 = {73 00 6f 00 6c 00 2e 00 7a 00 69 00 70 00 00 00 } //01 00 
		$a_00_17 = {63 00 68 00 2e 00 63 00 61 00 62 00 00 00 } //01 00 
		$a_00_18 = {66 00 66 00 2e 00 63 00 61 00 62 00 00 00 } //01 00 
		$a_03_19 = {30 0c 3e 46 3b b0 90 01 02 00 00 72 f1 33 c9 8d 45 90 01 01 50 8b 45 90 01 01 51 8d b0 00 08 00 00 56 50 51 51 89 4d 90 01 01 ff 15 90 00 } //01 00 
		$a_03_20 = {8b 45 fc 8b 4d 0c 03 c2 50 e8 90 01 04 52 8b cb 8b f8 e8 90 01 04 8a 00 30 07 42 3b 55 08 7c de 90 00 } //01 00 
		$a_01_21 = {8b 43 04 8d 5c 03 10 81 3b ef be ad de 74 df eb 04 85 db 75 1d 0f b7 46 06 } //01 00 
		$a_03_22 = {81 be 00 04 00 00 ef be ad de 89 35 90 01 04 0f 85 90 01 04 b8 00 04 00 00 8d 4c 24 10 90 00 } //01 00 
		$a_03_23 = {8a 0f 80 f9 23 0f 84 90 01 04 80 f9 61 74 90 01 01 80 f9 67 74 90 01 01 80 f9 6c 74 90 01 01 80 f9 71 0f 85 90 00 } //01 00 
		$a_03_24 = {47 8a 0f 80 f9 6d 75 90 01 01 47 80 3f 70 0f 85 90 01 04 47 80 3f 3b 0f 85 90 01 04 c6 03 26 8d 4f 01 90 00 } //01 00 
		$a_03_25 = {80 3f 43 75 90 01 01 47 80 3f 44 75 90 01 01 47 80 3f 41 75 90 01 01 47 80 3f 54 75 90 01 01 47 80 3f 41 90 00 } //01 00 
		$a_03_26 = {80 7f 01 4f 75 90 01 01 80 7f 02 43 75 90 01 01 80 7f 03 54 75 90 01 01 80 7f 04 59 75 90 01 01 80 7f 05 50 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}