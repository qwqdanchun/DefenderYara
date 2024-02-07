
rule TrojanDownloader_Win32_Korwelur_A{
	meta:
		description = "TrojanDownloader:Win32/Korwelur.A,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 06 00 00 04 00 "
		
	strings :
		$a_01_0 = {35 00 30 00 37 00 32 00 38 00 33 00 37 00 65 00 37 00 66 00 34 00 34 00 33 00 65 00 33 00 39 00 38 00 36 00 38 00 31 00 38 00 36 00 33 00 38 00 37 00 66 00 37 00 33 00 38 00 32 00 37 00 33 00 37 00 66 00 37 00 33 00 38 00 32 00 37 00 33 00 37 00 64 00 36 00 66 00 37 00 34 00 33 00 38 00 37 00 32 00 37 00 39 00 37 00 63 00 33 00 39 00 38 00 35 00 36 00 66 00 38 00 31 00 37 00 33 00 37 00 35 00 38 00 33 00 33 00 64 00 37 00 61 00 37 00 37 00 37 00 61 00 } //04 00  5072837e7f443e39868186387f7382737f7382737d6f743872797c39856f817375833d7a777a
		$a_01_1 = {77 00 2e 00 74 00 63 00 6d 00 62 00 2e 00 67 00 6f 00 76 00 2e 00 74 00 72 00 2f 00 6b 00 75 00 72 00 6c 00 61 00 72 00 2f 00 74 00 6f 00 64 00 61 00 79 00 2e 00 68 00 74 00 6d 00 } //02 00  w.tcmb.gov.tr/kurlar/today.htm
		$a_01_2 = {77 00 75 00 61 00 63 00 74 00 6c 00 79 00 78 00 2e 00 65 00 78 00 65 00 } //01 00  wuactlyx.exe
		$a_01_3 = {48 00 65 00 79 00 64 00 65 00 78 00 20 00 45 00 78 00 65 00 5c 00 } //01 00  Heydex Exe\
		$a_01_4 = {3e 00 00 00 72 00 74 00 75 00 70 00 2e 00 68 00 6f 00 6d 00 65 00 70 00 61 00 67 00 65 00 5f 00 6f 00 76 00 65 00 72 00 72 00 69 00 64 00 65 00 2e 00 62 00 75 00 69 00 6c 00 64 00 49 00 44 00 22 00 } //01 00 
		$a_01_5 = {6d 00 73 00 3d 00 31 00 26 00 69 00 64 00 3d 00 } //00 00  ms=1&id=
		$a_00_6 = {80 10 } //00 00 
	condition:
		any of ($a_*)
 
}