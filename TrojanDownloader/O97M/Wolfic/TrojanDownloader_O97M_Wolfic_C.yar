
rule TrojanDownloader_O97M_Wolfic_C{
	meta:
		description = "TrojanDownloader:O97M/Wolfic.C,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 6c 69 61 73 20 22 43 72 65 61 74 65 50 72 6f 63 65 73 73 22 } //01 00  Alias "CreateProcess"
		$a_02_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 40 2e 43 61 70 74 69 6f 6e 20 26 20 90 02 40 2e 43 61 70 74 69 6f 6e 29 90 00 } //01 00 
		$a_02_2 = {22 68 74 74 70 73 3a 2f 2f 90 02 40 2e 90 02 04 2f 64 2f 90 02 40 2f 90 02 40 2e 70 6e 67 22 90 00 } //01 00 
		$a_00_3 = {2e 53 74 61 74 75 73 20 3d 20 32 30 30 20 54 68 65 6e } //01 00  .Status = 200 Then
		$a_00_4 = {2e 4f 70 65 6e 90 02 40 2e 43 61 70 74 69 6f 6e 90 02 40 46 61 6c 73 65 90 02 40 2e 53 65 6e 64 90 02 f0 2e 52 65 73 70 6f 6e 73 65 42 6f 64 79 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}