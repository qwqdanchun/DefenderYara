
rule TrojanDownloader_O97M_Obfuse_DN{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DN,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 "
		
	strings :
		$a_03_0 = {3d 20 47 65 74 4f 62 6a 65 63 74 28 90 02 10 20 2b 20 90 02 10 20 2b 20 90 02 10 29 2e 43 72 65 61 74 65 90 01 01 28 28 90 00 } //2
		$a_03_1 = {2b 20 22 77 22 20 2b 20 90 02 10 20 2b 20 22 69 6e 6d 67 6d 74 22 20 2b 20 22 73 3a 57 69 6e 33 32 5f 50 72 22 20 2b 20 22 6f 63 65 73 73 53 74 61 72 74 75 70 22 90 00 } //1
		$a_03_2 = {2b 20 22 77 22 20 2b 20 90 02 10 20 2b 20 22 69 6e 6d 67 6d 74 22 20 2b 20 22 73 3a 57 69 6e 33 32 5f 50 72 22 20 2b 20 22 6f 63 65 73 73 53 74 22 20 2b 20 22 61 72 74 75 70 22 90 00 } //1
		$a_03_3 = {2b 20 22 69 6e 6d 67 6d 74 22 20 2b 20 90 02 10 20 2b 20 22 73 3a 57 69 6e 33 32 5f 50 72 22 20 2b 20 22 6f 63 65 73 73 53 74 22 20 2b 20 22 61 72 74 75 70 22 90 00 } //1
		$a_03_4 = {2b 20 22 77 69 22 20 2b 20 90 02 10 29 20 2b 20 22 6e 6d 22 20 2b 20 22 67 6d 74 22 20 2b 20 90 02 10 20 2b 20 22 73 3a 57 69 6e 33 32 5f 50 72 22 20 2b 20 22 6f 63 65 73 73 53 74 22 20 2b 20 22 61 72 74 75 70 22 90 00 } //1
	condition:
		((#a_03_0  & 1)*2+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=3
 
}