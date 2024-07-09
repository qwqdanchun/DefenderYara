
rule TrojanDownloader_O97M_Emotet_SAI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SAI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 [0-20] 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-20] 28 22 5d 61 6e 77 5b 33 53 63 5d 61 6e 77 5b 33 72 69 70 74 69 5d 61 6e 77 5b 33 6e 67 2e 46 69 6c 5d 61 6e 77 5b 33 65 53 79 73 74 5d 61 6e 77 5b 33 65 6d 4f 62 5d 61 6e 77 5b 33 6a 65 63 74 5d 61 6e 77 5b 33 22 29 29 } //1
		$a_03_1 = {2e 53 74 6f 72 79 52 61 6e 67 65 73 2e 49 74 65 6d 28 32 20 2f 20 32 29 20 2b 20 [0-20] 47 6f 54 6f 20 [0-15] 44 69 6d } //1
		$a_03_2 = {53 65 74 20 [0-20] 20 3d 20 [0-20] 2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 22 [0-10] 3a 5c [0-10] 5c [0-10] 2e [0-10] 22 29 [0-20] 2e 57 72 69 74 65 4c 69 6e 65 20 22 [0-20] 22 [0-20] 2e 57 72 69 74 65 4c 69 6e 65 20 22 [0-20] 22 [0-20] 2e 57 72 69 74 65 4c 69 6e 65 20 22 [0-20] 22 } //1
		$a_03_3 = {45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 0c 02 00 46 75 6e 63 74 69 6f 6e 20 [0-20] 28 [0-20] 29 90 0c 02 00 4f 6e 20 45 72 72 6f 72 20 52 65 73 75 6d 65 20 4e 65 78 74 [0-10] 47 6f 54 6f 20 [0-10] 44 69 6d } //1
		$a_03_4 = {2e 43 72 65 61 74 65 20 [0-20] 28 [0-20] 29 2c 20 [0-20] 2c } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1) >=5
 
}