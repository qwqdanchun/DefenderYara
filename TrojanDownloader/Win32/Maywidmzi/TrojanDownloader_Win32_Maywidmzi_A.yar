
rule TrojanDownloader_Win32_Maywidmzi_A{
	meta:
		description = "TrojanDownloader:Win32/Maywidmzi.A,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 0c 00 "
		
	strings :
		$a_01_0 = {36 00 38 00 37 00 34 00 37 00 34 00 37 00 30 00 33 00 41 00 32 00 46 00 32 00 46 00 36 00 34 00 36 00 31 00 37 00 32 00 36 00 42 00 36 00 32 00 37 00 32 00 36 00 35 00 36 00 31 00 36 00 42 00 32 00 45 00 36 00 44 00 37 00 39 00 36 00 36 00 37 00 34 00 37 00 30 00 32 00 45 00 36 00 46 00 37 00 32 00 36 00 37 00 32 00 46 00 37 00 33 00 37 00 34 00 36 00 31 00 37 00 32 00 37 00 34 00 32 00 45 00 36 00 33 00 37 00 33 00 37 00 33 00 } //0c 00 
		$a_01_1 = {36 00 38 00 37 00 34 00 37 00 34 00 37 00 30 00 37 00 33 00 33 00 41 00 32 00 46 00 32 00 46 00 36 00 34 00 36 00 43 00 32 00 45 00 36 00 34 00 37 00 32 00 36 00 46 00 37 00 30 00 36 00 32 00 36 00 46 00 37 00 38 00 37 00 35 00 37 00 33 00 36 00 35 00 37 00 32 00 36 00 33 00 36 00 46 00 36 00 45 00 37 00 34 00 36 00 35 00 36 00 45 00 37 00 34 00 32 00 45 00 36 00 33 00 36 00 46 00 36 00 44 00 32 00 46 00 37 00 33 00 32 00 46 00 36 00 45 00 33 00 31 00 33 00 33 00 37 00 34 00 33 00 31 00 36 00 32 00 33 00 31 00 33 00 38 00 36 00 35 00 36 00 33 00 36 00 42 00 37 00 32 00 33 00 39 00 36 00 35 00 37 00 30 00 32 00 46 00 37 00 33 00 37 00 34 00 36 00 31 00 37 00 32 00 37 00 34 00 32 00 45 00 36 00 33 00 37 00 33 00 37 00 33 00 } //0c 00 
		$a_01_2 = {36 00 38 00 37 00 34 00 37 00 34 00 37 00 30 00 37 00 33 00 33 00 41 00 32 00 46 00 32 00 46 00 36 00 37 00 36 00 46 00 36 00 46 00 36 00 37 00 36 00 43 00 36 00 35 00 36 00 34 00 37 00 32 00 36 00 39 00 37 00 36 00 36 00 35 00 32 00 45 00 36 00 33 00 36 00 46 00 36 00 44 00 32 00 46 00 36 00 38 00 36 00 46 00 37 00 33 00 37 00 34 00 32 00 46 00 33 00 30 00 34 00 32 00 33 00 38 00 34 00 46 00 33 00 33 00 36 00 36 00 34 00 31 00 35 00 41 00 34 00 32 00 34 00 43 00 35 00 39 00 35 00 35 00 35 00 32 00 35 00 41 00 34 00 38 00 34 00 32 00 36 00 38 00 36 00 35 00 36 00 43 00 36 00 38 00 33 00 35 00 36 00 33 00 33 00 30 00 34 00 39 00 37 00 37 00 34 00 45 00 36 00 42 00 35 00 35 00 32 00 46 00 37 00 33 00 37 00 34 00 36 00 31 00 } //02 00 
		$a_01_3 = {32 00 46 00 37 00 33 00 37 00 34 00 36 00 31 00 37 00 32 00 37 00 34 00 32 00 45 00 36 00 33 00 37 00 33 00 37 00 33 00 } //02 00 
		$a_01_4 = {36 00 34 00 36 00 31 00 37 00 32 00 36 00 42 00 36 00 32 00 37 00 32 00 36 00 35 00 36 00 31 00 36 00 42 00 32 00 45 00 36 00 44 00 37 00 39 00 36 00 36 00 37 00 34 00 37 00 30 00 32 00 45 00 36 00 46 00 37 00 32 00 36 00 37 00 } //01 00 
		$a_01_5 = {70 00 75 00 74 00 72 00 61 00 74 00 53 00 5c 00 73 00 6d 00 61 00 72 00 67 00 6f 00 72 00 50 00 5c 00 75 00 6e 00 65 00 4d 00 20 00 74 00 72 00 61 00 74 00 53 00 5c 00 } //01 00 
		$a_01_6 = {5c 00 73 00 6e 00 64 00 6d 00 2e 00 7a 00 69 00 70 00 } //01 00 
		$a_01_7 = {5c 00 6d 00 79 00 61 00 70 00 70 00 2e 00 7a 00 69 00 70 00 } //01 00 
		$a_01_8 = {54 69 6d 65 72 53 70 72 65 61 64 4d 65 } //01 00 
		$a_01_9 = {42 74 6e 46 74 70 47 65 74 50 6c 75 67 69 6e } //01 00 
		$a_01_10 = {53 63 61 6e 44 72 76 54 79 70 65 } //00 00 
		$a_00_11 = {80 10 00 00 95 85 } //95 9d 
	condition:
		any of ($a_*)
 
}