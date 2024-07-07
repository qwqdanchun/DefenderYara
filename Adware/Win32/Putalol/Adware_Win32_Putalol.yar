
rule Adware_Win32_Putalol{
	meta:
		description = "Adware:Win32/Putalol,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {8a 04 30 8b 4d 90 01 01 32 04 0f 8d 4d 90 01 01 0f b6 c0 50 6a 01 e8 90 00 } //2
		$a_01_1 = {49 00 6e 00 73 00 74 00 61 00 6c 00 6c 00 5f 00 44 00 69 00 72 00 00 00 } //1
		$a_03_2 = {8a 04 08 8d 4d 90 01 01 32 04 1e 0f b6 c0 50 6a 01 e8 90 09 05 00 8b c7 8b 4d 90 00 } //2
		$a_81_3 = {53 4f 46 54 57 41 52 45 5c 46 6c 61 73 68 62 65 61 74 00 } //1
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 4c 6f 6c 6c 69 53 63 61 6e 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_01_1  & 1)*1+(#a_03_2  & 1)*2+(#a_81_3  & 1)*1+(#a_01_4  & 1)*1) >=3
 
}
rule Adware_Win32_Putalol_2{
	meta:
		description = "Adware:Win32/Putalol,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {49 83 fb 10 48 0f 43 c3 42 0f b6 14 10 4c 8d 45 90 01 01 4c 0f 43 c3 90 01 01 0f b6 ce 41 f6 d1 0f b6 ca f6 d1 90 01 01 22 ce 41 0f b6 c1 22 c2 0a c8 43 88 0c 10 90 00 } //2
		$a_03_1 = {49 83 f9 10 49 0f 43 c3 41 0f b6 14 02 4c 8d 45 90 01 01 4d 0f 43 c3 0f b6 ca f6 d1 41 22 ce 41 0f b6 c6 f6 d0 22 c2 0a c8 43 88 0c 10 90 00 } //2
		$a_03_2 = {44 8d 40 39 48 8d 15 90 01 04 48 8d 4c 24 90 01 01 e8 90 01 04 48 8b d8 90 09 03 00 41 b1 90 00 } //1
		$a_03_3 = {48 8b d8 41 b1 90 01 01 41 b8 90 01 01 00 00 00 48 8d 15 90 01 04 48 8d 4d 90 01 01 e8 90 09 19 00 41 b1 90 01 01 41 b8 90 01 01 00 00 00 48 8d 15 90 01 04 48 8d 4d 90 01 01 e8 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=3
 
}
rule Adware_Win32_Putalol_3{
	meta:
		description = "Adware:Win32/Putalol,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 0e 00 00 "
		
	strings :
		$a_00_0 = {2f 00 67 00 65 00 74 00 5f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2f 00 00 00 } //1
		$a_00_1 = {2f 00 67 00 65 00 74 00 5f 00 75 00 70 00 64 00 61 00 74 00 65 00 2f 00 00 00 } //1
		$a_00_2 = {7b 00 33 00 42 00 44 00 46 00 44 00 31 00 44 00 37 00 2d 00 37 00 41 00 39 00 42 00 2d 00 34 00 44 00 32 00 39 00 2d 00 38 00 30 00 42 00 33 00 2d 00 44 00 30 00 30 00 45 00 36 00 36 00 45 00 36 00 32 00 38 00 38 00 35 00 7d 00 00 00 } //1
		$a_00_3 = {5c 00 5f 00 57 00 50 00 5f 00 49 00 4e 00 53 00 54 00 41 00 4c 00 4c 00 45 00 52 00 5f 00 4d 00 55 00 54 00 45 00 58 00 00 00 } //2
		$a_00_4 = {4c 00 6f 00 6c 00 6c 00 69 00 53 00 63 00 61 00 6e 00 33 00 32 00 2e 00 64 00 6c 00 6c 00 00 00 } //1
		$a_01_5 = {8a 14 78 8b 45 0c 8a ca 8a d8 f6 d1 22 c8 f6 d3 8a c3 22 c2 0a c8 0f b6 c1 66 89 04 7e } //2
		$a_03_6 = {8b 75 08 85 c9 75 90 01 01 68 90 01 01 00 00 00 6a 0c 8d 45 90 01 01 68 90 01 04 50 e8 90 01 04 83 c4 10 83 65 90 01 01 00 83 78 14 10 72 02 8b 00 50 e8 90 00 } //2
		$a_01_7 = {53 4f 46 54 57 41 52 45 5c 46 6c 61 73 68 62 65 61 74 00 } //1
		$a_01_8 = {2d 45 58 54 49 44 3d 00 } //1 䔭员䑉=
		$a_01_9 = {5c 6b 65 79 2e 64 61 74 00 } //1
		$a_01_10 = {53 4f 46 54 57 41 52 45 5c 4c 6f 6c 6c 69 53 63 61 6e 00 } //1
		$a_03_11 = {8a 04 50 32 c3 0f b6 c0 66 89 04 51 8d 45 90 01 01 8b 75 90 01 01 83 fe 08 8b 7d 90 01 01 0f 43 c7 32 1c 50 42 3b 55 90 01 01 72 cd 90 00 } //2
		$a_01_12 = {2d 00 64 00 65 00 6c 00 65 00 74 00 65 00 20 00 2d 00 75 00 70 00 64 00 61 00 74 00 65 00 } //1 -delete -update
		$a_01_13 = {8a 5d 14 8a cc f6 d3 f6 d1 22 4d 14 8a c3 22 c4 0a c8 88 0c 17 8b 7e 14 83 ff 10 72 04 8b 06 eb 02 8b c6 8a 0c 10 8a d1 22 d9 f6 d2 22 55 14 0a d3 88 55 14 8b 55 f0 42 89 55 f0 3b 56 10 72 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*2+(#a_00_4  & 1)*1+(#a_01_5  & 1)*2+(#a_03_6  & 1)*2+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_03_11  & 1)*2+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=3
 
}