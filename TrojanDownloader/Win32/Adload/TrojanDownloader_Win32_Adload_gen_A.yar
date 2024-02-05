
rule TrojanDownloader_Win32_Adload_gen_A{
	meta:
		description = "TrojanDownloader:Win32/Adload.gen!A,SIGNATURE_TYPE_PEHSTR_EXT,21 00 21 00 0e 00 00 05 00 "
		
	strings :
		$a_01_0 = {53 74 6f 70 70 69 6e 67 20 25 73 2e } //05 00 
		$a_01_1 = {53 65 74 53 65 72 76 69 63 65 53 74 61 74 75 73 28 29 20 66 61 69 6c 65 64 } //05 00 
		$a_00_2 = {52 65 67 69 73 74 65 72 53 65 72 76 69 63 65 50 72 6f 63 65 73 73 } //05 00 
		$a_00_3 = {47 65 74 4c 61 73 74 41 63 74 69 76 65 50 6f 70 75 70 } //05 00 
		$a_01_4 = {5c 73 79 73 74 65 6d 5c 72 65 67 73 76 72 33 32 2e 65 78 65 } //01 00 
		$a_01_5 = {70 6c 61 79 65 72 2e 64 6c 6c } //01 00 
		$a_01_6 = {6d 73 68 74 6d 6c 73 65 64 2e 65 78 65 } //01 00 
		$a_01_7 = {46 50 33 30 49 45 2e 64 6c 6c } //01 00 
		$a_01_8 = {46 50 33 30 50 59 2e 64 6c 6c } //01 00 
		$a_01_9 = {46 50 33 30 53 56 52 2e 65 78 65 } //01 00 
		$a_01_10 = {70 6c 61 79 2e 64 6c 6c } //01 00 
		$a_01_11 = {62 68 6f 2e 64 6c 6c } //01 00 
		$a_01_12 = {32 38 31 30 42 42 39 44 34 36 36 44 7d } //01 00 
		$a_01_13 = {37 31 35 37 32 36 39 30 2d 31 31 35 36 2d 34 65 33 36 2d 39 46 32 41 2d 34 32 35 38 37 38 39 39 41 42 44 45 } //00 00 
	condition:
		any of ($a_*)
 
}