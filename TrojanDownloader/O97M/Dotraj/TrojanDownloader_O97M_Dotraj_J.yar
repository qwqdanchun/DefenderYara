
rule TrojanDownloader_O97M_Dotraj_J{
	meta:
		description = "TrojanDownloader:O97M/Dotraj.J,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 "
		
	strings :
		$a_02_0 = {3d 20 53 70 6c 69 74 28 41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 56 61 72 69 61 62 6c 65 73 28 22 90 01 05 90 02 05 22 29 2e 56 61 6c 75 65 2c 20 43 68 72 28 28 28 28 90 02 20 29 29 29 90 00 } //2
		$a_02_1 = {43 61 6c 6c 42 79 4e 61 6d 65 20 90 1d 15 00 2c 20 90 1d 15 00 28 90 1f 02 00 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 22 47 45 54 22 2c 20 90 1d 15 00 28 90 1f 02 00 29 2c 20 46 61 6c 73 65 90 00 } //1
		$a_02_2 = {43 61 6c 6c 42 79 4e 61 6d 65 20 90 1d 15 00 2c 20 90 1d 15 00 28 90 1f 02 00 29 2c 20 56 62 4d 65 74 68 6f 64 2c 20 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 90 1d 10 00 2e 74 78 74 22 2c 20 32 90 00 } //2
	condition:
		((#a_02_0  & 1)*2+(#a_02_1  & 1)*1+(#a_02_2  & 1)*2) >=3
 
}