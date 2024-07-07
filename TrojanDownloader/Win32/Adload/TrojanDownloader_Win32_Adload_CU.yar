
rule TrojanDownloader_Win32_Adload_CU{
	meta:
		description = "TrojanDownloader:Win32/Adload.CU,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {50 72 6f 64 75 63 74 4e 61 6d 65 90 02 30 77 69 6e 64 6f 77 73 20 37 90 02 10 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 41 68 6e 4c 61 62 5c 56 33 4c 69 74 65 5c 56 33 4c 69 67 68 74 2e 65 78 65 90 02 10 3a 5c 50 72 6f 67 72 61 6d 20 46 69 6c 65 73 5c 4e 61 76 65 72 5c 4e 61 76 65 72 56 61 63 63 69 6e 65 5c 4e 56 43 55 70 67 72 61 64 65 72 2e 65 78 65 90 00 } //1
		$a_03_1 = {74 07 c7 45 90 01 01 04 00 00 00 b8 90 01 04 e8 90 01 04 84 c0 74 07 c7 45 90 01 01 04 00 00 00 90 00 } //1
		$a_03_2 = {83 f8 02 7d 90 01 01 68 90 01 04 ff 75 90 01 01 68 90 02 30 8d 55 90 01 01 b8 90 01 04 e8 90 01 04 ff 75 90 01 01 8d 45 90 01 01 ba 90 01 01 00 00 00 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}