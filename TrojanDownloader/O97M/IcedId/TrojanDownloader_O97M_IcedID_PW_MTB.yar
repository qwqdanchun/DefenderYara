
rule TrojanDownloader_O97M_IcedID_PW_MTB{
	meta:
		description = "TrojanDownloader:O97M/IcedID.PW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_02_0 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 01 05 20 2b 20 22 2e 22 20 2b 20 22 73 68 65 6c 6c 22 29 90 00 } //01 00 
		$a_00_1 = {53 74 72 69 6e 67 20 3d 20 22 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //01 00  String = "ing.FileSystemObject")
		$a_02_2 = {28 30 29 20 2b 20 22 76 72 33 32 20 63 3a 5c 70 72 6f 67 72 61 6d 64 61 74 61 5c 90 01 05 2e 74 78 74 22 2c 20 22 77 73 63 72 69 70 74 22 90 00 } //01 00 
		$a_00_3 = {2e 4f 70 65 6e 20 22 47 45 54 22 } //01 00  .Open "GET"
		$a_00_4 = {2e 72 65 73 70 6f 6e 73 65 62 6f 64 79 } //01 00  .responsebody
		$a_00_5 = {28 22 50 54 54 48 4c 4d 58 72 65 22 20 2b 20 22 76 72 65 73 2e 32 4c 4d 58 53 4d 22 29 } //01 00  ("PTTHLMXre" + "vres.2LMXSM")
		$a_02_6 = {2e 65 78 65 63 28 90 01 05 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}