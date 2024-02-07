
rule TrojanDownloader_O97M_Ursnif_BH_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.BH!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 } //01 00  = Environ("tmp")
		$a_03_1 = {2e 52 75 6e 20 53 74 72 52 65 76 65 72 73 65 28 22 90 02 15 22 29 20 26 20 22 20 22 20 26 20 90 02 15 2c 20 77 69 6e 64 6f 77 53 74 79 6c 65 2c 90 00 } //01 00 
		$a_01_2 = {2e 63 72 65 61 74 65 45 6c 65 6d 65 6e 74 28 22 62 36 34 22 29 } //01 00  .createElement("b64")
		$a_01_3 = {3d 20 22 62 69 6e 2e 62 61 73 65 36 34 22 } //01 00  = "bin.base64"
		$a_01_4 = {2e 74 65 78 74 2e 74 65 78 74 29 } //01 00  .text.text)
		$a_03_5 = {44 65 62 75 67 2e 50 72 69 6e 74 20 45 72 72 6f 72 28 90 02 15 29 90 0c 02 00 4e 65 78 74 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}