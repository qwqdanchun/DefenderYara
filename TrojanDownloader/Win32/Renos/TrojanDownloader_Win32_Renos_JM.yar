
rule TrojanDownloader_Win32_Renos_JM{
	meta:
		description = "TrojanDownloader:Win32/Renos.JM,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 26 00 00 "
		
	strings :
		$a_02_0 = {4e 6f 72 64 42 75 6c 90 03 01 01 01 6c 00 90 00 } //1
		$a_01_1 = {4d 6f 6e 6f 70 6f 64 00 } //1 潍潮潰d
		$a_01_2 = {64 69 61 53 6f 6c 61 72 69 73 00 } //1
		$a_01_3 = {48 41 5f 25 30 38 78 00 } //1 䅈╟㠰x
		$a_02_4 = {3c 62 6f 74 20 6e 61 6d 65 3d 22 90 03 06 03 62 61 6e 6e 65 72 68 69 74 62 6f 74 22 3e 90 00 } //1
		$a_00_5 = {52 65 73 74 61 72 74 20 66 61 69 6c 65 64 00 00 42 61 6e 6e 65 72 42 6f 74 00 } //1
		$a_03_6 = {64 8b 1d 30 00 00 00 8a 43 02 0f b6 d8 89 90 03 01 01 9d 5d 90 00 } //1
		$a_03_7 = {64 8b 0d 30 00 00 00 90 05 08 01 90 8a 41 02 90 05 08 01 90 0f b6 c8 90 05 08 01 90 89 4d 90 00 } //1
		$a_03_8 = {64 8b 1d 30 00 00 00 90 05 04 01 90 8a 43 02 90 05 04 01 90 0f b6 d8 90 05 04 01 90 89 90 03 01 01 5d 9d 90 00 } //1
		$a_03_9 = {0f b6 c0 83 c0 03 24 fc e8 90 09 04 00 8a 06 90 03 01 01 04 2c 90 00 } //1
		$a_03_10 = {0f b6 c0 83 c0 03 83 e0 fc e8 90 09 04 00 8a 06 90 03 01 01 04 2c 90 00 } //1
		$a_03_11 = {ff 45 f4 8b 73 04 83 c3 04 89 07 83 c7 04 ff 45 fc 85 f6 75 90 01 01 83 45 f8 04 ff 45 fc 81 7d f8 90 00 } //1
		$a_03_12 = {64 a1 30 00 00 00 90 05 04 01 90 8a 40 02 90 05 04 01 90 0f b6 c0 90 05 04 01 90 89 45 90 00 } //1
		$a_03_13 = {cd 41 66 3b 90 03 04 06 45 90 01 01 85 90 01 02 ff ff 90 05 04 01 90 0f 94 c0 0f b6 90 04 01 03 c0 c8 d8 90 00 } //1
		$a_03_14 = {83 f8 32 7c 0c 83 7d 90 01 01 01 0f 82 90 01 02 ff ff eb 90 00 } //1
		$a_03_15 = {3d 00 00 00 d0 90 02 06 77 90 01 01 3d 00 00 00 80 90 02 06 73 90 01 01 90 02 06 ff 15 90 01 04 2b c7 90 03 01 01 eb e9 90 00 } //1
		$a_03_16 = {83 c7 04 83 7d f0 0a 90 02 0c 0f 82 90 00 } //1
		$a_03_17 = {00 d0 77 08 81 90 01 01 00 00 00 80 73 90 01 01 ff 15 90 09 04 00 81 90 01 01 00 00 90 00 } //1
		$a_03_18 = {2d 00 00 00 80 90 02 08 3d 00 00 00 50 76 0a ff 15 90 00 } //1
		$a_03_19 = {86 f3 00 00 90 09 0a 00 c7 45 90 01 01 4f 00 00 00 c7 45 90 00 } //1
		$a_03_20 = {43 83 c7 04 83 fb 0a 72 90 02 20 32 c0 90 00 } //1
		$a_02_21 = {68 1f 00 02 00 90 04 04 03 50 2d 57 68 01 00 00 80 ff 15 90 01 04 85 c0 90 03 01 01 74 75 90 04 01 03 02 2d 7f 90 00 } //1
		$a_02_22 = {68 1f 00 02 00 90 04 04 03 50 2d 57 68 01 00 00 80 ff 90 01 01 85 c0 90 03 01 01 74 75 90 04 01 03 02 2d 7f 90 00 } //1
		$a_02_23 = {68 1f 00 02 00 90 04 04 03 50 2d 57 68 01 00 00 80 ff 15 90 01 04 ff 15 90 01 04 66 a3 90 01 04 68 90 01 04 0f bf c0 90 00 } //1
		$a_03_24 = {68 00 14 2d 00 90 17 03 05 06 01 ff 75 90 01 01 ff 74 24 90 01 01 56 90 03 05 02 ff 15 90 01 04 ff d0 85 c0 90 03 02 01 0f 84 74 90 00 } //1
		$a_03_25 = {c1 e8 1a c1 e6 06 8a 80 90 01 04 90 02 08 88 90 03 01 02 07 47 01 90 00 } //1
		$a_03_26 = {c1 e9 1a c1 e0 06 8a 89 90 01 04 90 02 08 88 0e 90 00 } //1
		$a_03_27 = {c1 e8 1a c1 e1 06 8a 80 90 01 04 90 02 08 89 0a 90 00 } //1
		$a_03_28 = {25 ff 00 00 00 83 c0 03 24 fc e8 90 09 04 00 8a 06 2c 90 00 } //1
		$a_03_29 = {88 4f 01 c1 e6 06 90 09 09 00 8a 88 90 01 04 80 f1 90 00 } //1
		$a_03_30 = {68 00 14 2d 00 ff 74 24 90 01 01 ff 54 24 90 01 01 85 c0 74 90 00 } //1
		$a_01_31 = {8b c8 c1 e9 1a c1 e0 06 0b c8 03 cb } //1
		$a_03_32 = {80 7c 1f ff 3d 8d 04 1f 74 90 02 20 8d 04 76 90 00 } //1
		$a_03_33 = {80 78 fe 3d 75 90 02 20 8d 44 76 fe eb 90 00 } //1
		$a_01_34 = {68 00 14 2d 00 ff 74 24 40 ff 54 24 38 } //1
		$a_02_35 = {68 00 14 2d 00 ff 75 90 01 01 ff 90 02 04 85 c0 74 90 00 } //1
		$a_03_36 = {0f b6 c0 8a 84 05 90 01 02 ff ff 32 04 90 04 01 04 19 39 31 11 88 90 04 01 04 03 07 06 02 90 00 } //1
		$a_03_37 = {8d 4d d4 51 33 c9 51 51 51 6a 06 ff d0 8b 45 d4 83 f8 0a 0f 87 90 01 02 00 00 0f 84 90 01 02 00 00 48 83 f8 08 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_02_4  & 1)*1+(#a_00_5  & 1)*1+(#a_03_6  & 1)*1+(#a_03_7  & 1)*1+(#a_03_8  & 1)*1+(#a_03_9  & 1)*1+(#a_03_10  & 1)*1+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1+(#a_03_14  & 1)*1+(#a_03_15  & 1)*1+(#a_03_16  & 1)*1+(#a_03_17  & 1)*1+(#a_03_18  & 1)*1+(#a_03_19  & 1)*1+(#a_03_20  & 1)*1+(#a_02_21  & 1)*1+(#a_02_22  & 1)*1+(#a_02_23  & 1)*1+(#a_03_24  & 1)*1+(#a_03_25  & 1)*1+(#a_03_26  & 1)*1+(#a_03_27  & 1)*1+(#a_03_28  & 1)*1+(#a_03_29  & 1)*1+(#a_03_30  & 1)*1+(#a_01_31  & 1)*1+(#a_03_32  & 1)*1+(#a_03_33  & 1)*1+(#a_01_34  & 1)*1+(#a_02_35  & 1)*1+(#a_03_36  & 1)*1+(#a_03_37  & 1)*1) >=3
 
}