
rule TrojanDownloader_O97M_Ursnif_AA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 06 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 [0-15] 28 29 20 26 20 22 5c [0-15] 2e 78 73 22 20 26 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 [0-15] 28 29 20 26 20 22 5c [0-15] 2e 78 22 20 2b 20 [0-15] 28 29 2c 20 31 29 } //1
		$a_01_2 = {22 61 70 70 64 61 74 61 22 } //1 "appdata"
		$a_03_3 = {3d 20 43 68 72 28 22 26 68 22 20 26 20 4d 69 64 28 [0-15] 2c } //1
		$a_01_4 = {3d 20 22 22 } //1 = ""
		$a_01_5 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //1 = New WshShell
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=5
 
}
rule TrojanDownloader_O97M_Ursnif_AA_MTB_2{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_03_0 = {53 68 65 6c 6c 20 4c 65 66 74 28 52 65 70 6c 61 63 65 28 [0-0f] 28 [0-09] 29 2c 20 [41-5a] 2c 20 22 20 22 29 2c 20 4c 65 6e 28 52 65 70 6c 61 63 65 28 90 1b 00 28 90 1b 01 29 2c 20 90 1b 02 2c 20 22 20 22 29 29 20 2d 20 90 04 01 03 6[c 20 [0-0] 6] 42 75 74 74 6f 6e 53 65 74 41 62 6f 72 74 52 65 74 72 79 49 67 6e 6f 72 65 } //1
		$a_03_1 = {44 69 6d 20 90 05 0f 06 41 2d 5a 61 2d 7a 28 29 20 41 73 20 53 74 72 69 6e 67 0d 0a 90 1b 00 28 29 20 3d 20 53 70 6c 69 74 28 [61-7a] 29 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=2
 
}