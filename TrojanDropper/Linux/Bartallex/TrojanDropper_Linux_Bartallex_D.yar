
rule TrojanDropper_Linux_Bartallex_D{
	meta:
		description = "TrojanDropper:Linux/Bartallex.D,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 08 00 00 01 00 "
		
	strings :
		$a_03_0 = {57 69 74 68 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 2e 46 69 6e 64 90 02 10 2e 54 65 78 74 20 3d 20 22 90 02 10 22 90 02 10 2e 46 6f 72 77 61 72 64 20 3d 20 54 72 75 65 90 00 } //01 00 
		$a_03_1 = {2b 20 22 65 22 20 2b 20 22 78 22 20 2b 20 22 65 22 90 02 20 20 3d 20 46 72 65 65 46 69 6c 65 28 29 90 00 } //01 00 
		$a_01_2 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 } //01 00  = Environ("TEMP")
		$a_01_3 = {29 20 3d 20 43 42 79 74 65 28 22 26 48 22 20 26 20 4d 69 64 28 } //01 00  ) = CByte("&H" & Mid(
		$a_01_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 22 20 2b 20 22 68 65 6c 22 20 2b 20 22 6c 2e 41 70 22 20 2b 20 22 70 6c 22 20 2b 20 22 69 22 20 2b 20 22 63 61 74 69 6f 6e 22 29 } //01 00  = CreateObject("S" + "hel" + "l.Ap" + "pl" + "i" + "cation")
		$a_01_5 = {3d 20 22 74 6e 4e 6a 4d 52 7a 4d 62 70 65 72 66 65 63 74 22 } //01 00  = "tnNjMRzMbperfect"
		$a_03_6 = {50 75 74 20 23 90 02 20 2c 20 31 2c 20 90 02 20 43 6c 6f 73 65 20 23 90 02 80 41 73 20 53 74 72 69 6e 67 29 90 02 10 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 90 02 10 49 66 20 90 02 20 20 3d 20 22 32 22 20 54 68 65 6e 90 02 10 4d 73 67 42 6f 78 20 28 90 00 } //01 00 
		$a_03_7 = {44 6f 20 57 68 69 6c 65 20 90 02 08 20 3e 20 90 02 20 4d 79 52 61 6e 67 65 2e 43 6f 6c 6c 61 70 73 65 90 02 20 4d 79 52 61 6e 67 65 2e 49 6e 73 65 72 74 41 66 74 65 72 20 28 90 02 20 29 90 02 10 45 78 69 74 20 44 6f 90 02 10 4c 6f 6f 70 90 02 30 2e 4f 70 65 6e 20 28 90 02 20 20 26 20 22 5c 22 20 26 20 90 02 20 29 90 00 } //00 00 
		$a_00_8 = {5d 04 00 00 } //c7 6e 
	condition:
		any of ($a_*)
 
}