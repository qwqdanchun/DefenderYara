
rule TrojanDownloader_O97M_Damatak_B{
	meta:
		description = "TrojanDownloader:O97M/Damatak.B,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 "
		
	strings :
		$a_02_0 = {50 75 62 6c 69 63 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 [0-10] 20 4c 69 62 20 22 [0-10] 4b 65 72 6e 65 6c 33 32 [0-10] 22 20 41 6c 69 61 73 20 22 43 72 65 61 74 65 54 69 6d 65 72 51 75 65 75 65 54 69 6d 65 72 22 } //1
		$a_02_1 = {50 75 62 6c 69 63 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 [0-10] 20 4c 69 62 20 22 [0-10] 4e 74 64 6c 6c 2e 64 6c 6c [0-10] 22 20 41 6c 69 61 73 20 22 4e 74 57 72 69 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 22 } //1
		$a_02_2 = {50 75 62 6c 69 63 20 44 65 63 6c 61 72 65 20 46 75 6e 63 74 69 6f 6e 20 [0-10] 20 4c 69 62 20 22 [0-10] 4e 74 64 6c 6c 2e 64 6c 6c [0-10] 22 20 41 6c 69 61 73 20 [0-10] 22 4e 74 41 6c 6c 6f 63 61 74 65 56 69 72 74 75 61 6c 4d 65 6d 6f 72 79 22 } //1
		$a_02_3 = {23 49 66 20 [0-20] 57 69 6e 36 34 } //1
		$a_00_4 = {50 72 69 76 61 74 65 20 53 75 62 20 44 6f 63 75 6d 65 6e 74 5f 4f 70 65 6e 28 29 } //1 Private Sub Document_Open()
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_00_4  & 1)*1) >=5
 
}