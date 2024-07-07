
rule TrojanDownloader_O97M_Remcos_DPD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Remcos.DPD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 90 02 05 28 29 29 73 65 74 90 02 05 3d 90 02 04 2e 6d 65 74 68 6f 64 73 5f 28 61 63 74 69 76 65 73 68 65 65 74 2e 70 61 67 65 73 65 74 75 70 2e 6c 65 66 74 68 65 61 64 65 72 29 2e 5f 90 00 } //1
		$a_03_1 = {3d 66 6b 6c 64 66 28 90 02 04 2c 90 02 05 29 65 6e 64 73 75 62 66 75 6e 63 74 69 6f 6e 90 00 } //1
		$a_03_2 = {2b 66 6a 6a 64 66 28 29 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 66 6b 6c 64 66 28 67 67 67 2c 66 38 64 66 30 30 29 73 65 74 73 6a 74 6e 3d 67 67 67 2e 65 78 65 63 6d 65 74 68 6f 64 5f 28 90 02 04 28 29 2c 66 38 64 66 30 30 29 65 6e 64 66 75 6e 63 74 69 6f 6e 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1) >=3
 
}