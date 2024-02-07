
rule TrojanDownloader_O97M_Valak_PA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Valak.PA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 45 6e 76 69 72 6f 6e 28 22 74 6d 70 22 29 20 26 20 22 5c 31 31 31 2e 6a 70 67 22 } //01 00  = Environ("tmp") & "\111.jpg"
		$a_02_1 = {2e 65 78 65 63 28 90 02 0a 28 22 72 90 02 05 65 90 02 05 67 90 02 05 73 90 02 05 76 90 02 05 22 29 20 26 20 22 72 33 32 20 22 20 26 90 00 } //01 00 
		$a_02_2 = {44 69 6d 20 90 02 0a 20 41 73 20 4e 65 77 20 57 73 68 53 68 65 6c 6c 90 00 } //01 00 
		$a_02_3 = {3d 20 53 74 72 43 6f 6e 76 28 90 02 0a 2c 20 36 34 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}