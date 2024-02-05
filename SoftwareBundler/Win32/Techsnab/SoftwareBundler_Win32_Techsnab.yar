
rule SoftwareBundler_Win32_Techsnab{
	meta:
		description = "SoftwareBundler:Win32/Techsnab,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {69 64 3d 25 73 26 68 77 61 64 64 72 3d 25 73 26 26 75 73 65 72 5f 6f 73 3d 25 73 26 68 64 64 5f 26 73 74 61 74 75 73 } //02 00 
		$a_01_1 = {63 68 61 6e 6e 65 6c 3d 25 73 73 65 72 69 61 6c 3d 25 73 26 77 69 6e 5f 75 75 2f 66 20 2f 69 6d 20 77 69 6e 75 70 64 2e 65 78 } //01 00 
		$a_01_2 = {25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 2d 25 30 32 58 } //02 00 
		$a_01_3 = {26 76 65 72 73 69 65 20 2f 66 69 20 22 50 49 44 20 6e 65 20 25 6c 26 76 65 72 73 69 6f 6e 3d } //00 00 
		$a_00_4 = {78 21 } //02 00 
	condition:
		any of ($a_*)
 
}
rule SoftwareBundler_Win32_Techsnab_2{
	meta:
		description = "SoftwareBundler:Win32/Techsnab,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {76 3d 25 73 26 6e 75 75 69 64 3d 25 73 } //01 00 
		$a_03_1 = {73 26 76 3d 90 01 06 25 73 26 6e 90 01 06 75 75 69 64 90 01 06 3d 25 73 26 90 01 06 75 73 65 72 90 00 } //02 00 
		$a_01_2 = {25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 2d 25 30 32 78 25 30 32 78 2d 25 30 32 78 25 30 32 78 2d 25 30 32 78 25 30 32 78 2d 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 25 30 32 78 } //02 00 
		$a_01_3 = {50 52 4f 43 45 53 53 4f 52 5f 49 44 45 4e 54 49 46 49 45 52 } //01 00 
		$a_01_4 = {43 6c 69 63 6b 20 6e 65 78 74 20 74 6f 20 73 74 61 72 74 20 64 6f 77 6e 6c 6f 61 64 21 00 } //01 00 
		$a_01_5 = {6e 6f 74 31 32 00 } //01 00 
		$a_01_6 = {6e 6f 74 45 6e 63 00 } //01 00 
		$a_03_7 = {02 74 0a b8 02 00 00 00 e9 90 01 04 b9 04 00 00 00 c1 e1 00 8b 55 90 01 01 8b 04 0a 50 e8 90 01 04 83 c4 04 89 45 90 01 01 83 7d 90 01 01 00 75 08 90 00 } //01 00 
		$a_03_8 = {02 74 08 6a 02 58 e9 90 01 04 6a 04 58 c1 e0 00 8b 90 03 04 06 4d 90 01 01 8d 90 01 02 ff ff ff 34 01 90 00 } //01 00 
		$a_03_9 = {02 74 08 6a 02 58 e9 90 01 04 8b 45 90 01 01 ff 70 04 e8 90 01 04 59 89 45 90 01 01 83 7d 90 01 01 00 75 08 90 00 } //01 00 
		$a_03_10 = {6a 04 58 c1 e0 00 8b 8d 90 01 02 ff ff 8b 04 01 89 85 90 01 02 ff ff 83 bd 90 01 02 ff ff 02 74 08 6a 02 58 e9 90 00 } //01 00 
		$a_03_11 = {02 74 08 6a 02 58 e9 90 01 04 6a 04 58 c1 e0 00 8b 8d 90 01 02 ff ff 8b 04 01 90 00 } //01 00 
		$a_03_12 = {02 74 08 6a 02 58 e9 90 01 04 ff b5 90 01 02 ff ff e8 90 01 04 59 89 85 90 01 02 ff ff 90 03 02 07 ff b5 e8 90 01 04 83 f8 01 90 00 } //01 00 
		$a_03_13 = {02 74 08 6a 02 58 e9 90 01 04 e8 90 01 04 83 f8 01 75 08 33 c0 40 e9 90 00 } //01 00 
		$a_03_14 = {02 74 08 6a 02 58 e9 90 01 04 c7 85 90 01 02 ff ff 01 00 00 00 83 bd 90 01 02 ff ff 02 74 08 6a 02 58 e9 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}