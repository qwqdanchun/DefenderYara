
rule TrojanDownloader_O97M_Obfuse_OY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.OY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {4f 50 4f 50 4f 54 41 4d 49 4b 55 53 45 20 3d 20 4f 50 4f 50 4f 54 41 4d 49 4b 55 53 45 20 2b 20 90 02 15 20 2a 20 49 6e 74 28 90 02 15 20 2b 20 90 02 15 20 2a 20 4c 69 74 65 29 90 00 } //1
		$a_03_1 = {53 65 74 20 61 20 3d 20 66 73 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 63 3a 5c 90 02 30 2e 62 61 74 22 2c 20 54 72 75 65 29 90 00 } //1
		$a_03_2 = {2e 57 72 69 74 65 4c 69 6e 65 20 28 22 90 02 12 2e 65 78 65 5e 22 29 90 00 } //1
		$a_01_3 = {3d 20 4c 20 26 20 22 7c 22 20 26 20 42 20 26 20 22 7c 22 20 26 20 52 } //1 = L & "|" & B & "|" & R
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}