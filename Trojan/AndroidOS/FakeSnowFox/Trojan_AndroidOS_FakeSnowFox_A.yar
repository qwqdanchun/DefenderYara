
rule Trojan_AndroidOS_FakeSnowFox_A{
	meta:
		description = "Trojan:AndroidOS/FakeSnowFox.A,SIGNATURE_TYPE_DEXHSTR_EXT,09 00 09 00 09 00 00 02 00 "
		
	strings :
		$a_00_0 = {61 48 52 30 63 48 4d 36 4c 79 39 68 63 47 6b 75 61 57 35 6d 62 32 31 76 59 6d 6b 75 62 57 55 76 59 57 45 76 62 6d 4d 3d 00 } //02 00 
		$a_00_1 = {2d 68 2d 74 2d 74 2d 70 3a 2f 2f 65 2d 6e 2e 73 2d 6e 2d 6f 2d 77 2d 66 2d 6f 2d 78 2e 31 2d 31 2d 32 2d 67 2d 73 2e 63 2d 6f 2d 6d 3a 38 2d 30 2d 38 2d 38 2f 73 2d 64 2d 6b 2f 61 2d 70 2d 69 2f 61 2d 64 2f 68 2d 75 2d 6c 2d 6c 5f 76 32 00 } //02 00  栭琭琭瀭⼺支渭献渭漭眭昭漭砭ㄮㄭ㈭札猭挮漭洭㠺〭㠭㠭猯搭欭愯瀭椭愯搭栯甭氭氭癟2
		$a_00_2 = {64 61 74 61 2e 7a 69 70 00 } //02 00 
		$a_00_3 = {63 6f 6d 2e 69 6d 2e 4d 61 69 6e 00 } //02 00 
		$a_03_4 = {12 00 12 11 12 02 22 03 90 01 02 6e 10 90 01 02 0b 00 0c 04 6e 10 90 01 02 0c 00 0c 05 6e 10 90 01 02 0a 00 0c 06 70 56 90 01 02 43 05 5b 93 90 01 02 54 93 90 01 02 1a 04 90 01 02 6e 20 90 01 02 43 00 0c 03 6e 10 90 01 02 03 00 0c 03 12 34 90 00 } //02 00 
		$a_00_5 = {58 52 6b 4a 43 63 51 59 6d 38 75 47 35 64 49 6a 54 61 6f 46 5a 4d 2f 33 76 45 6c 79 73 6e 69 2b 42 34 53 70 37 4c 72 41 68 36 74 7a 32 71 65 57 31 50 4b 56 62 48 77 39 78 66 30 44 55 4f 00 } //02 00 
		$a_03_6 = {1a 00 00 00 01 13 6e 10 90 01 02 07 00 0a 02 35 23 44 00 6e 20 90 01 02 37 00 0a 02 13 04 3d 00 32 42 38 00 62 04 90 01 02 6e 20 90 01 02 24 00 0a 02 71 10 90 01 02 02 00 0c 02 90 00 } //02 00 
		$a_01_7 = {0c 01 21 12 12 00 35 20 0c 00 48 03 01 00 df 03 03 10 8d 33 4f 03 01 00 d8 00 00 01 28 f5 90 00 } //01 00 
		$a_00_8 = {4c 63 6f 6d 2f 69 6e 66 65 63 2f 75 6e 64 69 70 00 } //00 00 
		$a_00_9 = {5d 04 00 } //00 34 
	condition:
		any of ($a_*)
 
}