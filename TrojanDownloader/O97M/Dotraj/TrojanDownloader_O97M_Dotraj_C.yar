
rule TrojanDownloader_O97M_Dotraj_C{
	meta:
		description = "TrojanDownloader:O97M/Dotraj.C,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 03 00 00 05 00 "
		
	strings :
		$a_02_0 = {46 6f 72 20 90 02 06 20 3d 20 30 20 54 6f 20 90 02 20 46 6f 72 20 90 02 06 20 3d 20 30 20 54 6f 20 90 02 06 49 66 20 48 69 7a 61 66 6c 63 4a 28 7a 50 29 20 3d 20 90 02 06 28 90 02 06 29 20 54 68 65 6e 20 90 02 20 4e 65 78 74 90 02 05 49 66 20 90 02 06 20 3d 20 30 20 54 68 65 6e 90 02 10 20 3d 20 90 02 10 28 90 02 06 29 20 2d 20 90 02 20 20 3d 20 90 02 06 20 2b 20 43 68 72 24 28 90 02 08 29 90 02 04 45 6e 64 20 49 66 90 02 04 4e 65 78 74 90 00 } //01 00 
		$a_02_1 = {49 66 20 4c 65 6e 28 90 02 06 29 20 3d 20 90 02 06 20 54 68 65 6e 20 53 68 65 6c 6c 20 90 02 06 2c 20 90 02 06 20 2d 20 90 00 } //01 00 
		$a_00_2 = {55 73 65 72 31 2e 4c 61 62 2e 54 6f 70 } //00 00  User1.Lab.Top
		$a_00_3 = {5d 04 00 00 26 } //c9 03 
	condition:
		any of ($a_*)
 
}