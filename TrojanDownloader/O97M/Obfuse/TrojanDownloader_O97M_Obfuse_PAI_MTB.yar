
rule TrojanDownloader_O97M_Obfuse_PAI_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PAI!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 22 68 74 74 70 3a 2f 2f 70 61 73 74 65 62 69 6e 2e 63 6f 6d 2f 72 61 77 2f 90 02 10 22 2c 20 46 61 6c 73 65 90 00 } //01 00 
		$a_03_1 = {2e 77 72 69 74 65 20 90 02 10 2e 72 65 73 70 6f 6e 73 65 42 6f 64 79 90 00 } //01 00 
		$a_03_2 = {2e 73 61 76 65 74 6f 66 69 6c 65 20 22 44 3a 5c 90 02 10 2e 70 79 22 2c 20 32 90 00 } //01 00 
		$a_03_3 = {53 68 65 6c 6c 20 28 22 43 3a 5c 70 79 74 68 6f 6e 90 02 04 5c 70 79 74 68 6f 6e 2e 65 78 65 20 22 22 44 3a 5c 90 02 10 2e 70 79 22 22 20 22 29 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}