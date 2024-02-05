
rule TrojanDownloader_Win32_Sindomorl_D{
	meta:
		description = "TrojanDownloader:Win32/Sindomorl.D,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 0b 00 00 04 00 "
		
	strings :
		$a_01_0 = {33 00 30 00 43 00 32 00 35 00 34 00 42 00 46 00 35 00 31 00 44 00 45 00 35 00 43 00 45 00 38 00 34 00 41 00 31 00 36 00 32 00 32 00 43 00 37 00 36 00 43 00 39 00 42 00 34 00 31 00 43 00 38 00 37 00 43 00 41 00 35 00 36 00 33 00 41 00 33 00 35 00 31 00 45 00 33 00 31 00 46 00 43 00 32 00 41 00 41 00 36 00 35 00 39 00 32 00 42 00 45 00 37 00 } //04 00 
		$a_01_1 = {42 00 31 00 34 00 30 00 44 00 37 00 33 00 42 00 43 00 41 00 35 00 30 00 32 00 44 00 33 00 46 00 32 00 34 00 33 00 30 00 30 00 38 00 32 00 39 00 43 00 46 00 36 00 37 00 38 00 41 00 39 00 31 00 34 00 35 00 46 00 43 00 31 00 41 00 46 00 34 00 32 00 45 00 43 00 36 00 37 00 43 00 41 00 37 00 38 00 46 00 38 00 31 00 42 00 36 00 35 00 35 00 45 00 } //04 00 
		$a_01_2 = {33 00 31 00 43 00 33 00 35 00 42 00 42 00 38 00 34 00 38 00 44 00 37 00 35 00 35 00 45 00 37 00 34 00 44 00 45 00 39 00 34 00 45 00 39 00 33 00 42 00 39 00 34 00 39 00 45 00 43 00 33 00 34 00 45 00 37 00 31 00 39 00 46 00 36 00 31 00 37 00 43 00 43 00 36 00 37 00 39 00 43 00 34 00 34 00 32 00 38 00 46 00 41 00 32 00 38 00 43 00 34 00 37 00 } //04 00 
		$a_01_3 = {42 00 32 00 34 00 31 00 44 00 36 00 33 00 43 00 43 00 44 00 35 00 44 00 44 00 45 00 36 00 44 00 42 00 35 00 34 00 31 00 44 00 35 00 36 00 35 00 39 00 31 00 41 00 36 00 37 00 31 00 42 00 30 00 39 00 39 00 35 00 46 00 41 00 32 00 36 00 46 00 39 00 36 00 35 00 37 00 38 00 31 00 42 00 33 00 34 00 46 00 30 00 39 00 33 00 45 00 46 00 41 00 37 00 } //04 00 
		$a_01_4 = {33 00 42 00 46 00 39 00 30 00 44 00 46 00 36 00 30 00 36 00 31 00 35 00 31 00 36 00 32 00 36 00 43 00 32 00 34 00 43 00 44 00 36 00 36 00 45 00 41 00 30 00 35 00 45 00 38 00 34 00 38 00 37 00 42 00 31 00 36 00 39 00 45 00 37 00 33 00 38 00 45 00 31 00 31 00 41 00 30 00 45 00 43 00 33 00 37 00 33 00 41 00 31 00 34 00 45 00 46 00 42 00 37 00 } //04 00 
		$a_01_5 = {42 00 42 00 37 00 45 00 39 00 31 00 37 00 31 00 38 00 30 00 45 00 46 00 34 00 44 00 31 00 46 00 44 00 36 00 32 00 43 00 46 00 41 00 33 00 32 00 44 00 41 00 31 00 39 00 32 00 42 00 46 00 41 00 31 00 38 00 43 00 35 00 35 00 46 00 42 00 45 00 36 00 36 00 43 00 31 00 36 00 32 00 39 00 37 00 35 00 46 00 46 00 41 00 32 00 31 00 43 00 36 00 37 00 } //04 00 
		$a_01_6 = {31 00 42 00 44 00 39 00 32 00 44 00 44 00 36 00 32 00 36 00 33 00 35 00 33 00 36 00 30 00 36 00 32 00 46 00 46 00 30 00 33 00 30 00 43 00 36 00 37 00 37 00 42 00 30 00 37 00 31 00 42 00 46 00 42 00 34 00 41 00 44 00 36 00 36 00 41 00 36 00 35 00 43 00 39 00 39 00 42 00 39 00 35 00 38 00 45 00 33 00 33 00 46 00 45 00 31 00 30 00 36 00 33 00 } //04 00 
		$a_01_7 = {41 00 43 00 34 00 46 00 41 00 30 00 36 00 32 00 42 00 33 00 37 00 32 00 46 00 45 00 34 00 44 00 32 00 41 00 46 00 35 00 33 00 30 00 43 00 43 00 37 00 30 00 38 00 42 00 41 00 39 00 37 00 42 00 41 00 33 00 39 00 42 00 42 00 39 00 34 00 32 00 45 00 31 00 31 00 31 00 43 00 33 00 36 00 42 00 38 00 35 00 39 00 45 00 35 00 37 00 46 00 35 00 30 00 } //04 00 
		$a_01_8 = {33 00 35 00 43 00 37 00 35 00 46 00 41 00 34 00 37 00 34 00 42 00 32 00 42 00 45 00 38 00 45 00 45 00 42 00 33 00 37 00 43 00 46 00 36 00 43 00 39 00 31 00 35 00 35 00 39 00 33 00 36 00 31 00 38 00 39 00 46 00 35 00 35 00 34 00 42 00 38 00 35 00 38 00 45 00 46 00 32 00 34 00 43 00 42 00 31 00 41 00 30 00 42 00 33 00 42 00 45 00 39 00 30 00 } //02 00 
		$a_01_9 = {5a 00 63 00 77 00 61 00 55 00 52 00 63 00 56 00 68 00 6f 00 52 00 41 00 54 00 51 00 62 00 44 00 4f 00 70 00 73 00 46 00 55 00 47 00 46 00 5a 00 74 00 45 00 49 00 50 00 4a 00 66 00 41 00 41 00 6b 00 6f 00 66 00 79 00 66 00 57 00 49 00 7a 00 71 00 4e 00 64 00 55 00 43 00 70 00 59 00 5a 00 50 00 41 00 76 00 44 00 6e 00 45 00 63 00 62 00 7a 00 } //01 00 
		$a_01_10 = {30 00 30 00 36 00 42 00 46 00 41 00 35 00 43 00 } //00 00 
		$a_00_11 = {87 10 00 } //00 ae 
	condition:
		any of ($a_*)
 
}