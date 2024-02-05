
rule TrojanDownloader_O97M_Powdow_ULY_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.ULY!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {63 6d 64 20 2f 6b 20 70 5e 6f 77 65 72 5e 73 68 65 6c 6c 20 2d 77 20 31 20 28 6e 45 77 2d 6f 42 6a 65 60 63 54 20 4e 65 74 2e 57 65 62 63 4c 60 49 45 4e 74 29 } //01 00 
		$a_01_1 = {28 27 44 6f 77 6e 6c 6f 61 64 46 69 6c 65 27 29 } //01 00 
		$a_01_2 = {49 6e 76 6f 6b 65 28 28 27 68 74 27 2b 27 74 70 73 3a 2f 2f 74 69 6e 79 75 72 6c 2e 63 6f 6d 2f 79 34 70 74 68 65 64 32 27 29 2c 27 79 65 2e 65 78 65 27 29 } //00 00 
	condition:
		any of ($a_*)
 
}