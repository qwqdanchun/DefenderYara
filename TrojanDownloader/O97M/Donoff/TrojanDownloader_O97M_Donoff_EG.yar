
rule TrojanDownloader_O97M_Donoff_EG{
	meta:
		description = "TrojanDownloader:O97M/Donoff.EG,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_03_0 = {3d 20 22 6d 22 90 02 10 3d 20 22 64 22 90 02 10 3d 20 22 20 22 90 02 10 3d 20 22 2f 22 90 02 40 3d 20 22 20 22 90 02 10 3d 20 22 70 22 90 02 40 3d 20 22 6f 22 90 02 10 3d 20 22 77 22 90 02 40 3d 20 22 72 22 90 02 40 3d 20 22 73 22 90 02 10 3d 20 22 68 22 90 00 } //1
		$a_03_1 = {3d 20 22 42 22 90 02 10 3d 20 22 79 22 90 02 10 3d 20 22 50 22 90 02 40 3d 20 22 61 22 90 02 10 3d 20 22 73 22 90 02 10 3d 20 22 73 22 90 02 10 3d 20 22 20 22 90 02 10 3d 20 22 2d 22 90 02 10 3d 20 22 4e 22 90 02 10 3d 20 22 6f 22 90 02 10 3d 20 22 50 22 90 02 40 3d 20 22 72 22 90 02 10 3d 20 22 6f 22 90 02 10 3d 20 22 66 22 90 00 } //1
		$a_03_2 = {3d 20 22 6c 22 90 02 10 3d 20 22 27 22 90 02 10 3d 20 22 2b 22 90 02 10 3d 20 22 27 22 90 02 10 3d 20 22 6f 22 90 02 10 3d 20 22 61 22 90 02 10 3d 20 22 64 22 90 02 10 3d 20 22 66 22 90 02 10 3d 20 22 69 22 90 02 10 3d 20 22 6c 22 90 00 } //1
		$a_03_3 = {3d 20 22 73 22 90 02 10 3d 20 22 74 22 90 02 10 3d 20 22 61 22 90 02 10 3d 20 22 72 22 90 02 10 3d 20 22 54 22 90 02 10 3d 20 22 2d 22 90 02 10 3d 20 22 50 22 90 02 10 3d 20 22 72 22 90 02 10 3d 20 22 6f 22 90 00 } //1
		$a_00_4 = {20 2b 20 22 2f 67 6f 6f 64 74 6f 74 72 79 2f 22 } //1  + "/goodtotry/"
		$a_03_5 = {3d 20 41 72 72 61 79 28 22 90 01 02 90 02 10 22 2c 20 53 68 65 6c 6c 28 90 01 04 90 02 10 2c 20 30 29 29 90 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1+(#a_03_2  & 1)*1+(#a_03_3  & 1)*1+(#a_00_4  & 1)*1+(#a_03_5  & 1)*1) >=6
 
}