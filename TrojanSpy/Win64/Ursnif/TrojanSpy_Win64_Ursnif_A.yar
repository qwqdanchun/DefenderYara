
rule TrojanSpy_Win64_Ursnif_A{
	meta:
		description = "TrojanSpy:Win64/Ursnif.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 04 00 18 00 00 03 00 "
		
	strings :
		$a_01_0 = {81 39 48 54 54 50 74 0c 81 39 50 4f 53 54 0f 85 } //03 00 
		$a_01_1 = {81 3a 47 45 54 20 74 14 81 3a 50 55 54 20 74 0c 81 3a 50 4f 53 54 0f 85 } //03 00 
		$a_03_2 = {c6 00 36 c6 40 01 34 48 83 c0 02 48 8d 15 90 01 04 48 8b 90 01 01 c6 00 00 90 00 } //03 00 
		$a_03_3 = {48 8b 4f 08 ff 15 90 01 04 b9 64 00 00 00 ff 15 90 01 04 48 8b 4f 08 ff 15 90 01 04 48 8b 4f 08 48 8d 54 24 30 ff 15 90 01 04 83 c3 9c 74 0a 48 39 b4 24 28 01 00 00 75 c3 90 00 } //03 00 
		$a_01_4 = {44 0f be 09 41 03 d3 41 ba 08 00 00 00 48 ff c1 41 8b c1 41 33 c0 41 d1 e8 a8 01 74 07 } //03 00 
		$a_01_5 = {41 8b 02 ff c1 41 33 c3 45 8b 1a 41 33 c0 d3 c8 41 89 02 49 83 c2 04 83 c2 ff 75 d9 } //03 00 
		$a_01_6 = {b8 1f 85 eb 51 41 f7 eb c1 fa 03 8b c2 c1 e8 1f 03 d0 6b d2 19 44 2b da 41 80 c3 61 44 88 5d 00 48 ff c5 48 ff cf 75 cd } //03 00 
		$a_01_7 = {83 c1 01 41 d3 c0 45 33 d0 45 33 d3 44 89 10 48 83 c0 04 83 c2 ff 75 d0 } //03 00 
		$a_01_8 = {02 c2 41 80 f9 09 41 88 00 41 8b c3 0f 4f c3 49 83 c0 02 48 83 c1 01 41 02 c1 49 83 ea 01 41 88 40 ff 75 c6 } //01 00 
		$a_01_9 = {75 73 65 72 5f 69 64 3d 25 2e 34 75 26 76 65 72 73 69 6f 6e 5f 69 64 3d 25 6c 75 26 73 6f 63 6b 73 3d 25 6c 75 26 62 75 69 6c 64 3d 25 6c 75 26 63 72 63 3d 25 2e 38 78 } //01 00 
		$a_01_10 = {76 65 72 73 69 6f 6e 3d 25 75 26 75 73 65 72 3d 25 78 25 78 25 78 25 78 26 73 65 72 76 65 72 3d 25 75 26 69 64 3d 25 75 } //01 00 
		$a_01_11 = {3f 63 72 63 3d 25 78 26 76 65 72 73 69 6f 6e 3d 25 75 26 75 73 65 72 3d 25 78 25 78 25 78 25 78 26 69 64 3d 25 75 26 73 65 72 76 65 72 3d 25 75 } //01 00 
		$a_00_12 = {4e 45 57 47 52 41 42 00 } //01 00 
		$a_00_13 = {44 4c 5f 45 58 45 00 00 44 4c 5f 45 58 45 5f 53 54 00 } //01 00 
		$a_00_14 = {55 52 4c 3a 20 25 73 0d 0a 75 73 65 72 3d 25 73 0d 0a 70 61 73 73 3d 25 73 00 } //01 00 
		$a_00_15 = {2f 55 50 44 00 2f 53 44 00 2f 73 64 20 20 25 6c 75 00 } //01 00 
		$a_00_16 = {76 65 72 73 69 6f 6e 3d 25 75 26 75 73 65 72 3d 25 73 26 73 65 72 76 65 72 3d 25 75 26 69 64 3d 25 75 26 74 79 70 65 3d 25 75 26 6e 61 6d 65 3d 25 73 } //01 00 
		$a_00_17 = {6d 61 6b 65 63 61 62 2e 65 78 65 20 2f 46 20 22 25 73 22 } //01 00 
		$a_00_18 = {76 65 72 73 69 6f 6e 3d 25 73 26 67 72 6f 75 70 3d 25 73 26 63 6c 69 65 6e 74 3d 25 73 } //01 00 
		$a_00_19 = {2f 00 74 00 61 00 73 00 6b 00 73 00 3f 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 25 00 73 00 } //01 00 
		$a_00_20 = {2f 00 64 00 61 00 74 00 61 00 3f 00 76 00 65 00 72 00 73 00 69 00 6f 00 6e 00 3d 00 25 00 73 00 } //01 00 
		$a_00_21 = {64 61 74 61 2e 70 68 70 3f 76 65 72 73 69 6f 6e 3d 25 75 26 75 73 65 72 3d 25 30 38 78 25 30 38 78 25 30 38 78 25 30 38 78 26 73 65 72 76 65 72 3d 25 75 26 69 64 3d 25 75 26 74 79 70 65 3d 25 75 26 6e 61 6d 65 3d 25 73 } //01 00 
		$a_00_22 = {2f 75 70 64 20 25 6c 75 00 } //01 00 
		$a_00_23 = {2f 55 20 2f 43 20 22 74 79 70 65 20 25 73 31 20 3e 20 25 73 20 26 20 64 65 6c 20 25 73 31 } //00 00 
	condition:
		any of ($a_*)
 
}