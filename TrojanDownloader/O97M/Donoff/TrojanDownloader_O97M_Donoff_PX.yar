
rule TrojanDownloader_O97M_Donoff_PX{
	meta:
		description = "TrojanDownloader:O97M/Donoff.PX,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_02_0 = {45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 90 02 0a 2e 74 78 74 22 2c 20 32 3a 20 62 20 3d 20 35 90 00 } //01 00 
		$a_03_1 = {53 70 6c 69 74 28 54 68 69 73 57 6f 72 6b 62 6f 6f 6b 2e 53 68 65 65 74 73 28 22 90 02 05 22 29 2e 52 61 6e 67 65 28 22 90 02 05 22 29 2e 56 61 6c 75 65 2c 20 43 68 72 28 28 28 28 90 00 } //01 00 
		$a_00_2 = {26 20 43 68 72 28 49 6e 74 28 43 68 72 28 33 38 29 20 26 20 43 68 72 28 37 32 29 20 26 20 4d 69 64 28 } //00 00  & Chr(Int(Chr(38) & Chr(72) & Mid(
	condition:
		any of ($a_*)
 
}