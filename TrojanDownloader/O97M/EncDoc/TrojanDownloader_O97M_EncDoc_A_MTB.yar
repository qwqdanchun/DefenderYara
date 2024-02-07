
rule TrojanDownloader_O97M_EncDoc_A_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.A!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {57 69 6e 48 74 74 70 52 65 71 2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f 31 30 22 20 26 20 22 34 2e 32 34 34 2e 22 20 26 20 22 37 34 2e 32 34 33 2f 90 02 02 2e 6a 70 67 22 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_03_1 = {53 68 65 6c 6c 41 70 70 2e 4f 70 65 6e 20 45 6e 76 69 72 6f 6e 28 22 54 4d 50 22 29 20 2b 20 22 5c 74 65 6d 90 02 01 70 65 72 7a 2e 65 78 65 22 90 00 } //01 00 
		$a_03_2 = {6f 53 74 72 65 61 6d 2e 53 61 76 65 54 6f 46 69 6c 65 20 28 45 6e 76 69 72 6f 6e 28 22 54 4d 50 22 29 20 2b 20 22 5c 90 02 08 2e 65 78 65 22 29 2c 20 56 61 6c 28 32 29 90 00 } //01 00 
		$a_01_3 = {53 65 74 20 53 68 65 6c 6c 41 70 70 20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 73 68 65 6c 6c 2e 61 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //00 00  Set ShellApp = CreateObject("shell.application")
	condition:
		any of ($a_*)
 
}