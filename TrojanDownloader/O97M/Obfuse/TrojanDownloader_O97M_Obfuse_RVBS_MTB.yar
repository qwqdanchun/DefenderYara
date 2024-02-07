
rule TrojanDownloader_O97M_Obfuse_RVBS_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVBS!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {67 65 74 6f 62 6a 65 63 74 28 22 77 90 02 14 3a 22 29 2e 67 65 74 28 6d 69 64 28 73 74 72 61 72 67 2c 31 2c 31 33 29 29 2e 63 72 65 61 74 65 6d 69 64 28 73 74 72 61 72 67 2c 31 34 29 90 00 } //01 00 
		$a_01_1 = {70 6f 69 6c 28 22 33 36 32 34 37 33 33 31 35 34 31 30 32 36 38 33 36 39 34 36 36 33 31 38 34 31 33 34 36 32 32 35 36 33 30 37 33 35 39 34 30 35 35 30 35 33 36 30 34 35 39 22 29 } //01 00  poil("362473315410268369466318413462256307359405505360459")
		$a_01_2 = {3d 63 68 72 28 63 69 6e 74 28 63 29 2d 32 35 36 29 } //01 00  =chr(cint(c)-256)
		$a_01_3 = {61 75 74 6f 6f 70 65 6e 28 29 61 6e 75 73 5f 64 65 5f 63 75 6c 65 6e 64 73 75 62 } //00 00  autoopen()anus_de_culendsub
	condition:
		any of ($a_*)
 
}