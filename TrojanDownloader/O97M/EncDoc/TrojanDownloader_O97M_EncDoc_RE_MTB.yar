
rule TrojanDownloader_O97M_EncDoc_RE_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.RE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,01 00 01 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 74 61 74 69 63 20 53 75 62 20 61 75 74 6f 5f 6f 70 65 6e 28 29 3a 0d 0a 43 61 6c 63 20 3d 20 5f 0d 0a 45 72 72 6f 72 2e 54 65 78 74 42 6f 78 31 2e 43 6f 6e 74 72 6f 6c 54 69 70 54 65 78 74 0d 0a 63 61 6c 63 75 6c 61 74 6f 72 72 72 20 3d 20 53 68 65 6c 6c 28 43 61 6c 63 2c 20 31 29 0d 0a 45 6e 64 20 53 75 62 } //01 00 
		$a_03_1 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 63 78 63 7a 78 63 22 0d 0a 46 75 6e 63 74 69 6f 6e 20 41 75 74 6f 5f 43 6c 6f 73 65 28 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 53 68 65 6c 6c 20 63 61 6c 63 75 6c 61 74 6f 72 2e 90 02 1f 2e 54 61 67 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}