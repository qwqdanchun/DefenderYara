
rule TrojanDownloader_BAT_BrobanDel_A{
	meta:
		description = "TrojanDownloader:BAT/BrobanDel.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 08 00 00 "
		
	strings :
		$a_01_0 = {43 3a 5c 64 6f 77 6e 6c 6f 61 64 73 5c } //1 C:\downloads\
		$a_01_1 = {64 6f 77 6e 6c 6f 61 64 65 72 2e 65 78 65 } //1 downloader.exe
		$a_01_2 = {44 65 63 72 69 70 74 61 72 00 48 65 78 79 00 43 72 79 70 74 } //1 敄牣灩慴r效祸䌀祲瑰
		$a_03_3 = {5c 00 61 00 2e 00 64 00 6c 00 6c 00 [0-06] 77 00 69 00 6e 00 64 00 69 00 72 00 } //1
		$a_01_4 = {36 00 39 00 36 00 46 00 36 00 45 00 35 00 43 00 35 00 43 00 35 00 32 00 37 00 35 00 36 00 45 00 } //1 696F6E5C5C52756E
		$a_03_5 = {5c 00 67 00 62 00 70 00 6c 00 75 00 67 00 69 00 6e 00 [0-10] 75 00 73 00 65 00 72 00 6e 00 61 00 6d 00 65 00 } //1
		$a_01_6 = {35 00 43 00 36 00 37 00 36 00 32 00 36 00 33 00 36 00 43 00 36 00 31 00 37 00 33 00 37 00 33 00 33 00 32 00 32 00 45 00 36 00 34 00 36 00 43 00 36 00 43 00 } //1 5C6762636C617373322E646C6C
		$a_03_7 = {6c 00 69 00 6e 00 6b 00 3d [0-08] 64 00 6e 00 73 00 3d [0-08] 5c 00 61 00 2e 00 64 00 6c 00 6c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_03_5  & 1)*1+(#a_01_6  & 1)*1+(#a_03_7  & 1)*1) >=3
 
}