
rule TrojanDownloader_O97M_Obfuse_KAAY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.KAAY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {3d 63 68 72 28 35 30 29 2b 63 68 72 28 34 38 29 2b 63 68 72 28 34 38 29 90 02 4f 3d 63 72 65 61 74 65 6f 62 6a 65 63 74 28 22 77 73 63 72 69 70 74 2e 73 68 65 6c 6c 22 29 73 70 65 63 69 61 6c 70 61 74 68 3d 77 73 68 73 68 65 6c 6c 2e 73 70 65 63 69 61 6c 66 6f 6c 64 65 72 73 28 22 72 65 63 65 6e 74 22 29 90 00 } //01 00 
		$a_03_1 = {72 61 6e 67 65 28 22 74 31 22 29 2e 76 61 6c 75 65 3d 22 90 02 2f 22 72 61 6e 67 65 28 22 72 31 22 29 2e 76 61 6c 75 65 3d 22 90 02 2f 22 6d 73 67 62 6f 78 22 74 72 72 79 69 6e 66 67 76 76 74 6f 6f 70 74 6a 62 66 64 6f 63 75 6d 65 62 6a 6b 62 67 22 90 00 } //01 00 
		$a_01_2 = {2e 6f 70 65 6e 22 67 65 74 22 2c } //01 00  .open"get",
		$a_01_3 = {32 33 61 63 65 66 69 6e 6f 70 72 73 74 75 78 79 62 63 64 65 69 6c 6f 70 73 75 79 22 } //00 00  23acefinoprstuxybcdeilopsuy"
	condition:
		any of ($a_*)
 
}