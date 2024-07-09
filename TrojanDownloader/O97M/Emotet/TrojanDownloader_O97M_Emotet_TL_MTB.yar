
rule TrojanDownloader_O97M_Emotet_TL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.TL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {44 6f 20 57 68 69 6c 65 20 [0-18] 2e 43 72 65 61 74 65 28 [0-18] 20 26 20 90 05 0f 06 41 2d 5a 61 2d 7a 2c } //1
		$a_03_1 = {2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 20 2b 20 90 05 0f 06 41 2d 5a 61 2d 7a 2e } //1
		$a_03_2 = {2b 20 43 68 72 28 90 05 0f 06 41 2d 5a 61 2d 7a 2e } //1
		$a_03_3 = {3d 20 53 70 6c 69 74 28 22 [0-15] 77 [0-25] 22 20 2b 20 70 73 2c 20 73 6b 6b 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}