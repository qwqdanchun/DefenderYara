
rule TrojanDownloader_O97M_Obfuse_DD_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DD!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 69 6d 76 2c 5f 72 2c 61 70 70 64 61 74 61 65 6e 63 3d 73 74 72 72 65 76 65 72 73 65 28 65 6e 63 29 } //01 00  dimv,_r,appdataenc=strreverse(enc)
		$a_03_1 = {66 6f 72 72 3d 31 74 6f 6c 65 6e 28 65 6e 63 29 76 3d 6d 69 64 28 65 6e 63 2c 72 2c 31 29 61 70 70 64 61 74 61 3d 61 70 70 64 61 74 61 26 63 68 72 28 61 73 63 28 76 29 2d 31 29 6e 65 78 74 90 02 0c 3d 61 70 70 64 61 74 61 65 6e 64 66 75 6e 63 74 69 6f 6e 66 75 6e 63 74 69 6f 6e 90 02 1f 28 29 90 1b 01 28 30 29 3d 32 33 33 90 00 } //01 00 
		$a_03_2 = {2c 30 2c 30 65 73 7a 72 30 2c 22 6f 70 65 6e 22 2c 90 02 5a 2c 22 22 2c 76 62 6e 75 6c 6c 73 74 72 69 6e 67 2c 76 62 6e 6f 72 6d 61 6c 66 6f 63 75 73 65 6e 64 73 75 62 66 75 6e 63 74 69 6f 6e 90 02 0f 28 29 61 73 64 6f 75 62 6c 65 63 61 6c 6c 90 02 20 65 6e 64 66 75 6e 63 74 69 6f 6e 73 75 62 77 6f 72 6b 62 6f 6f 6b 5f 6f 70 65 6e 28 29 90 02 0f 65 6e 64 73 75 62 90 00 } //01 00 
		$a_03_3 = {28 22 66 79 66 2f 73 73 6a 6a 22 29 90 02 5a 3d 65 6e 76 69 72 6f 6e 24 28 22 61 70 70 64 61 74 61 22 29 26 22 5c 22 26 90 00 } //01 00 
		$a_03_4 = {28 22 66 79 66 2f 90 02 1f 30 6e 70 64 2f 68 6f 6a 6d 73 76 69 2e 74 6b 2f 78 78 78 30 30 3b 74 71 75 75 69 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}