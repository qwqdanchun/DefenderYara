
rule TrojanDownloader_O97M_Donoff_BSM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.BSM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {33 2e 36 35 2e 32 2e 31 33 39 2f 90 02 1f 2e 65 78 65 22 22 20 2d 4f 75 74 46 69 6c 65 20 24 54 65 6d 70 46 69 6c 65 3b 20 53 74 61 72 74 2d 50 72 6f 63 65 73 73 20 24 54 65 6d 70 46 69 6c 65 3b 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}