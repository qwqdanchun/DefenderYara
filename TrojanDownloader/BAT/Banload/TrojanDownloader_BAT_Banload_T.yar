
rule TrojanDownloader_BAT_Banload_T{
	meta:
		description = "TrojanDownloader:BAT/Banload.T,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {66 00 75 00 63 00 6b 00 65 00 72 00 ?? ?? ?? ?? 23 00 } //1
		$a_03_1 = {66 75 63 6b 65 72 ?? ?? ?? ?? 23 } //1
		$a_01_2 = {66 00 6c 00 61 00 73 00 68 00 70 00 2e 00 65 00 78 00 65 00 } //1 flashp.exe
		$a_01_3 = {67 00 6f 00 72 00 64 00 6f 00 2e 00 7a 00 69 00 70 00 } //1 gordo.zip
		$a_03_4 = {72 01 00 00 70 0a 72 ?? 00 00 70 0b 72 ?? 00 00 70 0c 72 ?? 00 00 70 0d 1f 1a 28 01 00 00 0a 13 04 20 30 75 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}
rule TrojanDownloader_BAT_Banload_T_2{
	meta:
		description = "TrojanDownloader:BAT/Banload.T,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_01_0 = {66 00 6c 00 61 00 73 00 68 00 70 00 2e 00 65 00 78 00 65 00 } //1 flashp.exe
		$a_01_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 46 00 69 00 6c 00 65 00 } //1 DownloadFile
		$a_01_2 = {5c 00 75 00 6e 00 7a 00 69 00 70 00 2e 00 65 00 78 00 65 00 } //1 \unzip.exe
		$a_01_3 = {42 00 61 00 36 00 57 00 6b 00 77 00 55 00 6d 00 6b 00 66 00 76 00 30 00 72 00 33 00 41 00 72 00 34 00 4c 00 33 00 51 00 31 00 67 00 3d 00 3d 00 } //1 Ba6WkwUmkfv0r3Ar4L3Q1g==
		$a_01_4 = {62 00 61 00 6c 00 65 00 69 00 61 00 2e 00 7a 00 69 00 70 00 } //1 baleia.zip
		$a_01_5 = {6d 00 6f 00 6c 00 64 00 65 00 2e 00 7a 00 69 00 70 00 } //1 molde.zip
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}
rule TrojanDownloader_BAT_Banload_T_3{
	meta:
		description = "TrojanDownloader:BAT/Banload.T,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 08 00 00 "
		
	strings :
		$a_01_0 = {75 72 6c 64 61 6b 6c } //1 urldakl
		$a_03_1 = {6e 6f 6d 65 64 (6f 7a 69 70|61 6b 6c) } //1
		$a_01_2 = {75 00 6e 00 7a 00 69 00 70 00 2e 00 65 00 78 00 65 00 } //1 unzip.exe
		$a_03_3 = {66 00 75 00 63 00 6b 00 65 00 72 00 ?? ?? ?? ?? 23 00 } //2
		$a_03_4 = {66 75 63 6b 65 72 ?? ?? ?? ?? 23 } //2
		$a_03_5 = {6d 00 6f 00 64 00 2e 00 7a 00 69 00 70 00 [0-04] 68 00 74 00 74 00 70 00 } //2
		$a_03_6 = {66 00 6c 00 61 00 73 00 68 00 70 00 [0-10] 44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //2
		$a_03_7 = {0a 02 02 fe 06 ?? 00 00 06 73 ?? 00 00 0a 28 ?? 00 00 0a [0-01] 02 1f 1a 28 ?? 00 00 0a 7d 01 00 00 04 02 72 01 00 00 70 7d 02 00 00 04 02 72 ?? 00 00 70 7d 03 00 00 04 02 72 ?? 00 00 70 7d 04 00 00 04 02 72 ?? 00 00 70 7d 05 00 00 04 02 } //2
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*2+(#a_03_4  & 1)*2+(#a_03_5  & 1)*2+(#a_03_6  & 1)*2+(#a_03_7  & 1)*2) >=4
 
}