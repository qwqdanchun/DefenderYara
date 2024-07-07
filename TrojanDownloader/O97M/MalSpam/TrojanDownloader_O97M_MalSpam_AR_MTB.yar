
rule TrojanDownloader_O97M_MalSpam_AR_MTB{
	meta:
		description = "TrojanDownloader:O97M/MalSpam.AR!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 03 00 00 "
		
	strings :
		$a_03_0 = {4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 3a 20 57 53 63 72 69 70 74 2e 51 75 69 74 20 3d 20 28 22 22 20 26 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 28 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 29 29 2e 52 75 6e 28 28 90 02 08 29 2c 20 28 90 02 01 29 2c 20 28 30 29 29 29 3a 20 57 53 63 72 69 70 74 2e 51 75 69 74 3a 20 4d 73 67 42 6f 78 20 22 22 3a 20 41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 43 6c 6f 73 65 20 46 61 6c 73 65 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //1
		$a_03_1 = {4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 3a 20 57 53 63 72 69 70 74 2e 51 75 69 74 20 3d 20 28 22 22 20 26 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 28 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 29 29 2e 52 75 6e 28 28 90 02 05 29 2c 20 28 30 29 2c 20 28 30 29 29 29 3a 20 57 53 63 72 69 70 74 2e 51 75 69 74 3a 20 41 63 74 69 76 65 57 6f 72 6b 62 6f 6f 6b 2e 43 6c 6f 73 65 20 46 61 6c 73 65 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //1
		$a_03_2 = {3d 20 52 61 6e 67 65 28 22 90 02 12 22 29 2e 53 70 65 63 69 61 6c 43 65 6c 6c 73 28 78 6c 43 6f 6e 73 74 61 6e 74 73 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=2
 
}