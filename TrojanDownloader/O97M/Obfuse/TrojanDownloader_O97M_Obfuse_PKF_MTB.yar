
rule TrojanDownloader_O97M_Obfuse_PKF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PKF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 6c 61 6d 69 33 20 3d 20 22 74 22 20 2b 20 22 61 20 68 74 22 } //01 00  alami3 = "t" + "a ht"
		$a_01_1 = {75 62 75 6e 33 2e 54 61 67 } //01 00  ubun3.Tag
		$a_03_2 = {70 6f 77 65 72 31 20 3d 20 22 90 02 30 22 90 0c 02 00 6a 61 6e 77 61 72 20 3d 20 61 6c 61 6d 69 30 20 2b 20 61 6c 61 6d 69 31 20 2b 20 61 6c 61 6d 69 32 20 2b 20 61 6c 61 6d 69 33 20 2b 20 61 6c 61 6d 69 34 20 2b 20 6a 61 6e 77 61 72 33 20 2b 20 6a 61 6e 77 61 72 34 20 2b 20 70 6f 77 65 72 31 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_3 = {53 75 62 20 5f 90 0c 02 00 41 55 74 6f 5f 43 6c 4f 73 65 28 29 90 00 } //01 00 
		$a_01_4 = {67 61 6e 64 6f 2e 75 67 61 6e 64 61 } //01 00  gando.uganda
		$a_01_5 = {53 68 65 6c 6c 20 6a 61 6e 77 61 72 } //00 00  Shell janwar
	condition:
		any of ($a_*)
 
}