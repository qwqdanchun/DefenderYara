
rule TrojanDownloader_O97M_Obfuse_RVAF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVAF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 57 53 43 72 69 70 74 2e 73 68 65 6c 6c 22 } //01 00  = "WSCript.shell"
		$a_01_1 = {69 6f 79 75 6b 69 75 28 31 38 33 29 20 26 20 69 6f 79 75 6b 69 75 28 31 39 33 29 20 26 20 69 6f 79 75 6b 69 75 28 31 38 34 29 20 26 20 69 6f 79 75 6b 69 75 28 31 34 38 29 20 26 20 69 6f 79 75 6b 69 75 28 31 36 33 29 20 26 20 69 6f 79 75 6b 69 75 28 32 31 35 29 20 26 20 69 6f 79 75 6b 69 75 28 31 34 38 29 20 26 20 69 6f 79 75 6b 69 75 28 32 32 38 29 20 26 20 69 6f 79 75 6b 69 75 28 31 39 35 29 20 26 20 69 6f 79 75 6b 69 75 28 32 31 30 29 20 26 20 69 6f 79 75 6b 69 75 28 32 33 35 29 } //01 00  ioyukiu(183) & ioyukiu(193) & ioyukiu(184) & ioyukiu(148) & ioyukiu(163) & ioyukiu(215) & ioyukiu(148) & ioyukiu(228) & ioyukiu(195) & ioyukiu(210) & ioyukiu(235)
		$a_01_2 = {69 6f 79 75 6b 69 75 20 3d 20 43 68 72 28 63 64 73 73 66 20 2d 20 31 31 36 29 } //01 00  ioyukiu = Chr(cdssf - 116)
		$a_03_3 = {2e 52 75 6e 28 90 02 1f 2c 20 90 02 1f 29 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}