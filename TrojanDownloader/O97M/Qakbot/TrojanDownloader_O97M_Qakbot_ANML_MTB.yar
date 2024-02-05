
rule TrojanDownloader_O97M_Qakbot_ANML_MTB{
	meta:
		description = "TrojanDownloader:O97M/Qakbot.ANML!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 65 65 74 73 28 22 4e 6f 73 74 6f 22 29 2e 52 61 6e 67 65 28 22 4b 31 38 22 29 20 3d 20 22 2e 64 61 74 } //01 00 
		$a_01_1 = {53 68 65 65 74 73 28 22 4e 6f 73 74 6f 22 29 2e 52 61 6e 67 65 28 22 47 31 30 22 29 20 3d 20 55 73 65 72 46 6f 72 6d 34 2e 43 61 70 74 69 6f 6e } //01 00 
		$a_01_2 = {53 68 65 65 74 73 28 22 4e 6f 73 74 6f 22 29 2e 52 61 6e 67 65 28 22 47 31 31 22 29 20 3d 20 55 73 65 72 46 6f 72 6d 34 2e 43 61 70 74 69 6f 6e 20 26 20 22 31 } //01 00 
		$a_01_3 = {53 68 65 65 74 73 28 22 4e 6f 73 74 6f 22 29 2e 52 61 6e 67 65 28 22 47 31 32 22 29 20 3d 20 55 73 65 72 46 6f 72 6d 34 2e 43 61 70 74 69 6f 6e 20 26 20 22 32 } //01 00 
		$a_01_4 = {53 68 65 65 74 73 28 22 4e 6f 73 74 6f 22 29 2e 52 61 6e 67 65 28 22 49 31 38 22 29 20 3d 20 55 73 65 72 46 6f 72 6d 33 2e 43 61 70 74 69 6f 6e 20 26 20 22 31 } //01 00 
		$a_01_5 = {53 68 65 65 74 73 28 22 4e 6f 73 74 6f 22 29 2e 52 61 6e 67 65 28 22 49 31 39 22 29 20 3d 20 55 73 65 72 46 6f 72 6d 33 2e 43 61 70 74 69 6f 6e 20 26 20 22 32 } //00 00 
	condition:
		any of ($a_*)
 
}