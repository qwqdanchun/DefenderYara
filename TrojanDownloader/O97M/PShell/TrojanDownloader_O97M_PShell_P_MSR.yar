
rule TrojanDownloader_O97M_PShell_P_MSR{
	meta:
		description = "TrojanDownloader:O97M/PShell.P!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {63 65 72 74 75 74 69 6c 20 2d 75 72 6c 63 61 63 68 65 20 2d 73 70 6c 69 74 20 2d 66 20 68 74 74 70 90 02 02 3a 2f 2f 70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 90 02 10 2f 90 02 25 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 02 20 2e 65 6e 63 90 00 } //01 00 
		$a_02_1 = {63 65 72 74 75 74 69 6c 20 2d 66 20 2d 64 65 63 6f 64 65 20 90 02 05 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 02 20 2e 65 6e 63 20 90 02 05 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 02 20 2e 70 73 31 90 00 } //01 00 
		$a_02_2 = {70 6f 77 65 72 73 68 65 6c 6c 20 2d 65 78 65 63 75 74 69 6f 6e 70 6f 6c 69 63 79 20 62 79 70 61 73 73 20 2d 63 20 69 65 78 20 90 02 05 5c 75 73 65 72 73 5c 70 75 62 6c 69 63 5c 90 02 20 2e 70 73 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}