
rule Ransom_Win32_Petya_A{
	meta:
		description = "Ransom:Win32/Petya.A,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 11 00 00 ffffff9c ffffffff "
		
	strings :
		$a_00_0 = {00 50 65 74 79 61 45 78 74 72 61 63 74 6f 72 2e 65 78 65 00 54 4d 65 74 68 6f 64 49 6d 70 6c 65 6d 65 6e 74 61 74 69 6f 6e 49 6e 74 65 72 63 65 70 74 00 } //02 00 
		$a_01_1 = {e8 14 00 66 48 66 83 f8 00 75 f5 66 a1 00 80 ea 00 80 00 00 f4 eb fd } //02 00 
		$a_03_2 = {89 e7 66 50 66 53 06 51 6a 01 6a 10 89 e6 8a 16 90 01 01 7c b4 42 cd 13 90 00 } //02 00 
		$a_01_3 = {73 08 50 30 e4 cd 13 58 eb d6 66 83 c3 01 66 83 d0 00 81 c1 00 02 73 07 } //01 00 
		$a_01_4 = {b8 03 00 cd 10 b8 00 05 cd 10 b9 07 26 b4 01 cd 10 } //01 00 
		$a_01_5 = {8a 7e 04 33 c9 ba 4f 18 b8 00 06 cd 10 32 ff 33 d2 b4 02 cd 10 } //01 00 
		$a_01_6 = {66 c7 46 f6 00 00 00 00 8d 86 f0 fd 89 46 fc 81 7e ee 55 aa 74 03 e9 } //01 00 
		$a_01_7 = {68 48 9f e8 b4 fc 5b e8 3c 00 cd 19 } //01 00 
		$a_03_8 = {57 56 c6 46 90 01 01 78 c6 46 90 01 01 70 c6 46 90 01 01 61 c6 46 90 01 01 6e c6 46 90 01 01 64 c6 46 90 01 01 33 c6 46 90 01 01 32 c6 46 90 01 01 2d 90 00 } //01 00 
		$a_01_9 = {7d 33 8d 41 0b 6b c0 14 c7 04 30 3d 5f 3c 00 } //02 00 
		$a_03_10 = {68 00 00 10 80 51 ff 15 90 01 04 83 f8 ff 75 0c 50 ff 15 90 01 04 6a 02 58 eb 2d 56 8d 4d fc 51 68 90 90 00 00 00 8d 8d 90 01 01 ff ff ff 51 56 56 68 48 00 07 00 90 00 } //02 00 
		$a_03_11 = {68 00 44 00 00 56 ff 15 90 01 04 57 8d 44 24 14 50 53 8d 85 00 02 00 00 90 00 } //01 00 
		$a_01_12 = {8d 4d f8 51 6a 06 56 56 56 68 50 03 00 c0 ff d0 } //01 00 
		$a_00_13 = {59 6f 75 20 62 65 63 61 6d 65 20 76 69 63 74 69 6d 20 6f 66 20 74 68 65 20 50 45 54 59 41 20 52 41 4e 53 4f 4d 57 41 52 45 21 } //01 00  You became victim of the PETYA RANSOMWARE!
		$a_00_14 = {43 48 4b 44 53 4b 20 69 73 20 72 65 70 61 69 72 69 6e 67 20 73 65 63 74 6f 72 } //01 00  CHKDSK is repairing sector
		$a_00_15 = {59 6f 75 20 63 61 6e 20 70 75 72 63 68 61 73 65 20 74 68 69 73 20 6b 65 79 20 6f 6e 20 74 68 65 20 64 61 72 6b 6e 65 74 20 70 61 67 65 } //01 00  You can purchase this key on the darknet page
		$a_00_16 = {3a 2f 2f 70 65 74 79 61 } //00 00  ://petya
		$a_00_17 = {87 10 } //00 00 
	condition:
		any of ($a_*)
 
}