
rule TrojanDownloader_BAT_Runtk_A{
	meta:
		description = "TrojanDownloader:BAT/Runtk.A,SIGNATURE_TYPE_PEHSTR_EXT,0e 00 0e 00 05 00 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 64 00 6f 00 63 00 73 00 2e 00 67 00 6f 00 6f 00 67 00 6c 00 65 00 2e 00 63 00 6f 00 6d 00 2f 00 75 00 63 00 3f 00 61 00 75 00 74 00 68 00 75 00 73 00 65 00 72 00 3d 00 30 00 26 00 69 00 64 00 3d 00 [0-20] 5f 00 [0-40] 26 00 65 00 78 00 70 00 6f 00 72 00 74 00 3d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 } //5
		$a_03_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 [0-40] 2e 00 74 00 6b 00 2f 00 69 00 70 00 2e 00 70 00 68 00 70 00 3f 00 65 00 78 00 3d 00 } //5
		$a_03_2 = {69 00 6d 00 61 00 67 00 65 00 [0-10] 2e 00 65 00 78 00 65 00 } //2
		$a_01_3 = {2e 00 70 00 6e 00 67 00 2e 00 65 00 78 00 65 00 90 00 00 00 } //2
		$a_01_4 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //2 DownloadString
	condition:
		((#a_03_0  & 1)*5+(#a_03_1  & 1)*5+(#a_03_2  & 1)*2+(#a_01_3  & 1)*2+(#a_01_4  & 1)*2) >=14
 
}