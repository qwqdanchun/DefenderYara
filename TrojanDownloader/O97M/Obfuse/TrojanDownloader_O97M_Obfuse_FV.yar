
rule TrojanDownloader_O97M_Obfuse_FV{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.FV,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_03_1 = {43 61 6c 6c 20 [0-14] 2e 52 75 6e [0-01] 28 20 5f } //2
		$a_03_2 = {53 65 74 20 [0-10] 20 3d 20 56 42 41 2e 20 5f } //1
		$a_03_3 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 [0-14] 2e 54 65 78 74 29 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*2+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=5
 
}