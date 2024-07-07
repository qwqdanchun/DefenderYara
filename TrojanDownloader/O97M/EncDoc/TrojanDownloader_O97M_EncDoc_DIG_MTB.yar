
rule TrojanDownloader_O97M_EncDoc_DIG_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.DIG!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {2f 64 73 2f 30 32 31 32 32 30 26 43 35 31 } //1 /ds/021220&C51
		$a_01_1 = {63 68 74 66 6a 2e 64 6c 6c } //1 chtfj.dll
		$a_03_2 = {43 3a 5c 67 6e 62 66 74 5c 90 02 04 67 69 66 90 00 } //1
		$a_01_3 = {4a 4a 43 43 4a 4a } //1 JJCCJJ
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}