
rule TrojanDownloader_O97M_Dridex_SM_MSR{
	meta:
		description = "TrojanDownloader:O97M/Dridex.SM!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 04 00 00 "
		
	strings :
		$a_03_0 = {52 61 6e 64 6f 6d 69 7a 65 3a 20 74 69 72 20 3d 20 31 3a 20 [0-10] 20 3d 20 79 75 28 49 6e 74 28 28 55 42 6f 75 6e 64 28 79 75 29 20 2b 20 74 69 72 29 20 2a 20 52 6e 64 29 29 } //3
		$a_03_1 = {6e 6e 6b 20 3d 20 53 70 6c 69 74 28 [0-09] 2c 20 22 21 22 29 3a 20 6f 6b 64 20 3d 20 53 70 6c 69 74 28 6e 6e 6b 28 [0-09] 29 2c 20 22 5d 22 } //3
		$a_03_2 = {53 68 65 65 74 73 28 [0-09] 29 2e 43 65 6c 6c 73 28 [0-09] 2c 20 [0-09] 29 2e 76 61 6c 75 65 20 3d 20 22 3d 22 20 26 20 52 65 70 6c 61 63 65 28 69 6d 6e 2c 20 22 3f 22 2c 20 [0-10] 28 53 70 6c 69 74 28 6e 6e 6b 28 30 29 2c 20 22 24 22 29 29 } //1
		$a_03_3 = {66 6f 72 6d 73 73 20 3d 20 52 75 6e 28 22 22 20 26 20 [0-09] 20 26 20 22 [0-09] 22 29 } //1
	condition:
		((#a_03_0  & 1)*3+(#a_03_1  & 1)*3+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1) >=8
 
}