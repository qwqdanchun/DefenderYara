
rule TrojanDownloader_Win32_Renos_HL{
	meta:
		description = "TrojanDownloader:Win32/Renos.HL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {5b 24 c7 34 45 38 44 39 45 42 46 32 32 43 2d 90 02 05 34 32 42 44 2d 41 38 43 42 2d 37 45 35 39 43 90 02 02 43 30 38 42 41 2f 23 90 00 } //1
		$a_03_1 = {41 6c 77 61 79 73 90 02 02 75 64 79 90 02 10 72 52 34 90 02 02 6e 65 72 90 02 30 4c 54 45 52 4e ce 55 52 4c 90 00 } //1
		$a_01_2 = {74 70 3a 2f 2f 64 6c 2e 25 73 2f 67 65 74 2f 3f 70 69 6e 3d 0b 26 4b 1e 12 ee 6c 6e 64 } //1
		$a_01_3 = {2f 73 63 61 6e 2e } //1 /scan.
		$a_00_4 = {50 00 41 00 52 00 54 00 4e 00 45 00 52 00 49 00 44 00 } //1 PARTNERID
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}
rule TrojanDownloader_Win32_Renos_HL_2{
	meta:
		description = "TrojanDownloader:Win32/Renos.HL,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 0e 00 00 "
		
	strings :
		$a_01_0 = {44 4c 5f 44 4f 4d 41 49 4e } //1 DL_DOMAIN
		$a_01_1 = {53 43 41 4e 5f 49 4d 47 } //1 SCAN_IMG
		$a_01_2 = {45 52 5f 53 54 41 54 5f 44 4f 4d 41 49 4e 32 } //1 ER_STAT_DOMAIN2
		$a_01_3 = {50 52 45 53 41 4c 45 5f 52 45 51 55 45 53 54 5f 44 4f 4d 41 49 4e } //1 PRESALE_REQUEST_DOMAIN
		$a_01_4 = {50 41 52 54 4e 45 52 49 44 } //1 PARTNERID
		$a_01_5 = {3c 50 52 4f 47 52 41 4d 46 49 4c 45 53 3e 5c } //1 <PROGRAMFILES>\
		$a_01_6 = {5c 44 72 69 76 65 72 73 5c 56 69 64 65 6f 5c 4f 70 74 69 6f 6e 73 5c } //1 \Drivers\Video\Options\
		$a_01_7 = {34 45 38 44 39 45 42 46 2d 31 32 32 43 2d 34 32 42 44 2d 41 38 43 42 2d 37 45 35 39 43 39 43 43 30 38 42 41 } //1 4E8D9EBF-122C-42BD-A8CB-7E59C9CC08BA
		$a_01_8 = {5f 61 64 64 6f 6e 2e 65 78 65 00 } //1
		$a_01_9 = {79 20 66 6f 72 20 72 75 6e 00 } //1
		$a_01_10 = {66 75 6e 63 3d 69 6e 73 74 61 6c 6c 72 75 6e 26 69 64 3d 25 73 26 6c 61 6e 64 69 6e 67 3d 25 73 } //1 func=installrun&id=%s&landing=%s
		$a_01_11 = {26 6c 61 6e 67 3d 25 73 26 73 75 62 3d 25 73 26 6e 6f 74 73 74 61 74 3d 31 } //1 &lang=%s&sub=%s&notstat=1
		$a_01_12 = {66 75 6e 63 3d 72 65 73 65 72 76 65 64 64 6f 6d 61 69 6e 73 } //1 func=reserveddomains
		$a_01_13 = {68 74 74 70 3a 2f 2f 64 6c 2e 25 73 2f 67 65 74 2f 3f 70 69 6e 3d 25 73 26 6c 6e 64 3d 25 73 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1+(#a_01_10  & 1)*1+(#a_01_11  & 1)*1+(#a_01_12  & 1)*1+(#a_01_13  & 1)*1) >=12
 
}