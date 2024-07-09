
rule TrojanDownloader_O97M_Powdow_STBW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.STBW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 3a 2f 2f 77 77 77 2e 70 72 79 6e 74 73 74 65 61 6c 65 72 2e 63 6f 6d 2f 62 75 69 6c 64 73 2f 62 75 69 6c 64 2e 65 78 65 22 22 20 [0-1f] 2e 65 78 65 2e 65 78 65 20 26 26 20 [0-1f] 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}