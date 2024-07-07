
rule TrojanDownloader_Win32_Dofoil_U_{
	meta:
		description = "TrojanDownloader:Win32/Dofoil.U!!Dofoil.gen!A,SIGNATURE_TYPE_ARHSTR_EXT,03 00 03 00 0c 00 00 "
		
	strings :
		$a_01_0 = {32 28 c1 c1 08 32 cd 40 80 38 00 75 f3 } //1
		$a_01_1 = {66 c7 07 57 6f 66 c7 47 02 72 6b } //1
		$a_01_2 = {ac 32 c2 aa e2 fa } //1
		$a_01_3 = {c7 45 fc 43 3a 5c 00 8d 45 fc 8d 4d f8 56 56 56 56 51 68 80 00 00 00 56 50 ff 15 } //1
		$a_01_4 = {83 c0 04 8b 00 89 45 fc 8b 45 fc 35 de c0 ad de } //1
		$a_01_5 = {8a 1b 32 1e 88 5c 24 04 2a 4c 24 04 33 db 8a d8 03 1c 24 4b 88 0b } //1
		$a_03_6 = {b8 5a 00 00 00 e8 44 90 01 04 04 20 88 04 37 46 4b 75 ed 90 00 } //1
		$a_01_7 = {68 72 6b 00 00 68 00 00 57 6f 89 e6 } //1
		$a_01_8 = {81 3c 24 40 1a cd 00 74 09 81 3c 24 46 46 14 70 75 05 } //1
		$a_00_9 = {25 64 23 25 73 23 25 73 23 25 64 2e 25 64 23 25 64 23 25 64 23 25 64 23 25 64 23 25 } //1 %d#%s#%s#%d.%d#%d#%d#%d#%d#%
		$a_00_10 = {00 73 76 63 56 65 72 73 69 6f 6e 00 } //1 猀捶敖獲潩n
		$a_00_11 = {00 70 6c 75 67 69 6e 5f 73 69 7a 65 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_03_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1) >=3
 
}