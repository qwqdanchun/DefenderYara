
rule TrojanDownloader_O97M_Powdow_RVBL_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVBL!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {2e 37 37 64 37 37 6f 77 37 37 6e 6c 6f 37 37 61 64 53 74 37 37 72 69 6e 67 28 27 37 37 68 74 37 37 74 37 37 70 3a 37 37 37 37 2f 2f 36 37 37 34 2e 37 37 37 37 31 39 30 2e 31 37 37 31 37 37 33 2e 37 37 31 36 36 2f 31 37 37 31 31 2e 37 37 70 37 37 37 37 73 37 37 31 37 37 27 29 } //01 00  .77d77ow77nlo77adSt77ring('77ht77t77p:7777//6774.7777190.1771773.77166/17711.77p7777s77177')
		$a_01_1 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 45 6e 76 69 72 6f 6e 28 22 55 53 45 52 50 52 4f 46 49 4c 45 22 29 20 2b 20 22 5c 4d 75 73 69 63 5c 74 65 6d 70 2e 62 61 74 22 29 } //01 00  .CreateTextFile(Environ("USERPROFILE") + "\Music\temp.bat")
		$a_01_2 = {3d 20 52 65 70 6c 61 63 65 28 78 2c 20 22 37 22 2c 20 22 22 29 } //01 00  = Replace(x, "7", "")
		$a_03_3 = {53 68 65 6c 6c 20 90 02 01 79 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}