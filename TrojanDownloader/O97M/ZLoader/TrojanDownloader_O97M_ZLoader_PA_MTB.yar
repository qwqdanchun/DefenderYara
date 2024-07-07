
rule TrojanDownloader_O97M_ZLoader_PA_MTB{
	meta:
		description = "TrojanDownloader:O97M/ZLoader.PA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {63 00 4d 00 44 00 2e 00 65 00 58 00 65 00 20 00 20 00 2f 00 63 00 20 00 50 00 4f 00 77 00 45 00 72 00 73 00 68 00 65 00 4c 00 4c 00 2e 00 45 00 78 00 65 00 20 00 20 00 2d 00 65 00 58 00 20 00 42 00 59 00 70 00 41 00 53 00 53 00 20 00 2d 00 4e 00 4f 00 70 00 20 00 2d 00 77 00 20 00 31 00 20 00 69 00 45 00 58 00 28 00 20 00 43 00 55 00 52 00 6c 00 90 02 04 28 00 27 00 68 00 74 74 00 70 00 3a 00 2f 00 2f 00 34 00 35 00 2e 00 31 00 35 00 33 00 2e 00 32 00 30 00 33 00 2e 00 35 00 34 00 2f 00 44 00 6f 00 63 00 32 00 32 00 41 00 2e 00 6a 00 90 02 08 70 00 90 02 08 67 00 90 00 } //1
		$a_03_1 = {63 4d 44 2e 65 58 65 20 20 2f 63 20 50 4f 77 45 72 73 68 65 4c 4c 2e 45 78 65 20 20 2d 65 58 20 42 59 70 41 53 53 20 2d 4e 4f 70 20 2d 77 20 31 20 69 45 58 28 20 43 55 52 6c 90 02 04 28 27 68 74 74 70 3a 2f 2f 34 35 2e 31 35 33 2e 32 30 33 2e 35 34 2f 44 6f 63 32 32 41 2e 6a 90 02 08 70 90 02 08 67 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}