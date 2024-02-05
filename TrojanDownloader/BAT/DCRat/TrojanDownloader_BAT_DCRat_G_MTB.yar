
rule TrojanDownloader_BAT_DCRat_G_MTB{
	meta:
		description = "TrojanDownloader:BAT/DCRat.G!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1e 00 1e 00 11 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 65 74 5f 46 69 6c 65 4e 61 6d 65 } //01 00 
		$a_01_1 = {73 65 74 5f 41 72 67 75 6d 65 6e 74 73 } //01 00 
		$a_01_2 = {73 65 74 5f 57 69 6e 64 6f 77 53 74 79 6c 65 } //01 00 
		$a_01_3 = {73 65 74 5f 43 72 65 61 74 65 4e 6f 57 69 6e 64 6f 77 } //02 00 
		$a_01_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //02 00 
		$a_01_5 = {2d 00 45 00 6e 00 63 00 6f 00 64 00 65 00 64 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 } //02 00 
		$a_01_6 = {51 00 42 00 6c 00 41 00 47 00 34 00 41 00 64 00 41 00 42 00 4d 00 41 00 47 00 6b 00 41 00 63 00 77 00 42 00 30 00 41 00 43 00 41 00 41 00 49 00 67 00 42 00 42 00 41 00 47 00 51 00 41 00 5a 00 41 00 41 00 74 00 41 00 46 00 51 00 41 00 65 00 51 00 42 00 77 00 41 00 47 00 55 00 41 00 49 00 41 00 41 00 74 00 41 00 45 00 45 00 41 00 63 00 77 00 42 00 } //02 00 
		$a_01_7 = {7a 00 41 00 47 00 55 00 41 00 62 00 51 00 42 00 69 00 41 00 47 00 77 00 41 00 65 00 51 00 42 00 4f 00 41 00 47 00 45 00 41 00 62 00 51 00 42 00 6c 00 41 00 43 00 41 00 41 00 55 00 77 00 42 00 35 00 41 00 48 00 4d 00 41 00 64 00 41 00 42 00 6c 00 41 00 47 00 30 00 41 00 4c 00 67 00 42 00 58 00 41 00 47 00 6b 00 41 00 62 00 67 00 42 00 6b 00 41 00 47 00 38 00 41 00 64 00 77 00 42 00 7a 00 41 00 43 00 34 00 41 00 52 00 67 00 42 00 76 00 41 00 48 00 49 00 41 00 62 00 51 00 42 00 7a 00 41 00 } //02 00 
		$a_01_8 = {42 00 54 00 41 00 48 00 51 00 41 00 59 00 51 00 42 00 79 00 41 00 48 00 51 00 41 00 4c 00 51 00 42 00 51 00 41 00 48 00 49 00 41 00 62 00 77 00 42 00 6a 00 41 00 47 00 55 00 41 00 63 00 77 00 42 00 7a 00 41 00 43 00 41 00 41 00 63 00 41 00 42 00 76 00 41 00 48 00 63 00 41 00 5a 00 51 00 42 00 79 00 41 00 48 00 } //02 00 
		$a_01_9 = {4d 00 41 00 61 00 41 00 42 00 6c 00 41 00 47 00 77 00 41 00 62 00 41 00 41 00 67 00 41 00 43 00 30 00 41 00 56 00 77 00 42 00 70 00 41 00 47 00 34 00 41 00 5a 00 41 00 42 00 76 00 41 00 48 00 63 00 41 00 55 00 77 00 42 00 30 00 41 00 48 00 6b 00 41 00 62 00 41 00 42 00 6c 00 41 00 43 00 41 00 41 00 53 00 41 00 42 00 70 00 41 00 47 00 51 00 41 00 5a 00 41 00 42 00 6c 00 41 00 47 00 34 00 41 00 49 00 41 00 41 00 74 00 41 00 45 00 45 00 41 00 63 00 67 00 42 00 6e 00 41 00 48 00 55 00 41 00 62 00 } //02 00 
		$a_01_10 = {45 00 45 00 41 00 5a 00 41 00 42 00 6b 00 41 00 43 00 30 00 41 00 54 00 51 00 42 00 77 00 41 00 46 00 41 00 41 00 63 00 67 00 42 00 6c 00 41 00 47 00 59 00 41 00 5a 00 51 00 42 00 79 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 6a 00 41 00 47 00 55 00 } //02 00 
		$a_01_11 = {42 00 46 00 41 00 48 00 67 00 41 00 59 00 77 00 42 00 73 00 41 00 48 00 55 00 41 00 63 00 77 00 42 00 70 00 41 00 47 00 38 00 41 00 62 00 67 00 42 00 51 00 41 00 47 00 45 00 41 00 64 00 41 00 42 00 6f 00 41 00 43 00 41 00 41 00 51 00 41 00 41 00 6f 00 41 00 43 00 51 00 41 00 5a 00 51 00 } //02 00 
		$a_01_12 = {42 00 75 00 41 00 48 00 59 00 41 00 4f 00 67 00 42 00 56 00 41 00 48 00 4d 00 41 00 5a 00 51 00 42 00 79 00 41 00 46 00 41 00 41 00 63 00 67 00 42 00 76 00 41 00 47 00 59 00 41 00 61 00 51 00 42 00 73 00 41 00 47 00 55 00 41 00 4c 00 41 00 41 00 6b 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 32 00 41 00 44 00 6f 00 41 00 55 00 77 00 42 00 35 00 41 00 48 00 4d 00 41 00 64 00 41 00 42 00 6c 00 41 00 47 00 30 00 41 00 52 00 41 00 42 00 79 00 41 00 47 00 6b 00 41 00 64 00 67 00 42 00 6c 00 41 00 43 00 6b 00 } //02 00 
		$a_01_13 = {41 00 4b 00 41 00 42 00 4f 00 41 00 47 00 55 00 41 00 64 00 77 00 41 00 74 00 41 00 45 00 38 00 41 00 59 00 67 00 42 00 71 00 41 00 47 00 55 00 41 00 59 00 77 00 42 00 30 00 41 00 43 00 41 00 41 00 55 00 77 00 42 00 35 00 41 00 48 00 4d 00 41 00 64 00 41 00 42 00 6c 00 41 00 47 00 30 00 41 00 4c 00 67 00 42 00 4f 00 41 00 47 00 55 00 41 00 64 00 41 00 41 00 75 00 41 00 46 00 63 00 41 00 5a 00 51 00 42 00 69 00 41 00 45 00 4d 00 41 00 62 00 41 00 42 00 70 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 30 00 41 00 43 00 6b 00 41 00 4c 00 67 00 42 00 45 00 41 00 47 00 38 00 41 00 64 00 77 00 42 00 75 00 41 00 47 00 77 00 41 00 62 00 77 00 42 00 68 00 41 00 47 00 51 00 41 00 52 00 67 00 42 00 70 00 41 00 47 00 77 00 41 00 5a 00 51 00 } //02 00 
		$a_01_14 = {46 00 41 00 41 00 59 00 51 00 42 00 30 00 41 00 47 00 67 00 41 00 49 00 41 00 41 00 6b 00 41 00 47 00 55 00 41 00 62 00 67 00 42 00 32 00 41 00 44 00 6f 00 41 00 51 00 51 00 42 00 77 00 41 00 48 00 41 00 41 00 52 00 41 00 42 00 68 00 41 00 48 00 51 00 41 00 59 00 51 00 } //02 00 
		$a_01_15 = {41 00 55 00 41 00 42 00 68 00 41 00 48 00 51 00 41 00 61 00 41 00 41 00 67 00 41 00 43 00 51 00 41 00 5a 00 51 00 42 00 75 00 41 00 48 00 59 00 41 00 4f 00 67 00 42 00 55 00 41 00 47 00 55 00 41 00 62 00 51 00 42 00 77 00 } //02 00 
		$a_01_16 = {46 00 4d 00 41 00 64 00 41 00 42 00 68 00 41 00 48 00 49 00 41 00 64 00 41 00 41 00 74 00 41 00 46 00 41 00 41 00 63 00 67 00 42 00 76 00 41 00 47 00 4d 00 41 00 5a 00 51 00 42 00 7a 00 41 00 48 00 4d 00 41 00 49 00 41 00 41 00 74 00 41 00 45 00 59 00 41 00 61 00 51 00 42 00 73 00 41 00 47 00 55 00 41 00 55 00 41 00 42 00 68 00 41 00 48 00 51 00 41 00 61 00 41 00 } //00 00 
	condition:
		any of ($a_*)
 
}