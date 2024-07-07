
rule TrojanDownloader_O97M_Obfuse_JV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {63 47 39 33 5a 58 4a 7a 61 47 56 73 62 43 35 6c 65 47 55 67 4c 56 64 70 62 6d 52 76 64 31 4e 30 65 57 78 6c 49 45 68 70 5a 47 52 6c 62 69 41 74 52 58 68 6c 59 33 56 30 61 57 39 75 55 47 39 73 61 57 4e 35 49 45 4a 35 63 47 46 7a 63 79 41 67 4c 57 4e 76 62 57 31 68 62 6d 51 67 49 69 41 6d 49 48 73 67 61 58 64 79 49 47 68 30 64 48 41 36 4c 79 39 76 62 6d 55 75 65 57 6c 30 65 58 52 33 62 79 35 34 65 58 6f 76 53 45 70 59 52 55 31 56 4c 6d 70 77 5a 79 41 74 54 33 56 30 } //1 cG93ZXJzaGVsbC5leGUgLVdpbmRvd1N0eWxlIEhpZGRlbiAtRXhlY3V0aW9uUG9saWN5IEJ5cGFzcyAgLWNvbW1hbmQgIiAmIHsgaXdyIGh0dHA6Ly9vbmUueWl0eXR3by54eXovSEpYRU1VLmpwZyAtT3V0
		$a_00_1 = {52 6d 6c 73 5a 53 42 44 4f 6c 78 56 63 32 56 79 63 31 78 51 64 57 4a 73 61 57 4e 63 52 47 39 6a 64 57 31 6c 62 6e 52 7a 58 47 4e 79 61 58 70 34 5a 6e 68 30 64 43 35 6c 65 47 56 39 4f 79 41 6d 49 48 74 54 64 47 46 79 64 43 31 51 63 6d 39 6a 5a 58 4e 7a 49 43 31 47 61 57 78 6c 55 47 46 30 61 43 41 69 51 7a 70 63 56 58 4e 6c 63 6e 4e 63 55 48 56 69 62 47 6c 6a 58 45 52 76 59 33 56 74 5a 57 35 30 63 31 78 6a 63 6d 6c 36 65 47 5a 34 64 48 51 75 5a 58 68 6c 49 6e 30 69 } //1 RmlsZSBDOlxVc2Vyc1xQdWJsaWNcRG9jdW1lbnRzXGNyaXp4Znh0dC5leGV9OyAmIHtTdGFydC1Qcm9jZXNzIC1GaWxlUGF0aCAiQzpcVXNlcnNcUHVibGljXERvY3VtZW50c1xjcml6eGZ4dHQuZXhlIn0i
		$a_00_2 = {64 32 6c 75 62 57 64 74 64 48 4d 36 64 32 6c 75 4d 7a 4a 66 55 48 4a 76 59 32 56 7a 63 77 3d 3d } //1 d2lubWdtdHM6d2luMzJfUHJvY2Vzcw==
	condition:
		((#a_00_0  & 1)*1+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1) >=3
 
}
rule TrojanDownloader_O97M_Obfuse_JV_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.JV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 22 20 2b 20 22 57 69 6e 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 57 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 22 20 2b 20 22 6d 67 6d 74 73 3a 57 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 22 20 2b 20 22 6d 67 6d 74 22 20 2b 20 22 73 3a 57 69 6e 22 20 2b 20 22 33 32 5f 50 72 6f 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_5 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 69 6e 6d 67 6d 74 73 3a 22 20 2b 20 22 57 69 6e 33 32 5f 50 72 6f 22 20 2b 20 22 63 65 73 73 22 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_6 = {2b 20 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 90 02 09 2e 43 61 70 74 69 6f 6e 20 2b 20 90 02 09 29 90 00 } //1
		$a_01_7 = {53 68 6f 77 57 69 6e 64 6f 77 21 20 5f } //1 ShowWindow! _
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_01_7  & 1)*1) >=3
 
}