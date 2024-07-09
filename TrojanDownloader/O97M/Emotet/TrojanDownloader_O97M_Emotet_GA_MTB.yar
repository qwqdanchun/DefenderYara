
rule TrojanDownloader_O97M_Emotet_GA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.GA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 09 00 00 "
		
	strings :
		$a_02_0 = {52 00 65 00 70 00 6c 00 61 00 63 00 65 00 28 00 [0-14] 2c 00 20 00 [0-14] 2c 00 20 00 22 00 22 00 29 00 } //1
		$a_02_1 = {52 65 70 6c 61 63 65 28 [0-14] 2c 20 [0-14] 2c 20 22 22 29 } //1
		$a_02_2 = {2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 2b 00 20 00 [0-14] 2e 00 [0-14] 2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 2b 00 20 00 [0-14] 2e 00 [0-14] 2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 2b 00 20 00 [0-14] 2e 00 [0-14] 2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 20 00 2b 00 20 00 [0-14] 2e 00 [0-14] 2e 00 43 00 61 00 70 00 74 00 69 00 6f 00 6e 00 29 00 29 00 } //1
		$a_02_3 = {2e 43 61 70 74 69 6f 6e 20 2b 20 [0-14] 2e [0-14] 2e 43 61 70 74 69 6f 6e 20 2b 20 [0-14] 2e [0-14] 2e 43 61 70 74 69 6f 6e 20 2b 20 [0-14] 2e [0-14] 2e 43 61 70 74 69 6f 6e 20 2b 20 [0-14] 2e [0-14] 2e 43 61 70 74 69 6f 6e 29 29 } //1
		$a_80_4 = {44 65 62 75 67 50 72 69 6e 74 46 69 6c 65 } //DebugPrintFile  -1
		$a_80_5 = {44 65 62 75 67 2e 50 72 69 6e 74 } //Debug.Print  -1
		$a_80_6 = {50 72 69 6e 74 4f 75 74 } //PrintOut  -1
		$a_80_7 = {70 72 65 76 69 65 77 3a 3d 54 72 75 65 } //preview:=True  -1
		$a_80_8 = {43 61 6c 63 75 6c 61 74 69 6f 6e } //Calculation  -1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1+(#a_80_4  & 1)*-1+(#a_80_5  & 1)*-1+(#a_80_6  & 1)*-1+(#a_80_7  & 1)*-1+(#a_80_8  & 1)*-1) >=2
 
}