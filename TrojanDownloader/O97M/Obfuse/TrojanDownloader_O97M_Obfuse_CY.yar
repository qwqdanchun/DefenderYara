
rule TrojanDownloader_O97M_Obfuse_CY{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CY,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //01 00  Sub autoopen()
		$a_02_1 = {53 68 65 6c 6c 20 90 02 70 2c 20 90 00 } //0a 00 
		$a_02_2 = {43 68 72 28 90 02 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 90 02 40 29 20 2b 20 90 02 80 2c 20 90 10 07 00 20 2d 20 90 10 07 00 90 00 } //0a 00 
		$a_02_3 = {43 56 61 72 28 90 02 50 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 90 02 80 29 20 2b 20 90 02 90 2c 20 90 10 07 00 20 2d 20 90 10 07 00 90 00 } //0a 00 
		$a_02_4 = {43 49 6e 74 28 90 02 50 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 90 02 70 29 20 2b 20 90 02 70 29 20 2b 20 90 02 80 2c 20 90 10 07 00 20 2d 20 90 10 07 00 90 00 } //0a 00 
		$a_02_5 = {43 68 72 28 90 02 40 20 2b 20 43 53 74 72 28 90 02 40 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 90 02 40 29 20 2b 20 90 02 50 29 20 2b 20 90 02 80 2c 20 90 10 07 00 20 2d 20 90 10 07 00 90 00 } //0a 00 
		$a_02_6 = {43 68 72 28 90 02 40 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 50 20 2b 20 90 02 40 29 20 2b 20 43 68 72 28 90 02 40 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 2e 76 62 4b 65 79 4f 20 2b 20 90 02 40 29 90 00 } //0a 00 
		$a_02_7 = {43 68 72 28 90 02 20 20 2b 20 90 02 30 20 2b 20 4b 65 79 43 6f 64 65 43 6f 6e 73 74 61 6e 74 73 90 02 01 2e 76 62 4b 65 79 50 20 2b 20 90 02 40 29 20 2b 20 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}