
rule TrojanDownloader_O97M_Donoff_PK_MTB{
	meta:
		description = "TrojanDownloader:O97M/Donoff.PK!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 3d 20 52 65 70 6c 61 63 65 28 90 05 09 06 30 2d 39 61 2d 7a 2c 20 22 90 02 05 22 2c 20 22 90 01 01 22 29 90 00 } //01 00 
		$a_03_1 = {20 3d 20 52 65 70 6c 61 63 65 28 90 05 09 06 30 2d 39 61 2d 7a 2c 20 22 90 02 05 22 2c 20 22 68 74 74 70 22 29 90 00 } //01 00 
		$a_03_2 = {3d 20 52 65 76 65 72 73 65 28 22 29 90 02 ff 22 29 90 00 } //01 00 
		$a_01_3 = {53 65 74 20 6f 62 6a 57 4d 49 53 65 72 76 69 63 65 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 52 65 76 65 72 73 65 28 22 32 76 6d 69 63 5c 74 6f 6f 72 5c 2e 5c 5c 21 7d 65 74 61 6e 6f 73 72 65 70 6d 69 3d 6c 65 76 65 4c 6e 6f 69 74 61 6e 6f 73 72 65 70 6d 69 7b 3a 73 74 6d 67 6d 6e 69 77 22 29 29 } //01 00  Set objWMIService = GetObject(Reverse("2vmic\toor\.\\!}etanosrepmi=leveLnoitanosrepmi{:stmgmniw"))
		$a_01_4 = {53 65 74 20 6f 62 6a 50 72 6f 63 65 73 73 20 3d 20 6f 62 6a 57 4d 49 53 65 72 76 69 63 65 2e 47 65 74 28 52 65 76 65 72 73 65 28 22 73 73 65 63 6f 72 50 5f 32 33 6e 69 57 22 29 29 } //01 00  Set objProcess = objWMIService.Get(Reverse("ssecorP_23niW"))
		$a_03_5 = {69 6e 74 52 65 74 75 72 6e 20 3d 20 6f 62 6a 50 72 6f 63 65 73 73 2e 43 72 65 61 74 65 28 52 65 70 6c 61 63 65 28 90 05 09 06 30 2d 39 61 2d 7a 2c 20 22 90 02 05 22 2c 20 22 90 01 01 22 29 2c 20 4e 75 6c 6c 2c 20 6f 62 6a 43 6f 6e 66 69 67 2c 20 69 6e 74 50 72 6f 63 65 73 73 49 44 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}