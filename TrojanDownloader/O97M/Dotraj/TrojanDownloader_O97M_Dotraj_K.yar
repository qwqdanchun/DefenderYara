
rule TrojanDownloader_O97M_Dotraj_K{
	meta:
		description = "TrojanDownloader:O97M/Dotraj.K,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_00_0 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 52 75 6e } //1 CreateObject("WScript.Shell").Run
		$a_02_1 = {46 75 6e 63 74 69 6f 6e 20 [0-30] 20 3d 20 90 1d 10 00 20 2d 20 90 10 04 00 90 0e 05 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_02_2 = {53 75 62 20 [0-30] 46 6f 72 20 45 61 63 68 20 [0-02] 20 49 6e 20 [0-10] 49 66 20 4c 65 6e 28 [0-02] 29 20 54 68 65 6e [0-20] 20 3d 20 [0-10] 20 2b 20 43 68 72 28 [0-10] 28 [0-02] 29 29 90 0e 10 00 45 6e 64 20 49 66 } //1
	condition:
		((#a_00_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1) >=3
 
}