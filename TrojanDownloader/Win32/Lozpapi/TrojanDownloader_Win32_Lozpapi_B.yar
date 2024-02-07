
rule TrojanDownloader_Win32_Lozpapi_B{
	meta:
		description = "TrojanDownloader:Win32/Lozpapi.B,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 00 6c 00 6b 00 2d 00 3d 00 61 00 6b 00 34 00 6a 00 6a 00 44 00 53 00 41 00 32 00 31 00 21 00 40 00 6b 00 6b 00 23 00 24 00 23 00 32 00 31 00 } //01 00  Slk-=ak4jjDSA21!@kk#$#21
		$a_01_1 = {25 00 32 00 31 00 38 00 75 00 70 00 2d 00 59 00 25 00 31 00 41 00 2e 00 25 00 32 00 35 00 25 00 30 00 39 00 25 00 31 00 37 00 2e 00 51 00 44 00 4c 00 25 00 32 00 35 00 25 00 30 00 35 00 25 00 31 00 46 00 } //01 00  %218up-Y%1A.%25%09%17.QDL%25%05%1F
		$a_01_2 = {25 00 33 00 42 00 25 00 30 00 32 00 43 00 75 00 25 00 31 00 35 00 25 00 31 00 46 00 44 00 44 00 3d 00 2d 00 3d 00 25 00 30 00 39 00 46 00 45 00 51 00 25 00 31 00 32 00 25 00 30 00 45 00 25 00 31 00 41 00 56 00 41 00 50 00 46 00 25 00 31 00 46 00 66 00 42 00 5a 00 } //01 00  %3B%02Cu%15%1FDD=-=%09FEQ%12%0E%1AVAPF%1FfBZ
		$a_01_3 = {6d 00 65 00 74 00 61 00 20 00 00 00 00 00 0e 00 00 00 72 00 65 00 66 00 72 00 65 00 73 00 68 00 00 00 08 00 00 00 75 00 72 00 6c 00 3d } //01 00 
		$a_01_4 = {48 00 45 00 41 00 44 00 00 00 00 00 02 00 00 00 30 00 00 00 08 00 00 00 67 00 7a 00 69 00 70 00 00 00 00 00 0e 00 00 00 64 00 65 00 66 } //00 00 
		$a_00_5 = {5d 04 00 } //00 4c 
	condition:
		any of ($a_*)
 
}