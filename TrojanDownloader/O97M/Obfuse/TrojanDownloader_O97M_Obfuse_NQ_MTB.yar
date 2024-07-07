
rule TrojanDownloader_O97M_Obfuse_NQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.NQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 07 00 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 45 6e 76 69 72 6f 6e 28 90 02 20 29 20 26 20 22 5c 90 02 20 2e 78 73 22 20 26 20 90 02 20 28 29 2c 20 54 72 75 65 2c 20 54 72 75 65 29 90 00 } //1
		$a_03_1 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 90 02 20 20 26 20 22 5c 90 02 20 2e 78 73 22 20 26 20 90 02 20 28 29 2c 20 54 72 75 65 2c 20 54 72 75 65 29 90 00 } //1
		$a_01_2 = {3d 20 43 68 72 28 22 26 68 22 20 26 20 4d 69 64 28 } //1 = Chr("&h" & Mid(
		$a_03_3 = {3d 20 4d 69 64 28 90 02 20 2c 90 00 } //1
		$a_01_4 = {2e 43 6c 6f 73 65 } //1 .Close
		$a_01_5 = {44 65 62 75 67 2e 50 72 69 6e 74 20 45 72 72 6f 72 28 } //1 Debug.Print Error(
		$a_01_6 = {3d 20 4e 65 77 20 57 73 68 53 68 65 6c 6c } //1 = New WshShell
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=6
 
}