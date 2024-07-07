
rule TrojanDownloader_O97M_Donoff_CM_eml{
	meta:
		description = "TrojanDownloader:O97M/Donoff.CM!eml,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 57 72 69 74 65 50 61 79 6c 6f 61 64 28 29 } //1 Sub WritePayload()
		$a_03_1 = {23 50 61 79 4c 6f 61 64 46 69 6c 65 2c 90 02 05 48 54 54 50 44 6f 77 6e 6c 6f 61 64 90 00 } //1
		$a_03_2 = {4d 69 64 28 90 02 02 6d 79 55 52 4c 2c 20 49 6e 53 74 72 52 65 76 28 90 02 03 6d 79 55 52 4c 2c 20 22 90 00 } //1
		$a_03_3 = {57 53 63 72 69 70 74 2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 03 22 90 02 05 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 90 02 05 22 29 90 00 } //1
		$a_03_4 = {46 69 6c 65 2c 90 02 16 57 73 68 53 68 65 6c 6c 2e 52 75 6e 90 00 } //1
		$a_03_5 = {53 68 65 6c 6c 90 02 04 77 73 63 72 69 70 74 90 02 1f 2e 76 62 73 90 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}