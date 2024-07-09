
rule TrojanDownloader_Linux_Ursnif_A{
	meta:
		description = "TrojanDownloader:Linux/Ursnif.A,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_01_0 = {67 6f 64 6d 6d 77 2f 70 68 22 29 } //5 godmmw/ph")
		$a_01_1 = {3d 20 33 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_03_2 = {28 29 20 41 73 20 56 61 72 69 61 6e 74 [0-6b] 3d 20 41 72 72 61 79 28 90 05 40 07 41 2d 5a 61 2d 7a 2e 28 22 90 05 80 04 20 2c 2d 7a 22 29 [0-18] 2c 20 90 1b 01 28 22 90 05 80 04 20 2c 2d 7a 22 29 2c 20 } //1
	condition:
		((#a_01_0  & 1)*5+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1) >=7
 
}
rule TrojanDownloader_Linux_Ursnif_A_2{
	meta:
		description = "TrojanDownloader:Linux/Ursnif.A,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 02 00 00 "
		
	strings :
		$a_03_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 [0-12] 50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 90 05 10 06 41 2d 5a 61 2d 7a 28 42 79 56 61 6c 20 90 05 10 06 41 2d 5a 61 2d 7a 20 41 73 20 53 74 72 69 6e 67 2c 20 42 79 56 61 6c 20 90 05 10 06 41 2d 5a 61 2d 7a 20 41 73 20 53 74 72 69 6e 67 29 20 41 73 20 53 74 72 69 6e 67 [0-40] 46 6f 72 20 90 05 10 06 41 2d 5a 61 2d 7a 20 3d 20 90 05 10 06 41 2d 5a 61 2d 7a 20 54 6f 20 90 05 10 06 41 2d 5a 61 2d 7a 2e 90 05 10 06 41 2d 5a 61 2d 7a 28 22 90 1d 25 00 22 2c 20 90 1b 02 29 [0-04] 90 1b 01 20 3d 20 90 1b 07 2e 90 05 10 06 41 2d 5a 61 2d 7a 28 22 90 1d 25 00 22 2c 20 90 1b 01 2c } //2
		$a_03_1 = {49 66 20 4e 6f 74 20 90 05 10 06 41 2d 5a 61 2d 7a 2e 90 1d 18 00 28 90 1d 18 00 2c 20 22 90 04 02 09 30 2d 39 41 2d 5a 61 2d 7a 90 1d 20 00 22 2c } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1) >=3
 
}
rule TrojanDownloader_Linux_Ursnif_A_3{
	meta:
		description = "TrojanDownloader:Linux/Ursnif.A,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 03 00 00 "
		
	strings :
		$a_03_0 = {45 6e 64 20 53 75 62 0d 0a 50 72 69 76 61 74 65 20 46 75 6e 63 74 69 6f 6e 20 90 05 18 06 41 2d 5a 61 2d 7a 28 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 90 1b 00 20 3d 20 90 05 18 06 41 2d 5a 61 2d 7a 2e 90 05 18 06 41 2d 5a 61 2d 7a 28 22 90 05 80 04 20 2c 2d 7a 22 2c 20 22 90 05 10 04 20 2c 2d 7a 22 29 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 0d 0a 50 72 69 76 61 74 65 20 46 75 6e 63 74 69 6f 6e 20 90 05 18 06 41 2d 5a 61 2d 7a 28 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 90 1b 06 20 3d 20 90 1b 02 2e 90 1b 03 28 22 90 05 80 04 20 2c 2d 7a 22 2c 20 22 90 05 10 04 20 2c 2d 7a 22 29 0d 0a [0-80] 3d 20 90 1b 02 2e 90 1b 03 28 22 [0-ff] 3d 20 90 1b 02 2e 90 1b 03 28 22 } //5
		$a_03_1 = {28 29 20 41 73 20 56 61 72 69 61 6e 74 [0-18] 3d 20 41 72 72 61 79 28 90 05 18 06 41 2d 5a 61 2d 7a 2e 90 05 18 06 41 2d 5a 61 2d 7a 28 22 90 05 80 04 20 2c 2d 7a 22 2c 20 22 90 05 10 04 20 2c 2d 7a 22 29 [0-18] 2c 20 90 1b 01 2e 90 1b 02 28 22 90 05 80 04 20 2c 2d 7a 22 2c 20 22 90 05 10 04 20 2c 2d 7a 22 29 [0-60] 2c 20 90 1b 01 2e 90 1b 02 28 22 90 05 80 04 20 2c 2d 7a 22 2c 20 22 90 05 10 04 20 2c 2d 7a 22 29 } //1
		$a_01_2 = {3d 20 33 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=7
 
}