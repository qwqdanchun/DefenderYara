
rule TrojanDownloader_O97M_Obfuse_RVK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {47 65 74 4f 62 6a 65 63 74 28 4e 75 74 73 28 22 31 33 36 31 32 32 31 32 37 31 32 36 31 32 30 31 32 36 31 33 33 31 33 32 30 37 35 22 29 29 } //01 00  GetObject(Nuts("136122127126120126133132075"))
		$a_00_1 = {41 6c 6d 6f 6e 64 73 20 3d 20 52 69 67 68 74 28 4a 65 6c 6c 79 2c 20 4c 65 6e 28 4a 65 6c 6c 79 29 20 2d 20 33 29 } //01 00  Almonds = Right(Jelly, Len(Jelly) - 3)
		$a_00_2 = {50 65 61 72 73 20 3d 20 43 68 72 28 42 65 65 74 73 20 2d 20 31 37 29 } //01 00  Pears = Chr(Beets - 17)
		$a_00_3 = {4c 6f 6f 70 20 57 68 69 6c 65 20 4c 65 6e 28 4d 69 6c 6b 29 20 3e 20 30 } //01 00  Loop While Len(Milk) > 0
		$a_00_4 = {47 65 74 28 4e 75 74 73 28 22 31 30 34 31 32 32 31 32 37 30 36 38 30 36 37 31 31 32 30 39 37 31 33 31 31 32 38 31 31 36 31 31 38 31 33 32 31 33 32 22 29 29 2e 43 72 65 61 74 65 } //00 00  Get(Nuts("104122127068067112097131128116118132132")).Create
	condition:
		any of ($a_*)
 
}