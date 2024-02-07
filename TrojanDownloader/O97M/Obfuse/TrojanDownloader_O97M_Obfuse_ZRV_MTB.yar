
rule TrojanDownloader_O97M_Obfuse_ZRV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.ZRV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 66 77 63 74 62 7a 76 2e 52 75 6e 28 7a 72 76 78 65 78 72 2c 20 6d 76 66 7a 7a 78 61 29 } //01 00  cfwctbzv.Run(zrvxexr, mvfzzxa)
		$a_01_1 = {70 6c 73 70 78 69 6a 6f 62 6b 6c 64 20 3d 20 22 57 53 43 72 69 70 74 2e 73 68 65 6c 6c 22 } //01 00  plspxijobkld = "WSCript.shell"
		$a_01_2 = {65 61 67 61 20 3d 20 63 64 73 28 32 30 36 29 20 26 20 63 64 73 28 31 38 34 29 20 26 20 63 64 73 28 32 30 37 29 20 26 20 63 64 73 28 31 33 39 29 20 26 20 63 64 73 28 31 35 34 29 20 26 20 63 64 73 28 31 37 34 29 20 26 20 63 64 73 28 31 33 39 29 20 26 20 63 64 73 28 32 31 39 29 20 26 20 63 64 73 28 32 30 31 29 20 26 20 63 64 73 28 31 38 36 29 20 26 20 63 64 73 28 31 39 34 29 20 26 20 63 64 73 28 32 30 31 29 20 26 20 63 64 73 28 31 37 36 29 } //01 00  eaga = cds(206) & cds(184) & cds(207) & cds(139) & cds(154) & cds(174) & cds(139) & cds(219) & cds(201) & cds(186) & cds(194) & cds(201) & cds(176)
		$a_01_3 = {63 64 73 20 3d 20 43 68 72 28 76 64 20 2d 20 31 30 37 29 } //00 00  cds = Chr(vd - 107)
	condition:
		any of ($a_*)
 
}