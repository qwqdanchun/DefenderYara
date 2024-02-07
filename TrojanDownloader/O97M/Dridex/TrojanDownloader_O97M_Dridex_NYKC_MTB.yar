
rule TrojanDownloader_O97M_Dridex_NYKC_MTB{
	meta:
		description = "TrojanDownloader:O97M/Dridex.NYKC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 03 00 "
		
	strings :
		$a_03_0 = {3d 20 52 65 70 6c 61 63 65 28 22 90 02 0f 68 74 74 70 73 3a 2f 2f 6e 65 77 7a 72 6f 6f 74 2e 63 6f 6d 2f 77 70 2d 63 6f 6e 74 65 6e 74 2f 74 68 65 6d 65 73 2f 73 61 68 69 66 61 2f 63 73 73 2f 69 6c 69 67 68 74 62 6f 78 2f 6f 74 6c 44 68 36 4f 76 34 67 49 6d 5a 30 74 2e 70 68 70 90 00 } //03 00 
		$a_03_1 = {3d 20 4d 69 64 28 22 90 02 0f 28 68 74 74 70 73 3a 2f 2f 66 61 74 65 2e 73 61 2f 32 45 57 5a 31 67 7a 4b 62 6b 2e 70 68 70 90 00 } //01 00 
		$a_03_2 = {3d 20 4d 69 64 28 22 90 02 0a 41 70 70 44 61 74 61 90 00 } //05 00 
		$a_03_3 = {64 65 2f 6f 56 57 6a 4f 72 31 5a 33 5a 2e 70 68 70 90 0a 28 00 68 74 74 70 73 3a 2f 2f 63 6f 65 6e 69 67 6c 69 63 68 2e 90 00 } //01 00 
		$a_01_4 = {77 6d 69 63 20 70 72 6f 63 65 73 73 20 63 61 6c 6c 20 63 72 65 61 74 65 20 27 72 75 6e 64 6c 6c 33 32 2e 65 78 65 } //00 00  wmic process call create 'rundll32.exe
	condition:
		any of ($a_*)
 
}