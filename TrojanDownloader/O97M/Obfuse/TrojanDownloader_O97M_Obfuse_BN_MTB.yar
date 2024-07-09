
rule TrojanDownloader_O97M_Obfuse_BN_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.BN!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-3c] 28 22 34 64 20 36 39 20 36 33 20 37 32 20 36 66 20 37 33 20 36 66 20 36 36 20 37 34 20 32 65 20 35 38 20 34 64 20 34 63 20 34 38 20 35 34 20 35 34 20 35 30 22 29 29 } //1
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-3c] 28 22 35 37 20 35 33 20 36 33 20 37 32 20 36 39 20 37 30 20 37 34 20 32 65 20 35 33 20 36 38 20 36 35 20 36 63 20 36 63 22 29 29 } //1
		$a_01_2 = {28 22 34 33 20 33 61 20 35 63 20 35 35 20 37 33 20 36 35 20 37 32 20 37 33 20 35 63 20 35 30 20 37 35 20 36 32 20 36 63 20 36 39 20 36 33 20 35 63 20 36 39 20 36 32 20 37 38 20 36 44 20 36 31 20 36 36 20 36 32 20 36 44 20 36 34 20 32 65 20 36 35 20 37 38 20 36 35 22 29 } //1 ("43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 69 62 78 6D 61 66 62 6D 64 2e 65 78 65")
		$a_01_3 = {36 38 20 37 34 20 37 34 20 37 30 20 37 33 20 33 41 20 32 46 20 32 46 20 36 42 20 36 45 20 36 39 20 37 34 20 37 41 20 36 46 20 36 45 20 36 35 20 36 37 20 37 32 20 36 46 20 37 35 20 37 30 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 37 41 20 36 31 20 36 36 20 36 31 20 37 32 20 32 45 20 36 35 20 37 38 20 36 35 } //1 68 74 74 70 73 3A 2F 2F 6B 6E 69 74 7A 6F 6E 65 67 72 6F 75 70 2E 63 6F 6D 2F 7A 61 66 61 72 2E 65 78 65
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}