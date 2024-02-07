
rule _PseudoThreat_c0000b0a{
	meta:
		description = "!PseudoThreat_c0000b0a,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {4e 6f 52 65 6d 6f 76 65 20 41 70 70 49 44 90 01 08 27 25 41 50 50 49 44 25 27 20 3d 20 73 20 27 53 70 79 53 68 72 65 64 64 65 72 27 90 01 04 27 77 65 62 69 6e 73 74 2e 64 6c 6c 27 90 00 } //01 00 
		$a_02_1 = {53 70 79 53 68 72 65 64 64 65 72 2e 57 65 62 49 6e 73 74 61 6c 6c 2e 31 20 3d 20 73 20 27 57 65 62 49 6e 73 74 61 6c 6c 20 43 6c 61 73 73 27 90 01 08 43 4c 53 49 44 20 3d 20 73 20 27 7b 33 34 33 43 45 32 31 34 2d 39 39 39 38 2d 34 42 32 31 2d 41 31 35 31 2d 46 46 45 39 37 30 31 36 37 32 39 37 7d 27 90 00 } //01 00 
		$a_02_2 = {53 70 79 53 68 72 65 64 64 65 72 2e 57 65 62 49 6e 73 74 61 6c 6c 20 3d 20 73 20 27 57 65 62 49 6e 73 74 61 6c 6c 20 43 6c 61 73 73 27 90 01 08 43 4c 53 49 44 20 3d 20 73 20 27 7b 33 34 33 43 45 32 31 34 2d 39 39 39 38 2d 34 42 32 31 2d 41 31 35 31 2d 46 46 45 39 37 30 31 36 37 32 39 37 7d 27 90 00 } //01 00 
		$a_02_3 = {43 75 72 56 65 72 20 3d 20 73 20 27 53 70 79 53 68 72 65 64 64 65 72 2e 57 65 62 49 6e 73 74 61 6c 6c 2e 31 27 90 01 07 4e 6f 52 65 6d 6f 76 65 20 43 4c 53 49 44 90 01 08 46 6f 72 63 65 52 65 6d 6f 76 65 20 7b 33 34 33 43 45 32 31 34 2d 39 39 39 38 2d 34 42 32 31 2d 41 31 35 31 2d 46 46 45 39 37 30 31 36 37 32 39 37 7d 20 3d 20 73 20 27 57 65 62 49 6e 73 74 61 6c 6c 20 43 6c 61 73 73 27 90 00 } //01 00 
		$a_02_4 = {50 72 6f 67 49 44 20 3d 20 73 20 27 53 70 79 53 68 72 65 64 64 65 72 2e 57 65 62 49 6e 73 74 61 6c 6c 2e 31 27 90 01 05 56 65 72 73 69 6f 6e 49 6e 64 65 70 65 6e 64 65 6e 74 50 72 6f 67 49 44 20 3d 20 73 20 27 53 70 79 53 68 72 65 64 64 65 72 2e 57 65 62 49 6e 73 74 61 6c 6c 27 90 00 } //01 00 
		$a_00_5 = {27 54 79 70 65 4c 69 62 27 20 3d 20 73 20 27 7b 44 32 34 33 36 35 33 33 2d 33 33 46 39 2d 34 39 35 43 2d 39 43 44 39 2d 44 41 46 32 31 45 36 37 46 46 45 42 7d 27 } //00 00  'TypeLib' = s '{D2436533-33F9-495C-9CD9-DAF21E67FFEB}'
	condition:
		any of ($a_*)
 
}