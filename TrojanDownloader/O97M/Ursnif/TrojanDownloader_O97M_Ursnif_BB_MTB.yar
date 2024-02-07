
rule TrojanDownloader_O97M_Ursnif_BB_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.BB!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {50 72 69 6e 74 20 23 90 02 01 2c 20 90 02 10 2e 78 2e 76 61 6c 75 65 20 26 20 90 02 10 2e 79 2e 76 61 6c 75 65 90 00 } //01 00 
		$a_01_1 = {3d 20 22 61 75 62 65 78 2e 78 22 20 2b } //01 00  = "aubex.x" +
		$a_01_2 = {3d 20 22 73 6c 22 } //01 00  = "sl"
		$a_03_3 = {44 65 62 75 67 2e 50 72 69 6e 74 20 45 72 72 6f 72 28 90 02 10 29 90 0c 02 00 4e 65 78 74 90 00 } //01 00 
		$a_03_4 = {3d 20 22 22 90 0c 02 00 44 69 6d 20 90 02 10 20 41 73 20 49 6e 74 65 67 65 72 90 0c 02 00 44 69 6d 20 90 02 10 20 41 73 20 4c 6f 6e 67 90 00 } //01 00 
		$a_01_5 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //00 00  = New WshShell
	condition:
		any of ($a_*)
 
}