
rule VirTool_WinNT_Rootkitdrv_KD{
	meta:
		description = "VirTool:WinNT/Rootkitdrv.KD,SIGNATURE_TYPE_PEHSTR_EXT,1b 00 1b 00 1b 00 00 01 00 "
		
	strings :
		$a_01_0 = {6e 74 6f 73 6b 72 6e 6c 2e 65 78 65 } //01 00 
		$a_01_1 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //01 00 
		$a_01_2 = {4b 65 53 65 72 76 69 63 65 44 65 73 63 72 69 70 74 6f 72 54 61 62 6c 65 } //01 00 
		$a_01_3 = {4b 65 49 6e 69 74 69 61 6c 69 7a 65 45 76 65 6e 74 } //01 00 
		$a_01_4 = {49 6f 43 72 65 61 74 65 44 65 76 69 63 65 } //01 00 
		$a_01_5 = {5a 77 4f 70 65 6e 4b 65 79 } //01 00 
		$a_01_6 = {50 73 4c 6f 6f 6b 75 70 50 72 6f 63 65 73 73 42 79 50 72 6f 63 65 73 73 49 64 } //01 00 
		$a_01_7 = {4b 65 57 61 69 74 46 6f 72 53 69 6e 67 6c 65 4f 62 6a 65 63 74 } //01 00 
		$a_01_8 = {50 73 43 72 65 61 74 65 53 79 73 74 65 6d 54 68 72 65 61 64 } //01 00 
		$a_01_9 = {4b 65 53 65 74 45 76 65 6e 74 } //01 00 
		$a_01_10 = {49 6f 66 43 6f 6d 70 6c 65 74 65 52 65 71 75 65 73 74 } //01 00 
		$a_01_11 = {5a 77 43 72 65 61 74 65 46 69 6c 65 } //01 00 
		$a_01_12 = {4f 62 51 75 65 72 79 4e 61 6d 65 53 74 72 69 6e 67 } //01 00 
		$a_00_13 = {5c 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 5c 00 4d 00 61 00 63 00 68 00 69 00 6e 00 65 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 20 00 4e 00 54 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 } //01 00 
		$a_01_14 = {7b 32 34 35 33 31 30 32 35 2d 32 39 46 30 2d 38 38 31 32 2d 46 47 38 48 2d 46 35 31 32 32 31 39 30 39 30 48 31 7d } //01 00 
		$a_01_15 = {7b 35 44 34 32 34 33 34 45 2d 42 43 41 33 2d 34 30 36 31 2d 39 46 41 43 2d 43 33 41 42 45 45 30 42 38 32 45 43 7d } //01 00 
		$a_00_16 = {5c 00 44 00 65 00 76 00 69 00 63 00 65 00 5c 00 7b 00 35 00 44 00 34 00 32 00 34 00 33 00 34 00 45 00 2d 00 42 00 43 00 41 00 33 00 2d 00 34 00 30 00 36 00 31 00 2d 00 39 00 46 00 41 00 43 00 2d 00 43 00 33 00 41 00 42 00 45 00 45 00 30 00 42 00 38 00 32 00 45 00 43 00 7d 00 } //01 00 
		$a_00_17 = {5c 00 44 00 6f 00 73 00 44 00 65 00 76 00 69 00 63 00 65 00 73 00 5c 00 7b 00 35 00 44 00 34 00 32 00 34 00 33 00 34 00 45 00 2d 00 42 00 43 00 41 00 33 00 2d 00 34 00 30 00 36 00 31 00 2d 00 39 00 46 00 41 00 43 00 2d 00 43 00 33 00 41 00 42 00 45 00 45 00 30 00 42 00 38 00 32 00 45 00 43 00 7d 00 } //01 00 
		$a_01_18 = {69 62 74 70 73 76 69 76 2e 69 62 69 } //01 00 
		$a_01_19 = {72 78 6f 76 72 70 74 65 2e 69 62 69 } //01 00 
		$a_01_20 = {71 77 68 72 37 36 2e 78 70 6a } //01 00 
		$a_01_21 = {4f 69 4d 72 6d 78 6d 65 70 6d 64 69 45 74 67 } //01 00 
		$a_01_22 = {51 71 51 65 74 50 73 67 6f 69 68 54 65 6b 69 77 57 74 69 67 6d 6a 63 47 65 67 6c 69 } //01 00 
		$a_01_23 = {4f 69 59 72 77 78 65 67 6f 48 69 78 65 67 6c 54 76 73 67 69 77 77 } //01 00 
		$a_01_24 = {4f 69 57 78 65 67 6f 45 78 78 65 67 6c 54 76 73 67 69 77 77 } //01 00 
		$a_01_25 = {4f 69 4d 72 77 69 76 78 55 79 69 79 69 45 74 67 } //01 00 
		$a_01_26 = {47 65 74 5f 43 75 72 5f 49 6d 61 67 65 5f 50 61 74 68 20 69 73 20 25 73 } //00 00 
	condition:
		any of ($a_*)
 
}