
rule TrojanDownloader_Win32_Onkods_C{
	meta:
		description = "TrojanDownloader:Win32/Onkods.C,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 4b 00 00 "
		
	strings :
		$a_01_0 = {0f b6 d2 03 c2 99 f7 fb 0f b6 44 14 14 30 41 ff 80 39 00 75 } //100
		$a_01_1 = {0f b6 01 0f b6 ca 03 c1 8b 4c 24 18 99 f7 f9 0f b6 54 14 1c 30 55 ff 80 7d 00 00 75 } //100
		$a_03_2 = {0f b6 44 3c 90 01 01 0f b6 d2 03 c2 99 f7 fd 0f b6 44 14 90 01 01 30 41 ff 80 39 00 75 90 00 } //100
		$a_03_3 = {0f b6 54 3c 90 01 01 0f b6 44 34 90 01 01 03 c2 99 f7 fb 0f b6 44 14 90 01 01 30 41 ff 80 39 00 75 90 00 } //100
		$a_03_4 = {30 02 8a 02 30 44 2c 90 01 01 0f b6 12 0f b6 44 2c 90 01 01 03 c2 99 f7 f9 0f b6 44 14 90 01 01 30 43 ff 90 00 } //100
		$a_03_5 = {0f b6 44 2c 90 01 01 30 44 1c 90 1b 00 8a 44 1c 90 1b 00 30 44 2c 90 1b 00 8a 44 2c 90 1b 00 30 44 1c 90 1b 00 0f b6 54 2c 90 1b 00 0f b6 44 1c 90 1b 00 03 c2 99 f7 f9 0f b6 44 14 90 1b 00 30 47 ff 90 00 } //100
		$a_03_6 = {30 02 8a 02 30 44 0c 90 01 01 0f b6 44 0c 90 01 01 0f b6 0a 03 c1 99 f7 7c 24 90 01 01 8a 54 14 90 01 01 30 55 ff 90 00 } //100
		$a_03_7 = {99 f7 fd 0f b7 c2 0f b7 d8 0f b6 44 1c 90 01 01 30 44 3c 90 01 01 8a 44 3c 90 01 01 30 44 1c 90 01 01 8a 44 1c 90 01 01 30 44 3c 90 01 01 0f b6 44 3c 90 01 01 0f b6 4c 1c 90 01 01 03 c1 99 f7 fd 8a 54 14 90 01 01 30 16 46 90 00 } //100
		$a_03_8 = {99 f7 f9 0f b7 c2 0f b7 d8 0f b6 44 1c 90 01 01 30 44 2c 90 01 01 8a 44 2c 90 01 01 30 44 1c 90 01 01 8a 44 1c 90 01 01 30 44 2c 90 01 01 0f b6 54 1c 90 01 01 0f b6 44 2c 90 01 01 03 c2 99 f7 f9 0f b6 44 14 90 01 01 30 07 47 90 00 } //100
		$a_03_9 = {0f b6 54 04 90 01 01 30 54 0c 90 01 01 8a 54 0c 90 01 01 30 54 04 90 01 01 8a 54 04 90 01 01 30 54 0c 90 01 01 8a 4c 0c 90 01 01 89 44 24 90 01 01 8d 44 04 90 01 01 0f b6 00 0f b6 c9 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 40 89 44 24 90 01 01 0f b6 54 14 90 01 01 30 50 ff 90 00 } //100
		$a_03_10 = {0f b6 44 1c 90 01 01 30 44 3c 90 01 01 8a 44 3c 90 01 01 30 44 1c 90 01 01 8a 44 1c 90 01 01 30 44 3c 90 01 01 0f b6 4c 1c 90 01 01 0f b6 44 3c 90 01 01 03 c1 99 f7 fd 8a 54 14 90 01 01 30 56 ff 90 00 } //100
		$a_03_11 = {0f b6 44 14 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 68 90 01 04 0f b6 54 14 90 01 01 30 55 00 ff d6 68 90 01 04 ff d7 68 90 01 04 45 ff d6 68 90 01 04 ff d7 80 7d 00 00 0f 85 90 00 } //100
		$a_03_12 = {30 1a 8a 1a 30 5c 04 90 01 01 8a 5c 04 90 01 01 0f b6 02 0f b6 d3 8b 5c 24 90 01 01 03 c2 99 f7 fb 8a 44 14 90 01 01 30 41 ff 80 39 00 75 90 00 } //100
		$a_03_13 = {0f b6 54 04 90 01 01 30 54 2c 90 01 01 8a 54 2c 90 01 01 30 54 04 90 01 01 8a 54 04 90 01 01 30 54 2c 90 01 01 8a 54 2c 90 01 01 89 44 24 90 01 01 8d 44 04 90 01 01 0f b6 00 0f b6 d2 03 c2 99 f7 fb 8a 44 14 90 01 01 30 41 ff 80 39 00 75 90 00 } //100
		$a_03_14 = {0f b6 44 1c 90 01 01 03 c5 99 f7 f9 0f b7 c2 0f b7 e8 8a 54 2c 90 01 01 30 54 1c 90 01 01 8a 44 1c 90 01 01 30 44 2c 90 01 01 8a 44 2c 90 01 01 30 44 1c 90 01 01 0f b6 54 2c 90 01 01 0f b6 44 1c 90 01 01 03 c2 99 f7 f9 8d 4c 24 90 00 } //100
		$a_03_15 = {0f b6 54 04 90 01 01 30 54 2c 90 01 01 8a 54 2c 90 01 01 30 54 04 90 01 01 8a 54 04 90 01 01 30 54 2c 90 01 01 8a 54 2c 90 01 01 89 44 24 90 01 01 8d 44 04 90 01 01 0f b6 00 0f b6 d2 03 c2 99 f7 f9 8a 44 14 90 01 01 30 43 ff 90 00 } //100
		$a_03_16 = {0f b6 44 3c 90 01 01 03 c3 99 f7 fd 0f b7 c2 0f b7 d8 0f b6 44 1c 90 01 01 30 44 3c 90 01 01 8a 44 3c 90 01 01 30 44 1c 90 01 01 8a 44 1c 90 01 01 30 44 3c 90 01 01 8a 4c 3c 90 01 01 0f b6 44 1c 90 01 01 0f b6 c9 03 c1 99 f7 fd 90 00 } //100
		$a_03_17 = {0f b6 44 14 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 8b 4c 24 90 01 01 53 0f b6 54 14 90 01 01 30 10 8b 44 24 90 00 } //100
		$a_03_18 = {0f b6 44 04 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 56 57 55 0f b6 54 14 90 01 01 30 10 ff d3 68 90 01 04 ff 15 90 01 04 8b 44 24 90 01 01 40 80 38 00 89 44 24 90 01 01 0f 85 90 00 } //100
		$a_03_19 = {0f b6 44 14 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 68 90 01 04 0f b6 54 14 90 01 01 30 55 00 ff d6 6a 00 68 90 01 04 68 90 01 04 ff d7 45 80 7d 00 00 0f 85 90 00 } //100
		$a_03_20 = {0f b6 44 04 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 68 90 01 04 0f b6 54 14 90 01 01 30 10 90 09 04 00 8b 44 24 90 00 } //100
		$a_03_21 = {ff d7 8b 4c 24 90 01 01 0f b6 54 0c 90 01 01 0f b6 44 24 90 01 01 03 c2 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 55 53 0f b6 4c 14 90 01 01 30 08 ff 15 90 01 04 ff 44 24 90 1b 04 90 00 } //100
		$a_03_22 = {ff d3 8b 44 24 14 0f b6 44 04 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 56 57 55 0f b6 54 14 90 01 01 30 10 ff d3 ff 44 24 90 1b 03 90 00 } //100
		$a_03_23 = {0f b6 54 0c 90 01 01 0f b6 44 24 90 01 01 03 c2 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 57 55 53 0f b6 4c 14 90 01 01 30 08 ff 15 90 01 04 ff 44 24 90 1b 03 90 00 } //100
		$a_03_24 = {0f b6 44 04 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 8b 4c 24 90 1b 01 0f b6 54 14 90 1b 00 30 10 8b 44 24 90 1b 01 8b 54 24 90 1b 01 50 51 52 ff 15 90 01 04 ff 44 24 90 1b 03 90 00 } //100
		$a_03_25 = {0f b6 44 0c 90 01 01 0f b6 54 24 90 01 01 03 c2 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 0f b6 4c 14 90 1b 00 8b 54 24 90 1b 01 30 08 52 ff 15 90 01 04 ff 44 24 90 1b 03 90 00 } //100
		$a_03_26 = {0f b6 44 14 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 0f b6 54 14 90 1b 00 8b 44 24 90 01 01 30 10 8b 44 24 90 1b 01 8b 4c 24 90 1b 01 8b 54 24 90 1b 01 50 8b 44 24 90 01 01 51 8b 4c 24 90 01 01 52 50 51 ff 15 90 01 04 ff 44 24 90 1b 04 90 00 } //100
		$a_03_27 = {0f b6 54 0c 90 01 01 0f b6 44 24 90 01 01 03 c2 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 0f b6 4c 14 90 1b 00 8b 54 24 90 1b 01 30 08 52 ff 15 90 01 04 ff 44 24 90 1b 03 90 00 } //100
		$a_03_28 = {8a 4c 24 60 8b 44 24 90 01 01 30 4c 04 90 01 01 8a 44 04 90 1b 01 88 44 24 60 ff 74 24 60 ff 15 90 01 04 8b 90 01 01 24 90 01 01 0f b6 90 01 02 90 1b 01 0f b6 90 01 01 24 60 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 ff 74 24 60 8a 4c 14 90 01 01 30 08 ff 15 90 01 04 ff 44 24 90 1b 0a 90 00 } //100
		$a_03_29 = {8a 4c 24 60 8b 44 24 90 01 01 30 4c 04 90 01 01 8a 44 04 90 1b 01 88 44 24 60 ff 74 24 60 ff 74 24 90 01 01 90 02 08 ff 15 90 01 12 03 c1 99 f7 7c 24 90 01 01 ff 74 24 60 8b 44 24 60 ff 74 24 90 1b 03 90 1b 04 8a 4c 14 90 01 01 30 08 ff 15 90 01 04 ff 44 24 90 00 } //100
		$a_03_30 = {8a 4c 24 60 8b 44 24 90 01 01 30 4c 04 90 01 01 8a 44 04 90 1b 01 88 44 24 60 ff 74 24 60 ff 15 90 01 04 8b 44 24 90 01 01 0f b6 44 04 90 1b 01 0f b6 4c 24 60 03 c1 99 f7 7c 24 90 01 01 8a 4c 14 90 1b 01 8b 44 24 90 01 01 ff 74 24 60 30 08 ff 15 90 01 04 ff 44 24 90 1b 08 90 00 } //100
		$a_03_31 = {8a 4c 24 60 8b 44 24 90 01 01 30 4c 04 90 01 01 8a 44 04 90 01 01 88 44 24 60 ff 74 24 60 ff 74 24 90 01 01 90 03 06 00 ff 74 24 90 01 01 ff 90 01 01 8b 44 24 90 01 01 0f b6 44 04 90 01 01 0f b6 4c 24 60 03 c1 99 f7 7c 24 90 01 01 ff 74 24 60 8b 44 24 60 ff 74 24 90 01 01 90 03 06 00 ff 74 24 90 01 01 8a 4c 14 90 01 01 30 08 ff 90 01 01 ff 44 24 90 00 } //100
		$a_01_32 = {30 08 8a 00 57 53 88 45 13 ff d6 8b 45 f8 0f b6 44 05 b8 0f b6 4d 13 03 c1 99 f7 7d f0 8b 45 0c 57 53 8a 4c 15 b8 30 08 ff d6 ff 45 0c } //100
		$a_03_33 = {8a 4c 24 60 8b 44 24 90 01 01 30 4c 04 90 01 01 8a 44 04 90 1b 01 57 55 53 88 44 24 90 01 01 ff d6 8b 44 24 90 01 01 0f b6 44 04 90 1b 01 0f b6 4c 24 60 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 57 55 53 8a 4c 14 90 01 01 30 08 ff d6 ff 44 24 90 1b 07 90 00 } //100
		$a_03_34 = {ff d3 8b 44 24 90 01 01 0f b6 44 04 90 01 01 0f b6 4c 24 90 01 01 03 c1 99 f7 7c 24 90 01 01 8b 44 24 90 01 01 6a 00 56 56 8a 4c 14 90 01 01 30 08 ff d7 6a 00 56 ff d5 68 90 01 04 ff d3 ff 44 24 90 1b 04 90 00 } //100
		$a_03_35 = {8b 44 24 14 0f b6 44 04 20 0f b6 4c 24 60 03 c1 99 f7 7c 24 1c 8b 44 24 5c 90 02 10 90 03 08 09 8a 4c 14 90 01 01 30 08 0f b6 54 14 90 01 01 30 10 90 02 30 ff 44 24 5c 90 00 } //100
		$a_03_36 = {8b 44 24 14 0f b6 44 04 20 0f b6 cb 03 c1 99 f7 7c 24 18 8b 5c 24 5c 90 02 02 56 8a 44 14 90 01 01 30 03 90 02 10 43 90 02 01 89 5c 24 90 01 01 90 02 20 80 3b 00 0f 85 90 00 } //100
		$a_03_37 = {8b 44 24 14 0f b6 44 04 90 04 01 02 24 20 0f b6 4c 24 90 04 01 02 64 60 03 c1 99 f7 7c 24 18 90 02 10 56 0f b6 54 14 90 01 01 30 13 90 02 30 80 3b 00 0f 85 90 00 } //100
		$a_03_38 = {8b 44 24 10 0f b6 44 04 20 0f b6 4c 24 60 03 c1 99 f7 7c 24 18 0f b6 54 14 20 30 13 90 02 40 80 3b 00 0f 85 90 00 } //100
		$a_03_39 = {0f b6 4c 24 60 03 c1 99 f7 7c 24 90 01 01 8b 44 24 5c 90 09 09 00 8b 90 01 01 24 90 01 01 0f b6 44 90 01 01 20 90 01 0f 90 02 20 0f b6 54 14 90 01 01 30 10 90 00 } //100
		$a_03_40 = {0f b6 44 24 60 03 c2 99 f7 7c 24 1c 8b 44 24 5c 90 09 09 00 8b 90 01 01 24 14 0f b6 54 90 01 01 20 90 01 0f 90 02 20 90 03 01 02 8a 0f b6 4c 14 90 01 01 30 08 90 00 } //100
		$a_03_41 = {0f b6 4c 24 64 03 c1 99 f7 7c 24 18 90 09 09 00 8b 90 01 01 24 14 0f b6 44 90 01 01 24 90 01 0b 90 02 20 0f b6 54 14 90 01 01 30 90 04 01 02 13 10 90 00 } //100
		$a_03_42 = {8d 47 01 99 f7 7d 90 01 01 0f b7 c2 0f b7 f8 8d 4c 3d c4 0f b6 01 03 c3 99 f7 7d 90 1b 00 0f b7 c2 0f b7 d8 8d 44 1d c4 90 09 03 00 89 45 90 1b 00 90 00 } //100
		$a_03_43 = {8a 09 0f b6 c9 03 c1 99 f7 7d 90 01 01 8a 44 15 90 01 01 30 90 01 02 80 90 01 01 00 90 13 8b 45 90 01 01 40 99 f7 7d 90 01 01 0f b7 c2 8d 4c 05 90 01 01 89 45 90 01 01 0f b6 01 03 c3 99 f7 7d 90 00 } //100
		$a_03_44 = {8a 09 0f b6 c9 03 c1 99 f7 7c 24 90 01 01 8a 44 14 90 01 01 30 90 01 02 80 90 01 01 00 90 13 8d 45 01 99 f7 7c 24 90 01 01 0f b7 c2 0f b7 e8 8d 4c 2c 90 01 01 0f b6 01 03 c3 99 f7 7c 24 90 00 } //100
		$a_01_45 = {8b 45 fc 0f b6 7d 14 8d 4c 05 c0 99 f7 ff 8b 45 08 0f b7 7d 10 0f be 14 02 0f b6 01 03 d3 03 c2 99 f7 ff 0f b7 c2 0f b7 d8 8d 7c 1d c0 8a 07 32 01 88 01 30 07 8a 07 30 01 ff 45 fc ff 4d f8 75 bf } //100
		$a_01_46 = {0f b6 7c 24 5c 8b c3 99 f7 ff 8b 44 24 50 8d 4c 1c 18 0f be 14 02 0f b6 01 03 d5 03 c2 99 f7 7c 24 10 0f b7 c2 0f b7 e8 8d 7c 2c 18 8a 07 32 01 88 01 30 07 8a 07 30 01 43 ff 4c 24 14 75 c1 } //100
		$a_03_47 = {99 f7 f9 8b 44 24 90 01 01 8d 74 3c 90 01 01 8a 1e ff 74 24 90 01 01 0f be 0c 02 0f b6 c3 03 cd 03 c1 99 f7 7c 24 90 01 01 0f b7 ea ff 15 90 01 04 0f b7 ed 8d 44 2c 90 01 01 8a 08 32 cb 88 0e 30 08 8a 18 90 00 } //100
		$a_03_48 = {99 f7 f9 8b 44 24 90 01 01 ff 74 24 90 01 01 0f be 0c 02 0f b6 06 03 cb 03 c1 0f b7 4c 24 90 01 01 99 f7 f9 0f b7 da ff 15 90 01 04 0f b7 db 8d 44 1c 90 01 01 8a 08 32 0e 6a 00 88 0e 30 08 8a 00 90 00 } //100
		$a_03_49 = {99 f7 f9 8b 44 24 90 01 01 ff 74 24 90 01 01 0f be 0c 02 0f b6 07 03 cd 03 c1 0f b7 4c 24 90 01 01 99 f7 f9 0f b7 ea ff 15 90 01 04 0f b7 ed 8d 44 2c 90 01 01 8a 08 32 0f 6a 00 88 0f 30 08 8a 00 90 00 } //100
		$a_01_50 = {99 f7 ff 8a 0e 8b 44 24 54 0f be 14 02 03 d5 0f b6 c1 03 c2 99 f7 fb 0f b7 c2 0f b7 e8 33 c0 50 50 ff 74 24 64 8d 7c 2c 28 8a 1f 32 d9 50 88 1e } //100
		$a_01_51 = {99 f7 fd 8b 44 24 58 8a 0f 0f b7 6c 24 60 0f be 14 02 03 54 24 14 0f b6 c1 03 c2 99 f7 fd 0f b7 c2 8d 6c 04 20 89 44 24 14 8a 45 00 32 c1 88 44 24 13 88 07 } //100
		$a_01_52 = {99 f7 ff 8a 0e 8b 44 24 5c 0f be 14 02 03 d5 0f b6 c1 03 c2 99 f7 7c 24 18 0f b7 c2 0f b7 e8 8d 7c 2c 24 8a 07 32 c1 88 44 24 13 88 06 } //100
		$a_03_53 = {0f b6 74 24 90 01 01 8b c3 99 f7 fe 8b 44 24 90 01 01 0f b7 74 24 90 01 01 8d 4c 1c 90 01 01 0f be 14 02 0f b6 01 03 d7 03 c2 99 f7 fe 0f b7 c2 0f b7 f8 8d 74 3c 90 01 01 8a 06 32 01 88 01 30 06 8a 06 30 01 43 ff 4c 24 90 01 01 75 be 90 00 } //100
		$a_03_54 = {8a 07 30 06 8a 06 90 02 10 ff 74 24 90 01 01 88 44 24 90 02 07 0f b6 4c 24 90 01 01 0f b6 07 03 c1 99 f7 7c 24 90 02 06 8a 44 14 90 01 01 30 03 43 90 02 20 80 3b 00 0f 85 90 00 } //100
		$a_03_55 = {0f b6 5c 24 90 01 01 8b 90 01 01 99 f7 fb 8a 5c 90 01 02 8b 44 24 90 01 02 0f be 14 02 03 d1 0f b7 4c 24 90 01 01 0f b6 c3 03 c2 99 f7 f9 0f b7 c2 0f b7 c8 8a 44 0c 90 01 01 32 c3 88 44 90 01 02 30 44 0c 90 01 01 8a 44 0c 90 01 01 30 44 90 01 02 83 6c 24 90 01 01 01 75 b7 90 00 } //100
		$a_03_56 = {33 c9 89 44 24 90 01 01 8b 90 01 01 99 f7 fd 8a 5c 90 01 02 8b 44 24 90 01 02 0f be 14 02 03 d1 0f b7 4c 24 90 01 01 0f b6 c3 03 c2 99 f7 f9 0f b7 c2 0f b7 c8 8a 44 0c 90 01 01 32 c3 88 44 90 01 02 30 44 0c 90 01 01 8a 44 0c 90 01 01 30 44 90 01 02 83 6c 24 90 01 01 01 75 bc 90 00 } //100
		$a_03_57 = {6a 04 6a 32 8d 54 24 90 01 01 56 52 e8 90 01 04 83 c4 10 83 c6 64 83 ef 01 75 e6 90 09 0c 00 90 02 07 bf 0b 00 00 00 90 00 } //1
		$a_03_58 = {6a 04 6a 32 8d 54 24 90 01 01 57 52 e8 90 01 04 83 c4 10 83 c7 64 83 eb 01 75 e6 90 09 0c 00 90 02 07 bb 0b 00 00 00 90 00 } //1
		$a_03_59 = {6a 04 6a 32 8d 90 01 01 24 90 01 01 56 90 01 01 e8 90 01 04 83 c4 10 83 c6 64 83 ef 01 75 e6 90 09 0c 00 90 02 07 bf 0b 00 00 00 90 00 } //1
		$a_03_60 = {6a 04 6a 32 8d 54 24 90 01 01 53 52 e8 90 01 04 83 c4 10 83 c3 64 83 ed 01 75 e6 90 09 0c 00 90 02 07 bd 0b 00 00 00 90 00 } //1
		$a_03_61 = {6a 04 6a 32 8d 54 24 90 01 01 90 01 01 52 e8 90 01 04 83 c4 10 83 90 01 01 64 83 6c 24 90 01 01 01 75 e4 90 09 0f 00 90 02 07 c7 44 24 90 01 01 0b 00 00 00 90 00 } //1
		$a_03_62 = {6a 04 6a 32 52 8d 44 24 90 01 01 50 e8 90 01 04 83 44 24 90 01 01 64 83 c4 10 83 6c 24 90 01 01 01 75 90 00 } //1
		$a_03_63 = {5f 6a 04 6a 32 8d 44 24 90 01 01 56 50 e8 90 01 04 83 c4 10 83 c6 64 4f 75 e8 90 09 09 00 90 02 07 6a 0b 90 00 } //1
		$a_03_64 = {6a 04 6a 32 ff 74 24 90 01 01 8d 44 24 90 01 01 50 e8 90 01 04 83 44 24 90 01 01 64 83 c4 10 ff 4c 24 90 01 01 75 e0 90 09 0f 00 90 02 07 c7 44 24 90 01 01 0b 00 00 00 90 00 } //1
		$a_03_65 = {5b 6a 04 6a 32 8d 44 24 90 01 01 57 50 e8 90 01 04 83 c4 10 83 c7 64 4b 75 e8 90 09 09 00 90 02 07 6a 0b 90 00 } //1
		$a_03_66 = {6a 04 6a 32 8d 45 90 01 02 50 e8 90 01 04 83 c4 10 83 90 01 01 64 90 01 01 75 e9 90 09 0a 00 90 02 07 6a 0b 90 00 } //1
		$a_03_67 = {6a 04 6a 32 ff 74 24 90 01 01 8d 44 24 90 01 01 50 e8 90 01 04 83 44 24 90 01 01 64 83 c4 10 ff 4c 24 90 01 01 75 e0 90 09 0f 00 90 02 07 c7 44 24 90 01 01 0f 00 00 00 90 00 } //1
		$a_03_68 = {6a 04 6a 32 8d 44 24 90 01 02 50 e8 90 01 04 83 c4 10 83 90 01 01 64 ff 4c 24 90 01 01 75 e5 90 09 0f 00 90 02 07 c7 44 24 90 01 01 0f 00 00 00 90 00 } //1
		$a_03_69 = {6a 04 6a 32 8d 44 24 90 01 02 50 e8 90 01 04 83 c4 10 83 90 01 01 64 90 04 01 02 4b 4f 75 e8 90 09 09 00 90 02 07 6a 0f 90 00 } //1
		$a_03_70 = {6a 04 6a 32 51 8d 54 24 90 01 01 52 e8 90 01 04 83 44 24 90 01 01 64 83 c4 10 83 6c 24 90 01 01 01 75 90 09 0f 00 90 02 07 c7 44 24 90 01 01 0b 00 00 00 90 00 } //1
		$a_03_71 = {6a 04 6a 32 8d 4c 24 90 01 02 51 e8 90 01 04 83 c4 10 83 90 01 01 64 83 6c 24 90 01 01 01 75 e4 90 09 18 00 90 02 10 c7 44 24 90 01 01 0b 00 00 00 90 00 } //1
		$a_03_72 = {6a 04 6a 32 90 01 01 8d 4c 24 90 01 01 51 e8 90 01 04 83 44 24 90 01 01 64 83 c4 10 83 6c 24 90 01 01 01 75 90 01 01 90 09 0f 00 90 02 07 c7 44 24 90 01 01 0b 00 00 00 90 00 } //1
		$a_03_73 = {64 ff 4c 24 90 01 01 75 90 01 01 6a 04 6a 32 8d 44 24 90 01 01 50 8d 44 24 90 01 01 50 e8 90 01 04 83 c4 10 bf 90 09 04 00 83 44 24 90 00 } //1
		$a_03_74 = {6a 04 6a 32 8d 54 24 90 01 02 52 e8 90 01 04 83 c4 10 90 02 40 83 90 01 01 64 83 90 02 03 01 90 02 40 6a 04 6a 32 8d 44 24 90 01 01 50 8d 4c 24 90 01 01 51 e8 90 00 } //1
	condition:
		((#a_01_0  & 1)*100+(#a_01_1  & 1)*100+(#a_03_2  & 1)*100+(#a_03_3  & 1)*100+(#a_03_4  & 1)*100+(#a_03_5  & 1)*100+(#a_03_6  & 1)*100+(#a_03_7  & 1)*100+(#a_03_8  & 1)*100+(#a_03_9  & 1)*100+(#a_03_10  & 1)*100+(#a_03_11  & 1)*100+(#a_03_12  & 1)*100+(#a_03_13  & 1)*100+(#a_03_14  & 1)*100+(#a_03_15  & 1)*100+(#a_03_16  & 1)*100+(#a_03_17  & 1)*100+(#a_03_18  & 1)*100+(#a_03_19  & 1)*100+(#a_03_20  & 1)*100+(#a_03_21  & 1)*100+(#a_03_22  & 1)*100+(#a_03_23  & 1)*100+(#a_03_24  & 1)*100+(#a_03_25  & 1)*100+(#a_03_26  & 1)*100+(#a_03_27  & 1)*100+(#a_03_28  & 1)*100+(#a_03_29  & 1)*100+(#a_03_30  & 1)*100+(#a_03_31  & 1)*100+(#a_01_32  & 1)*100+(#a_03_33  & 1)*100+(#a_03_34  & 1)*100+(#a_03_35  & 1)*100+(#a_03_36  & 1)*100+(#a_03_37  & 1)*100+(#a_03_38  & 1)*100+(#a_03_39  & 1)*100+(#a_03_40  & 1)*100+(#a_03_41  & 1)*100+(#a_03_42  & 1)*100+(#a_03_43  & 1)*100+(#a_03_44  & 1)*100+(#a_01_45  & 1)*100+(#a_01_46  & 1)*100+(#a_03_47  & 1)*100+(#a_03_48  & 1)*100+(#a_03_49  & 1)*100+(#a_01_50  & 1)*100+(#a_01_51  & 1)*100+(#a_01_52  & 1)*100+(#a_03_53  & 1)*100+(#a_03_54  & 1)*100+(#a_03_55  & 1)*100+(#a_03_56  & 1)*100+(#a_03_57  & 1)*1+(#a_03_58  & 1)*1+(#a_03_59  & 1)*1+(#a_03_60  & 1)*1+(#a_03_61  & 1)*1+(#a_03_62  & 1)*1+(#a_03_63  & 1)*1+(#a_03_64  & 1)*1+(#a_03_65  & 1)*1+(#a_03_66  & 1)*1+(#a_03_67  & 1)*1+(#a_03_68  & 1)*1+(#a_03_69  & 1)*1+(#a_03_70  & 1)*1+(#a_03_71  & 1)*1+(#a_03_72  & 1)*1+(#a_03_73  & 1)*1+(#a_03_74  & 1)*1) >=1
 
}