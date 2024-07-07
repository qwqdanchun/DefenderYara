
rule TrojanDownloader_WinNT_Banload_R{
	meta:
		description = "TrojanDownloader:WinNT/Banload.R,SIGNATURE_TYPE_JAVAHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {73 71 75 69 72 72 65 6c 31 32 33 90 01 01 00 90 00 } //2
		$a_02_1 = {44 45 53 01 00 90 01 01 90 12 0f 00 2e 65 78 65 01 00 90 02 1f 53 79 6e 54 50 45 6e 68 53 65 72 76 69 63 65 2e 65 78 65 90 00 } //1
		$a_02_2 = {2f 52 61 6e 64 6f 6d 90 02 05 67 65 72 61 64 61 90 00 } //1
		$a_02_3 = {2e 63 6f 6d 90 03 03 01 2e 62 72 2f 6d 6f 64 90 02 09 2f 6d 6f 64 90 02 09 90 03 01 02 31 32 2e 64 61 74 90 02 9f 2e 63 6f 6d 90 03 03 01 2e 62 72 2f 6d 6f 64 90 02 09 2f 6d 6f 64 90 1d 0f 00 2e 64 61 74 90 00 } //1
		$a_02_4 = {68 74 74 70 3a 2f 2f 34 35 2e 90 02 2f 2e 64 61 74 90 02 0f 68 74 74 70 3a 2f 2f 34 35 2e 90 02 2f 32 2e 64 61 74 90 00 } //2
	condition:
		((#a_03_0  & 1)*2+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*2) >=4
 
}