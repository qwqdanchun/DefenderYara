
rule TrojanDownloader_O97M_EncDoc_ERW_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.ERW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 4b 69 6f 70 61 73 28 29 } //01 00  Public Function Kiopas()
		$a_01_1 = {47 65 72 74 20 3d 20 22 44 6f 64 65 73 22 } //01 00  Gert = "Dodes"
		$a_01_2 = {42 79 79 74 75 69 74 79 20 3d 20 22 43 31 30 31 22 } //01 00  Byytuity = "C101"
		$a_01_3 = {42 79 79 74 75 69 74 79 31 20 3d 20 22 43 31 30 35 22 } //01 00  Byytuity1 = "C105"
		$a_01_4 = {26 20 53 68 65 65 74 73 28 47 65 72 74 29 2e 52 61 6e 67 65 28 42 79 79 74 75 69 74 79 31 29 } //01 00  & Sheets(Gert).Range(Byytuity1)
		$a_01_5 = {20 3d 20 53 68 65 65 74 73 28 47 65 72 74 29 2e 52 61 6e 67 65 28 42 79 79 74 75 69 74 79 29 } //01 00   = Sheets(Gert).Range(Byytuity)
		$a_03_6 = {52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 47 75 69 6b 67 68 6a 67 66 68 2c 20 42 74 64 75 66 6a 6b 68 6e 2c 20 30 2c 20 30 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //01 00 
		$a_03_7 = {23 49 66 20 57 69 6e 36 34 20 54 68 65 6e 90 02 08 23 45 6c 73 65 90 02 07 23 45 6e 64 20 49 66 90 0c 02 00 23 45 6c 73 65 90 0c 02 00 23 45 6e 64 20 49 66 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}