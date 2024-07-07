
rule TrojanDownloader_O97M_Obfusmacro_AV_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfusmacro.AV!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 08 00 00 "
		
	strings :
		$a_03_0 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 96 2b 20 22 77 37 38 69 37 38 6e 37 38 6d 67 37 38 6d 74 73 37 38 3a 57 69 37 38 6e 33 32 37 38 5f 50 72 37 38 6f 63 65 37 38 73 73 22 29 29 90 00 } //10
		$a_03_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 96 2b 20 22 77 36 30 69 36 30 6e 36 30 6d 67 36 30 6d 74 73 36 30 3a 57 69 36 30 6e 33 32 36 30 5f 50 72 36 30 6f 63 65 36 30 73 73 22 29 29 90 00 } //10
		$a_03_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 96 2b 20 22 77 38 34 69 38 34 6e 38 34 6d 67 38 34 6d 74 73 38 34 3a 57 69 38 34 6e 33 32 38 34 5f 50 72 38 34 6f 63 65 38 34 73 73 22 29 29 90 00 } //10
		$a_03_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 96 22 71 77 6c 68 6c 73 61 64 77 71 77 6c 68 6c 73 61 64 69 6e 6d 71 77 6c 68 6c 73 61 64 67 6d 71 77 6c 68 6c 73 61 64 74 73 3a 57 71 77 6c 68 6c 73 61 64 69 6e 33 71 77 6c 68 6c 73 61 64 32 5f 50 71 77 6c 68 6c 73 61 64 72 71 77 6c 68 6c 73 61 64 6f 63 65 71 77 6c 68 6c 73 61 64 73 73 71 77 6c 68 6c 73 61 64 22 29 29 90 00 } //10
		$a_03_4 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 96 22 69 77 71 68 77 6c 73 61 77 69 77 71 68 77 6c 73 61 69 6e 6d 69 77 71 68 77 6c 73 61 67 6d 69 77 71 68 77 6c 73 61 74 73 3a 57 69 77 71 68 77 6c 73 61 69 6e 33 69 77 71 68 77 6c 73 61 32 5f 50 69 77 71 68 77 6c 73 61 72 69 77 71 68 77 6c 73 61 6f 63 65 69 77 71 68 77 6c 73 61 73 73 69 77 71 68 77 6c 73 61 22 29 29 90 00 } //10
		$a_03_5 = {2e 43 72 65 61 74 65 28 90 02 38 2c 90 00 } //1
		$a_03_6 = {3d 20 48 65 78 28 90 02 38 2f 90 02 38 29 90 00 } //1
		$a_01_7 = {2e 53 68 6f 77 57 69 6e 64 6f 77 20 3d } //1 .ShowWindow =
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10+(#a_03_2  & 1)*10+(#a_03_3  & 1)*10+(#a_03_4  & 1)*10+(#a_03_5  & 1)*1+(#a_03_6  & 1)*1+(#a_01_7  & 1)*1) >=12
 
}