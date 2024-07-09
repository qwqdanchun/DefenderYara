
rule TrojanDownloader_O97M_Obfuse_AV_eml{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.AV!eml,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_03_0 = {53 65 74 20 6f 62 6a 53 68 65 6c 6c 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-40] 28 22 48 41 53 4a 55 48 46 53 41 48 46 53 41 49 4a 55 46 48 53 41 4f 4c 53 41 22 2c 20 28 [0-45] 28 22 [0-24] 22 2c 20 22 36 22 29 29 29 } //1
		$a_03_1 = {6f 62 6a 53 68 65 6c 6c 2e 52 75 6e 20 28 [0-4b] 29 } //1
		$a_01_2 = {73 74 72 44 61 74 61 4f 75 74 20 3d 20 73 74 72 44 61 74 61 4f 75 74 20 2b 20 43 68 72 28 69 6e 74 58 4f 72 56 61 6c 75 65 31 20 58 6f 72 20 69 6e 74 58 4f 72 56 61 6c 75 65 32 29 } //1 strDataOut = strDataOut + Chr(intXOrValue1 Xor intXOrValue2)
		$a_03_3 = {4d 69 64 28 [0-3c] 2c 20 66 69 72 73 74 2c 20 31 29 20 3d 20 43 68 72 28 41 73 63 28 4d 69 64 28 90 1b 00 2c 20 66 69 72 73 74 2c 20 31 29 29 20 2d 20 73 65 63 6f 6e 64 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1) >=4
 
}