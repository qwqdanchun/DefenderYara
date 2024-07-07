
rule TrojanDownloader_Win32_VB_LP{
	meta:
		description = "TrojanDownloader:Win32/VB.LP,SIGNATURE_TYPE_PEHSTR,05 00 04 00 05 00 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 2f 00 00 00 } //1
		$a_01_1 = {65 58 74 72 61 6c 6f 31 00 ff 15 00 53 48 44 6f 63 56 77 43 74 6c 2e 57 65 62 42 72 6f 77 73 65 72 00 } //1
		$a_01_2 = {75 68 72 6e 62 62 6d 34 37 65 68 69 36 79 6c 7a 70 76 68 71 6b 38 79 33 67 36 6b 61 31 36 31 31 78 30 34 6e 6b 77 72 37 69 6c 66 39 6b 38 6a 38 79 63 00 } //1
		$a_01_3 = {61 7a 35 69 36 35 39 74 6b 39 62 70 70 6c 78 74 73 6a 76 36 72 7a 71 33 6d 6e 33 63 36 37 66 6d 6a 72 77 79 6b 73 71 74 78 7a 66 37 75 6c 73 76 74 77 00 } //1
		$a_01_4 = {67 32 36 70 33 70 6f 70 6a 36 36 34 7a 39 79 6e 6e 68 6e 69 6e 77 30 39 77 34 32 32 61 71 34 63 36 33 6c 69 79 31 31 76 61 33 73 79 34 76 34 33 79 74 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}