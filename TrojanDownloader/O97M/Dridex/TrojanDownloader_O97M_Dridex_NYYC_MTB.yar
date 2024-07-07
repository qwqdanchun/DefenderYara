
rule TrojanDownloader_O97M_Dridex_NYYC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.NYYC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,1c 00 1c 00 0e 00 00 "
		
	strings :
		$a_03_0 = {68 74 74 70 73 90 02 0a 3a 2f 2f 66 6f 72 77 65 69 2e 63 6f 90 02 0a 6d 2f 69 6d 61 67 65 2f 63 61 63 68 65 2f 64 61 74 61 2f 56 61 72 69 90 02 0a 6f 73 2f 43 61 62 6c 65 73 2f 30 59 47 77 72 45 52 79 90 02 0a 2e 70 68 70 90 00 } //20
		$a_03_1 = {68 74 74 70 73 3a 2f 2f 63 61 6e 61 76 65 72 61 6c 73 90 02 0a 2e 74 6f 75 72 73 2f 77 70 73 90 02 0a 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 62 69 72 63 68 73 63 68 65 64 75 6c 65 73 90 02 0a 2f 69 6e 63 6c 75 64 65 73 2f 6d 6f 64 65 6c 2f 6e 43 53 4a 4c 59 76 76 47 4a 77 2e 70 68 70 90 00 } //20
		$a_03_2 = {68 74 74 70 73 3a 2f 2f 61 64 65 67 74 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 73 6f 64 69 75 6d 5f 63 6f 90 02 0a 6d 70 90 02 0a 61 74 2f 6e 61 6d 65 73 70 61 63 65 64 2f 43 90 02 0a 6f 72 65 2f 43 68 61 43 68 61 32 30 2f 65 44 4b 67 6f 69 5a 6f 76 38 32 46 54 2e 70 68 70 90 00 } //20
		$a_03_3 = {68 74 74 70 73 3a 2f 2f 6f 75 72 63 6f 6d 6d 2e 63 6f 2e 75 6b 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 62 75 64 64 79 62 6f 73 73 2d 70 6c 61 74 66 6f 90 02 0a 72 6d 2f 62 90 02 0a 70 2d 6d 6f 64 65 72 61 74 69 6f 90 02 0a 6e 2f 90 02 0a 63 6c 61 73 73 65 73 2f 90 02 0a 53 58 44 65 74 6b 67 73 6e 50 50 2e 70 68 70 90 00 } //20
		$a_03_4 = {68 74 74 70 73 3a 2f 2f 74 61 63 74 6f 63 90 02 0a 6f 6e 73 63 69 65 6e 74 90 02 0a 65 2e 6e 65 74 2f 77 70 2d 63 6f 6e 74 65 6e 74 90 02 0a 2f 70 6c 75 67 69 6e 90 02 0a 73 2f 6a 73 5f 90 02 0a 63 6f 6d 70 6f 73 65 72 2f 63 6f 6e 66 69 67 2f 62 75 74 74 6f 6e 73 2f 4c 39 4f 34 90 02 0a 4b 6c 63 38 31 65 63 4c 2e 70 68 70 90 00 } //20
		$a_03_5 = {68 74 74 70 73 3a 2f 2f 6f 72 67 61 6e 69 67 72 61 6d 61 2e 67 75 61 6c 64 61 2e 63 6f 6d 90 02 0a 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 2f 63 6f 64 65 70 72 65 73 73 2d 61 64 6d 69 6e 2d 63 6f 6c 75 6d 6e 73 2f 63 6c 61 73 73 65 73 2f 41 64 6d 69 6e 2f 57 6c 38 67 6e 76 48 77 51 37 7a 2e 70 68 70 90 00 } //20
		$a_03_6 = {3d 20 52 65 70 6c 61 63 65 28 22 57 73 90 02 0a 63 90 02 0a 72 90 02 0a 69 90 02 0a 70 74 90 02 0a 2e 90 02 0a 53 68 65 6c 6c 90 00 } //1
		$a_03_7 = {3d 20 52 65 70 6c 61 63 65 28 22 90 02 0a 77 6d 69 63 20 70 72 6f 63 65 73 73 20 63 61 6c 6c 20 63 72 65 61 74 65 29 90 02 0a 20 27 72 75 6e 64 6c 6c 33 32 2e 65 78 65 90 00 } //4
		$a_03_8 = {68 74 74 70 73 3a 2f 2f 6c 61 62 72 69 65 2d 73 61 62 65 74 74 65 2e 63 6f 6d 2f 77 70 2d 69 6e 63 6c 75 64 65 73 2f 73 6f 64 69 75 90 02 0a 6d 5f 90 02 0a 63 6f 6d 70 61 74 90 02 0a 2f 6e 61 6d 65 73 70 61 63 65 64 2f 43 6f 90 02 0a 72 65 2f 43 68 61 43 68 61 32 30 2f 67 70 90 02 0a 35 79 48 90 02 0a 72 42 70 2e 70 68 70 90 00 } //20
		$a_03_9 = {68 74 74 70 73 3a 2f 2f 6b 77 65 72 61 6c 74 64 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 70 6c 75 67 69 6e 73 90 02 0a 2f 77 6f 6f 63 6f 6d 6d 90 02 0a 65 72 63 65 2d 64 65 6c 69 76 65 72 79 2d 6e 6f 74 65 73 2f 69 6e 63 6c 75 64 65 73 2f 63 6f 90 02 0a 6d 70 6f 6e 65 6e 74 2f 75 36 33 52 90 02 0a 38 34 68 4d 2e 70 68 70 90 00 } //20
		$a_03_10 = {3d 20 52 65 70 6c 61 63 65 28 22 90 02 0a 41 70 70 44 61 74 61 90 00 } //4
		$a_03_11 = {3d 20 52 65 70 6c 61 63 65 28 22 90 02 0a 5c 90 02 28 2e 90 02 0a 64 6c 6c 90 00 } //1
		$a_03_12 = {3d 20 52 65 70 6c 61 63 65 28 22 90 02 14 6e 6c 6f 61 64 4e 6f 77 90 00 } //1
		$a_03_13 = {3d 20 52 65 70 6c 61 63 65 28 22 68 74 74 70 73 3a 2f 2f 90 02 50 2f 90 02 50 2e 70 68 70 22 2c 90 00 } //1
	condition:
		((#a_03_0  & 1)*20+(#a_03_1  & 1)*20+(#a_03_2  & 1)*20+(#a_03_3  & 1)*20+(#a_03_4  & 1)*20+(#a_03_5  & 1)*20+(#a_03_6  & 1)*1+(#a_03_7  & 1)*4+(#a_03_8  & 1)*20+(#a_03_9  & 1)*20+(#a_03_10  & 1)*4+(#a_03_11  & 1)*1+(#a_03_12  & 1)*1+(#a_03_13  & 1)*1) >=28
 
}