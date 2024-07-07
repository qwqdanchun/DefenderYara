
rule TrojanDownloader_O97M_Obfuse_KS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 04 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 22 20 2b 20 90 02 14 28 22 69 6e 5f 21 5f 5f 5f 5f 6d 5f 21 5f 5f 5f 5f 67 6d 5f 21 5f 5f 5f 5f 74 73 5f 21 5f 5f 5f 5f 3a 5f 21 5f 5f 5f 5f 57 5f 21 5f 5f 5f 5f 69 6e 5f 21 5f 5f 5f 5f 33 5f 21 5f 5f 5f 5f 32 5f 21 5f 5f 5f 5f 5f 5f 21 5f 5f 5f 5f 50 72 5f 21 5f 5f 5f 5f 6f 5f 21 5f 5f 5f 5f 5f 21 5f 5f 5f 5f 63 65 5f 21 5f 5f 5f 5f 73 5f 21 5f 5f 5f 5f 73 22 29 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 77 22 20 2b 20 90 02 14 28 22 69 6e 50 69 64 6f 72 6d 50 69 64 6f 72 67 6d 50 69 22 20 2b 20 22 64 6f 72 74 73 50 69 64 6f 72 3a 50 69 64 6f 72 57 50 69 64 6f 72 69 6e 50 69 64 22 20 2b 20 22 6f 72 33 50 69 64 6f 72 32 50 69 64 6f 72 5f 50 69 64 6f 72 50 22 20 2b 20 22 72 50 69 64 6f 72 6f 50 69 64 6f 72 50 69 64 6f 72 63 65 50 69 64 6f 72 73 50 69 64 6f 72 73 22 29 29 2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_2 = {28 54 68 69 73 44 6f 63 75 6d 65 6e 74 2e 90 02 14 29 20 2b 90 00 } //1
		$a_01_3 = {53 68 6f 77 57 69 6e 64 6f 77 21 20 5f } //1 ShowWindow! _
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=3
 
}