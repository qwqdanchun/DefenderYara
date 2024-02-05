
rule TrojanDownloader_Win32_Mavradoi_A{
	meta:
		description = "TrojanDownloader:Win32/Mavradoi.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 0d 00 00 04 00 "
		
	strings :
		$a_01_0 = {44 42 36 42 46 43 37 42 46 44 36 32 39 41 44 34 32 45 43 31 34 42 41 43 44 37 36 44 38 38 45 38 30 43 31 34 35 44 46 44 31 31 31 43 35 32 41 34 43 34 32 } //04 00 
		$a_01_1 = {34 43 44 42 36 44 38 42 45 44 37 32 38 41 45 34 31 45 33 31 33 41 39 42 43 36 37 45 44 39 37 45 44 39 30 36 34 46 45 46 30 33 32 41 41 30 33 37 39 31 33 } //04 00 
		$a_01_2 = {34 33 44 32 36 34 39 32 44 34 31 42 36 35 38 46 45 30 37 36 38 37 43 38 31 34 43 31 30 35 34 42 38 45 42 32 31 32 32 41 43 35 36 39 45 46 36 36 45 32 36 } //03 00 
		$a_01_3 = {32 38 31 36 37 30 38 35 44 34 37 30 44 46 37 39 45 39 31 32 37 36 38 37 43 44 30 36 34 45 39 43 33 44 44 38 30 38 33 33 31 37 30 37 } //03 00 
		$a_01_4 = {77 2e 61 72 74 70 6c 69 63 2e 63 6f 6d 2e 62 72 2f 66 61 6e 63 79 62 6f 78 2f 63 6f 75 6e 74 2e 70 68 70 } //02 00 
		$a_01_5 = {41 33 41 45 42 36 33 46 42 39 33 38 34 36 42 37 33 32 } //02 00 
		$a_01_6 = {32 37 44 34 37 43 43 43 30 46 34 43 38 32 43 31 31 33 43 45 } //02 00 
		$a_01_7 = {30 44 31 39 43 44 30 35 35 45 45 37 37 30 45 35 31 38 43 41 37 33 45 30 36 43 46 37 35 35 46 34 } //02 00 
		$a_01_8 = {45 32 35 31 43 37 43 30 43 37 30 33 34 42 38 41 43 37 37 44 41 30 46 36 35 33 38 43 33 35 } //02 00 
		$a_01_9 = {31 32 43 35 37 30 39 35 43 43 30 43 34 42 38 32 } //02 00 
		$a_01_10 = {45 39 31 37 43 33 31 32 42 33 31 31 34 37 39 30 43 37 36 32 39 35 45 41 } //02 00 
		$a_01_11 = {33 31 43 35 37 45 44 35 30 38 34 41 39 34 33 31 34 42 45 37 31 31 34 45 } //02 00 
		$a_01_12 = {44 46 38 32 37 39 38 34 4b 44 38 38 47 34 33 34 46 35 44 } //00 00 
		$a_00_13 = {5d 04 00 00 ef } //30 03 
	condition:
		any of ($a_*)
 
}