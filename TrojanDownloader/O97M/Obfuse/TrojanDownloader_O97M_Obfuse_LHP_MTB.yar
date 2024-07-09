
rule TrojanDownloader_O97M_Obfuse_LHP_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LHP!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {50 72 69 76 61 74 65 20 53 75 62 20 49 6e 69 74 28 29 [0-18] 20 3d 20 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 22 [0-18] 22 29 2e 56 61 6c 75 65 } //1
		$a_01_1 = {43 61 6c 6c 20 49 6e 69 74 } //1 Call Init
		$a_01_2 = {53 68 65 6c 6c 20 } //1 Shell 
		$a_01_3 = {47 6f 54 6f 20 } //1 GoTo 
		$a_03_4 = {3d 20 53 74 72 43 6f 6e 76 28 [0-15] 2c 20 [0-02] 29 } //1
		$a_03_5 = {47 6f 54 6f 20 [0-20] 45 78 69 74 20 53 75 62 90 0c 02 00 45 6e 64 20 53 75 62 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_03_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}