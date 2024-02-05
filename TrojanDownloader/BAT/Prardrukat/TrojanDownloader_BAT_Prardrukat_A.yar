
rule TrojanDownloader_BAT_Prardrukat_A{
	meta:
		description = "TrojanDownloader:BAT/Prardrukat.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 0a 00 00 04 00 "
		
	strings :
		$a_01_0 = {61 00 72 00 74 00 2e 00 64 00 75 00 63 00 6b 00 61 00 72 00 74 00 31 00 36 00 38 00 2e 00 63 00 6f 00 6d 00 2f 00 70 00 69 00 63 00 2f 00 69 00 6e 00 64 00 65 00 78 00 2e 00 68 00 74 00 6d 00 } //02 00 
		$a_01_1 = {53 00 68 00 75 00 74 00 44 00 6f 00 77 00 6e 00 20 00 2d 00 73 00 20 00 2d 00 74 00 20 00 31 00 35 00 20 00 2d 00 66 00 20 00 2d 00 63 00 } //02 00 
		$a_01_2 = {5c 00 30 00 30 00 30 00 30 00 30 00 66 00 72 00 6f 00 6d 00 32 00 62 00 6f 00 6f 00 74 00 2e 00 74 00 78 00 74 00 } //02 00 
		$a_01_3 = {30 00 35 00 37 00 45 00 33 00 36 00 34 00 38 00 37 00 44 00 43 00 33 00 31 00 30 00 33 00 39 00 37 00 33 00 31 00 32 00 31 00 33 00 46 00 46 00 36 00 36 00 31 00 44 00 35 00 34 00 34 00 43 00 33 00 31 00 30 00 38 00 } //02 00 
		$a_01_4 = {4f 00 70 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 2e 00 65 00 78 00 65 00 22 00 20 00 2f 00 76 00 20 00 64 00 65 00 62 00 75 00 67 00 67 00 65 00 72 00 20 00 2f 00 64 00 20 00 6e 00 75 00 6c 00 6c 00 20 00 2f 00 66 00 } //01 00 
		$a_01_5 = {4c 00 69 00 6e 00 65 00 61 00 67 00 65 00 68 00 65 00 6c 00 70 00 } //01 00 
		$a_01_6 = {39 00 36 00 61 00 66 00 36 00 65 00 32 00 34 00 39 00 36 00 36 00 66 00 61 00 37 00 35 00 64 00 65 00 65 00 63 00 35 00 66 00 37 00 65 00 33 00 62 00 31 00 34 00 35 00 30 00 36 00 39 00 30 00 } //01 00 
		$a_01_7 = {31 00 62 00 66 00 36 00 32 00 34 00 34 00 31 00 38 00 34 00 37 00 33 00 61 00 62 00 33 00 35 00 63 00 37 00 62 00 61 00 63 00 38 00 32 00 61 00 34 00 33 00 37 00 64 00 35 00 35 00 33 00 31 00 } //01 00 
		$a_01_8 = {64 00 33 00 64 00 66 00 38 00 38 00 37 00 65 00 64 00 31 00 31 00 65 00 36 00 31 00 37 00 39 00 34 00 35 00 61 00 63 00 66 00 63 00 33 00 32 00 32 00 63 00 37 00 30 00 62 00 65 00 33 00 31 00 } //01 00 
		$a_01_9 = {61 00 63 00 37 00 61 00 63 00 61 00 37 00 63 00 35 00 30 00 38 00 63 00 65 00 34 00 32 00 64 00 62 00 65 00 37 00 38 00 30 00 64 00 62 00 34 00 37 00 66 00 35 00 37 00 30 00 37 00 39 00 37 00 } //00 00 
		$a_00_10 = {80 10 00 00 5e } //8d d0 
	condition:
		any of ($a_*)
 
}