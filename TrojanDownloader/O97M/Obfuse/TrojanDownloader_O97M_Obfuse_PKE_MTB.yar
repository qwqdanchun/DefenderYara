
rule TrojanDownloader_O97M_Obfuse_PKE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PKE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_03_0 = {22 43 3a 5c 55 73 65 72 73 5c 22 20 26 20 45 6e 76 69 72 6f 6e 28 22 55 73 65 72 4e 61 6d 65 22 29 20 26 20 22 5c 90 02 0f 5c 90 02 0f 22 20 2b 20 22 2e 22 20 2b 20 22 70 73 31 22 90 00 } //1
		$a_03_1 = {47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 90 02 0a 2d 90 02 05 2d 90 02 05 2d 90 02 05 2d 90 02 0f 22 29 2e 53 68 65 6c 6c 65 78 65 63 75 74 65 20 90 02 20 2e 90 02 20 2e 54 61 67 2c 20 90 02 20 2e 90 02 20 2e 54 61 67 90 00 } //1
		$a_01_2 = {53 74 72 52 65 76 65 72 73 65 28 22 6e 22 20 2b 20 22 65 22 20 2b 20 22 70 22 20 2b 20 22 6f 22 29 2c } //1 StrReverse("n" + "e" + "p" + "o"),
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_01_2  & 1)*1) >=3
 
}