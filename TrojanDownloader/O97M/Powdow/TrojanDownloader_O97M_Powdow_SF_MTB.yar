
rule TrojanDownloader_O97M_Powdow_SF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 28 90 02 25 2c 20 4e 75 6c 6c 2c 20 90 02 20 2c 20 69 6e 74 50 72 6f 63 65 73 73 49 44 29 90 00 } //01 00 
		$a_01_1 = {3d 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 70 6f 22 20 2b 20 22 77 65 72 22 20 2b 20 22 73 68 64 22 20 2b 20 22 6c 6c 2e 64 22 20 2b 20 22 6c 6c 22 } //01 00  = Environ("TEMP") & "\po" + "wer" + "shd" + "ll.d" + "ll"
		$a_03_2 = {26 20 43 68 72 24 28 56 61 6c 28 22 26 48 22 20 26 20 4d 69 64 24 28 90 02 20 2c 20 90 02 20 2c 20 32 29 29 29 90 00 } //01 00 
		$a_01_3 = {2b 20 22 6c 6c 33 22 20 2b 20 22 32 2e 65 22 20 2b 20 22 78 65 20 22 } //01 00  + "ll3" + "2.e" + "xe "
		$a_01_4 = {2e 52 75 6e 20 74 61 72 67 65 74 50 61 74 68 2c 20 30 } //00 00  .Run targetPath, 0
	condition:
		any of ($a_*)
 
}