
rule Worm_Win32_Pasnit_A{
	meta:
		description = "Worm:Win32/Pasnit.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0d 00 00 02 00 "
		
	strings :
		$a_03_0 = {c7 02 2e 00 44 00 33 c0 c7 42 04 4c 00 4c 00 66 89 42 08 8d 95 90 01 02 ff ff 66 8b 85 90 01 02 ff ff 56 33 f6 66 85 c0 74 90 01 01 0f b7 c0 66 83 f8 41 72 0e 90 00 } //01 00 
		$a_03_1 = {8b 17 8d 49 08 81 f2 90 01 04 8d 7f 04 0f b6 c2 66 89 41 f8 90 00 } //01 00 
		$a_03_2 = {8b 06 8d 76 04 35 90 01 04 42 89 44 37 fc 3b d3 72 ed 90 00 } //02 00 
		$a_03_3 = {83 7d f8 00 74 1c 6a 00 6a 04 8d 45 fc 50 8b 85 90 01 02 ff ff 05 90 01 04 50 ff 36 ff 15 90 01 04 8b 47 28 03 45 fc 89 85 90 01 02 ff ff 8d 85 90 01 02 ff ff 50 ff 76 04 ff 15 90 00 } //02 00 
		$a_01_4 = {ff 30 48 83 e8 08 e2 f8 67 4c 8b 4d 30 67 4c 8b 45 28 67 48 8b 55 20 67 48 8b 4d 18 83 ec 20 41 ff d3 } //02 00 
		$a_03_5 = {25 00 73 00 c7 45 90 01 01 25 00 73 00 c7 45 90 01 01 5c 00 25 00 c7 45 90 01 01 75 00 2e 00 c7 45 90 01 01 65 00 78 00 c7 45 90 01 01 65 00 00 00 c7 85 90 01 01 ff ff ff 22 00 25 00 c7 85 90 01 01 ff ff ff 73 00 5c 00 90 00 } //01 00 
		$a_03_6 = {83 f8 35 0f 84 90 01 02 00 00 83 f8 43 0f 84 90 01 02 00 00 3d e7 01 00 00 0f 84 90 01 02 00 00 90 00 } //01 00 
		$a_03_7 = {73 00 22 00 c7 45 90 01 01 20 00 2f 00 c7 45 90 01 01 73 00 74 00 c7 45 90 01 01 61 00 62 00 c7 45 90 01 01 20 00 22 00 c7 45 90 01 01 25 00 73 00 c7 45 90 01 01 22 00 00 00 90 00 } //01 00 
		$a_03_8 = {73 00 74 00 c7 45 90 01 01 61 00 62 00 c7 45 90 01 01 20 00 22 00 c7 45 90 01 01 25 00 73 00 c7 45 90 01 01 22 00 00 00 90 00 } //01 00 
		$a_03_9 = {74 0d 32 d0 69 d2 90 01 04 49 ff c0 eb ec 67 3b 55 10 74 08 49 83 c1 04 ff c1 eb cd 90 00 } //01 00 
		$a_81_10 = {2c 63 72 61 7a 79 2c 7a 78 63 31 32 33 2c 61 6c 70 68 61 2c } //01 00  ,crazy,zxc123,alpha,
		$a_81_11 = {2c 64 6f 6e 6b 65 79 2c 68 6f 6f 74 65 72 73 2c 73 6e 69 70 65 72 2c } //01 00  ,donkey,hooters,sniper,
		$a_81_12 = {2c 6d 75 73 74 61 6e 67 2c 31 32 33 33 32 31 2c 71 77 65 72 74 79 75 69 6f 70 2c } //00 00  ,mustang,123321,qwertyuiop,
	condition:
		any of ($a_*)
 
}