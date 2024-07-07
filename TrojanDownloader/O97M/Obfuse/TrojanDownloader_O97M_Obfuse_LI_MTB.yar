
rule TrojanDownloader_O97M_Obfuse_LI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {22 68 74 74 70 3a 2f 2f 31 30 37 2e 31 37 33 2e 32 31 39 2e 31 31 35 3a 34 35 36 30 2f 70 72 65 73 73 31 2e 65 78 65 22 20 26 20 5f } //1 "http://107.173.219.115:4560/press1.exe" & _
		$a_01_1 = {26 20 22 20 63 6d 64 20 22 20 26 20 22 2f 63 22 20 26 20 5f } //1 & " cmd " & "/c" & _
		$a_03_2 = {22 25 54 45 4d 50 25 5c 90 02 14 2e 65 78 65 22 20 26 20 5f 90 00 } //1
		$a_03_3 = {53 68 65 6c 6c 28 90 02 14 2c 20 52 69 67 68 74 28 52 69 67 68 74 28 4d 69 64 28 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}