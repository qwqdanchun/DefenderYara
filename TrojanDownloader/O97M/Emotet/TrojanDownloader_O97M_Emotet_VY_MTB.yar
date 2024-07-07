
rule TrojanDownloader_O97M_Emotet_VY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.VY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 05 00 00 "
		
	strings :
		$a_03_0 = {43 61 6c 6c 20 90 02 20 2e 20 5f 90 0c 02 00 43 72 65 61 74 65 28 90 02 20 2e 90 02 30 20 2b 20 90 02 20 20 2b 20 90 02 20 2c 90 00 } //1
		$a_03_1 = {43 61 6c 6c 20 90 02 20 2e 20 5f 90 0c 02 00 43 72 65 61 74 65 28 4e 6f 4c 69 6e 65 42 72 65 61 6b 41 66 74 65 72 20 2b 20 90 02 20 20 2b 20 90 02 10 2c 20 90 02 20 2c 20 90 02 15 29 90 00 } //1
		$a_03_2 = {3d 20 53 70 6c 69 74 28 90 02 20 2c 20 22 90 02 15 22 29 90 00 } //1
		$a_03_3 = {73 68 6f 77 77 69 6e 64 6f 77 20 3d 20 90 02 20 20 2b 90 00 } //1
		$a_01_4 = {2e 50 61 67 65 73 28 30 29 2e 43 61 70 74 69 6f 6e } //1 .Pages(0).Caption
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1) >=4
 
}