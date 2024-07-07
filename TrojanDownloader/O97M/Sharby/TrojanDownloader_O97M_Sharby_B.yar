
rule TrojanDownloader_O97M_Sharby_B{
	meta:
		description = "TrojanDownloader:O97M/Sharby.B,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_02_1 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 73 3a 2f 2f 90 02 50 22 2c 20 46 61 6c 73 65 90 00 } //1
		$a_02_2 = {53 65 74 20 77 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 08 29 90 00 } //1
		$a_02_3 = {66 69 6c 65 5f 64 6f 63 20 3d 20 77 53 68 65 6c 6c 2e 45 78 70 61 6e 64 45 6e 76 69 72 6f 6e 6d 65 6e 74 53 74 72 69 6e 67 73 28 22 25 74 65 6d 70 25 22 29 20 26 20 22 90 02 10 2e 64 6f 63 22 90 00 } //1
		$a_02_4 = {3d 20 77 53 68 65 6c 6c 2e 52 75 6e 28 90 02 08 20 2b 20 66 69 6c 65 5f 64 6f 63 20 2b 20 22 22 22 22 2c 20 30 2c 20 54 72 75 65 29 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_02_4  & 1)*1) >=5
 
}