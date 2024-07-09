
rule TrojanDownloader_O97M_Obfuse_PKXA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PKXA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {50 72 69 76 61 74 65 20 53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 90 0c 02 00 50 49 44 20 3d 20 53 68 65 6c 6c 28 22 63 6d 64 20 2f 63 20 63 65 72 74 75 74 69 6c 2e 65 78 65 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 22 22 68 74 74 70 73 3a 2f 2f 63 64 6e 2e 64 69 73 63 6f 72 64 61 70 70 2e 63 6f 6d 2f 61 74 74 61 63 68 6d 65 6e 74 73 2f 39 34 38 35 37 38 38 32 33 39 38 33 37 32 36 37 32 36 2f 39 34 38 37 32 31 33 34 38 31 37 30 31 32 31 32 39 36 2f 4c 71 6f 68 70 73 68 6e 64 2e 65 78 65 22 22 20 52 71 6d 6d 63 71 70 6c 75 7a 6c 66 66 75 64 61 78 73 68 69 2e 65 78 65 2e 65 78 65 20 26 26 20 52 71 6d 6d 63 71 70 6c 75 7a 6c 66 66 75 64 61 78 73 68 69 2e 65 78 65 2e 65 78 65 22 2c 20 76 62 48 69 64 65 29 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}