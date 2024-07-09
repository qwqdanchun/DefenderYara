
rule TrojanDownloader_O97M_Obfuse_GO{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GO,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 04 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //1 Sub AutoOpen()
		$a_03_1 = {2e 52 75 6e 25 20 28 [0-20] 2e 54 65 78 74 20 5f } //2
		$a_01_2 = {3d 20 56 42 41 2e 20 5f } //1 = VBA. _
		$a_01_3 = {2e 54 65 78 74 } //1 .Text
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*2+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=5
 
}