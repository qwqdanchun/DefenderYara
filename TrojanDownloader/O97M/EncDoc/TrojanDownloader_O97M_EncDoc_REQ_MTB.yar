
rule TrojanDownloader_O97M_EncDoc_REQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.REQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {48 4a 48 47 75 79 20 3d 90 02 2f 22 68 74 22 0d 0a 48 4a 48 47 75 79 31 20 3d 20 90 02 2f 22 74 70 22 0d 0a 48 4a 48 47 75 79 32 20 3d 90 02 2f 22 3a 22 0d 0a 48 4a 48 47 75 79 33 20 3d 90 02 2f 22 2f 2f 22 90 00 } //01 00 
		$a_03_1 = {42 79 79 74 75 69 74 79 20 3d 20 22 90 01 04 22 0d 0a 42 79 79 74 75 69 74 79 31 20 3d 20 22 90 01 04 22 90 00 } //01 00 
		$a_01_2 = {47 75 69 6b 67 68 6a 67 66 68 20 3d 20 48 4a 48 47 75 79 20 26 20 48 4a 48 47 75 79 31 20 26 20 48 4a 48 47 75 79 32 20 26 20 48 4a 48 47 75 79 33 20 26 20 53 68 65 65 74 73 28 47 65 72 74 29 2e 52 61 6e 67 65 28 42 79 79 74 75 69 74 79 31 29 } //01 00 
		$a_01_3 = {42 74 64 75 66 6a 6b 68 6e 20 3d 20 53 68 65 65 74 73 28 47 65 72 74 29 2e 52 61 6e 67 65 28 42 79 79 74 75 69 74 79 29 } //01 00 
		$a_01_4 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 47 75 69 6b 67 68 6a 67 66 68 2c 20 42 74 64 75 66 6a 6b 68 6e 2c 20 30 2c 20 30 0d 0a 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //00 00 
	condition:
		any of ($a_*)
 
}