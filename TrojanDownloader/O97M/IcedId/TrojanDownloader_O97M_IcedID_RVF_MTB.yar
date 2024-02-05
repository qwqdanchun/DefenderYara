
rule TrojanDownloader_O97M_IcedID_RVF_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.RVF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {31 31 37 31 32 33 34 31 30 34 31 32 33 34 39 36 31 32 33 34 31 32 34 31 32 33 34 31 32 37 31 32 33 34 39 38 31 32 33 34 31 31 37 31 32 33 34 39 38 } //01 00 
		$a_00_1 = {53 68 65 6c 6c 20 22 43 3a 5c 57 69 6e 64 6f 77 73 5c 65 78 70 6c 6f 72 65 72 2e 65 78 65 20 22 20 26 20 } //01 00 
		$a_02_2 = {61 38 58 77 74 4e 20 3d 20 54 72 69 6d 28 22 22 20 26 20 61 90 02 05 20 58 6f 72 20 61 90 02 05 29 90 00 } //01 00 
		$a_00_3 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //01 00 
		$a_02_4 = {43 61 6c 6c 20 61 6a 43 48 6e 28 61 90 02 05 2c 20 61 37 64 77 4b 28 61 90 02 05 29 29 90 00 } //01 00 
		$a_02_5 = {43 68 72 28 22 22 20 26 20 61 90 02 05 20 26 20 22 22 29 90 00 } //01 00 
		$a_02_6 = {4d 69 64 28 61 90 02 05 2c 20 61 90 02 05 2c 20 31 29 90 00 } //01 00 
		$a_02_7 = {61 43 59 46 6d 32 28 61 38 58 77 74 4e 28 61 90 02 05 28 61 90 02 05 29 2c 20 31 36 29 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}