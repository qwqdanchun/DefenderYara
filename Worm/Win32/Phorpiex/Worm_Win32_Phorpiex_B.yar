
rule Worm_Win32_Phorpiex_B{
	meta:
		description = "Worm:Win32/Phorpiex.B,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0c 00 00 01 00 "
		
	strings :
		$a_03_0 = {99 b9 09 00 00 00 f7 f9 52 e8 90 01 04 99 b9 09 00 00 00 f7 f9 52 e8 90 01 04 99 b9 09 00 00 00 f7 f9 52 e8 90 01 04 99 b9 09 00 00 00 f7 f9 90 00 } //01 00 
		$a_03_1 = {83 f8 02 75 90 03 01 01 1c 19 8a 06 0c 20 3c 61 74 90 03 01 01 14 11 3c 62 74 90 03 01 01 10 0d 90 00 } //01 00 
		$a_03_2 = {6a 00 6a 0d 68 00 01 00 00 56 ff 15 90 01 04 6a 00 6a 00 6a 10 57 ff d5 6a 00 6a 00 6a 08 57 ff d5 6a 00 6a 00 6a 02 57 ff d5 90 00 } //01 00 
		$a_01_3 = {0f b7 c0 3d 01 04 00 00 7f 1f 74 13 83 f8 04 0f 85 } //01 00 
		$a_01_4 = {46 81 fe f4 01 00 00 7c d5 33 f6 8b 44 b4 38 6a 10 8d 54 24 18 52 50 ff d3 46 81 fe f4 01 00 00 7c e9 } //01 00 
		$a_01_5 = {8d 46 01 99 be 28 00 00 00 f7 fe bb 28 00 00 00 41 0f b7 c2 0f b7 f0 0f b6 44 34 14 03 c7 99 bf 28 00 00 00 f7 ff 0f b7 c2 0f b7 f8 } //01 00 
		$a_01_6 = {84 c9 74 0c 8a 4e 01 8a 5a 01 46 42 32 d9 74 f0 80 3a 00 74 0f } //01 00 
		$a_01_7 = {f7 de 1b f6 8b 44 b3 0c 83 c6 04 80 38 23 74 22 8b 03 6a 21 50 e8 } //01 00 
		$a_03_8 = {83 7d 08 10 76 13 e8 90 01 04 99 b9 0d 00 00 00 f7 f9 83 c2 03 90 00 } //01 00 
		$a_01_9 = {25 73 5c 72 6d 72 66 25 69 25 69 25 69 25 69 2e 62 61 74 00 } //01 00 
		$a_01_10 = {3a 20 61 74 74 61 63 68 6d 65 6e 74 3b 20 66 69 6c 65 6e 61 6d 65 3d 20 22 49 4d 47 00 2d 4a 50 47 2e 7a 69 70 } //01 00 
		$a_01_11 = {49 4d 47 25 73 2d 4a 50 47 2e 73 63 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}