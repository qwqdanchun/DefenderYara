
rule TrojanDownloader_O97M_Obfuse_GQ{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GQ,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 [0-21] 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 [0-21] 28 31 29 29 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 20 [0-21] 28 30 29 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c 2c 20 4e 75 6c 6c } //1
		$a_03_2 = {43 61 6c 6c 20 [0-20] 28 53 70 6c 69 74 28 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 28 [0-07] 29 2e 52 61 6e 67 65 28 [0-07] 29 2e 56 61 6c 75 65 2c 20 43 68 72 28 [0-02] 29 29 29 } //2
		$a_03_3 = {43 61 6c 6c 20 [0-14] 28 53 70 6c 69 74 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 [0-27] 29 2e 56 61 6c 75 65 2c 20 43 68 72 28 34 34 29 29 29 } //2
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*2+(#a_03_3  & 1)*2) >=4
 
}