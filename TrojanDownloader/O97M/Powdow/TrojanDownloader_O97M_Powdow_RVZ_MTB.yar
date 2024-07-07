
rule TrojanDownloader_O97M_Powdow_RVZ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVZ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_01_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 0d 0a 20 20 20 20 53 65 74 20 73 61 79 20 3d 20 77 73 68 2e 65 78 65 63 28 73 75 67 61 72 29 2e 73 74 64 6f 75 74 } //1
		$a_03_1 = {3d 20 22 68 74 74 70 73 3a 2f 2f 90 02 1e 2f 52 53 41 5f 4b 45 59 2e 70 68 70 22 0d 0a 20 20 20 20 90 02 06 2e 4f 70 65 6e 20 22 50 4f 53 54 22 2c 20 90 02 06 2c 20 46 61 6c 73 65 90 00 } //1
		$a_01_2 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 0d 0a 20 20 20 20 78 4c 69 73 74 20 3d 20 41 72 72 61 79 28 22 69 70 63 6f 6e 66 69 67 20 2f 61 6c 6c 22 2c 20 22 6e 65 74 20 75 73 65 72 22 2c } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}