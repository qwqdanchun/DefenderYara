
rule TrojanDownloader_O97M_Powdow_SMW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.SMW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 07 00 00 "
		
	strings :
		$a_01_0 = {4c 6f 61 64 65 72 20 22 36 38 20 37 34 20 37 34 20 37 30 20 37 33 20 33 41 20 32 46 20 32 46 20 36 39 20 36 45 20 37 33 20 37 34 20 36 39 20 37 34 20 37 35 20 37 34 20 36 46 20 36 36 20 36 31 20 37 32 20 36 44 20 37 35 20 36 45 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 37 30 20 37 32 20 36 39 20 36 45 20 36 33 20 36 35 20 32 45 20 36 35 20 37 38 20 36 35 } //1 Loader "68 74 74 70 73 3A 2F 2F 69 6E 73 74 69 74 75 74 6F 66 61 72 6D 75 6E 2E 63 6F 6D 2F 70 72 69 6E 63 65 2E 65 78 65
		$a_01_1 = {2e 4f 70 65 6e 20 22 47 22 20 2b 20 22 45 22 20 2b 20 22 54 22 2c 20 55 72 6c } //1 .Open "G" + "E" + "T", Url
		$a_01_2 = {28 22 34 33 20 33 61 20 35 63 20 35 35 20 37 33 20 36 35 20 37 32 20 37 33 20 35 63 20 35 30 20 37 35 20 36 32 20 36 63 20 36 39 20 36 33 20 35 63 20 37 33 20 37 36 20 36 33 20 36 38 20 36 66 20 37 33 20 37 34 20 33 33 20 33 32 20 32 65 20 36 35 20 37 38 20 36 35 22 29 } //1 ("43 3a 5c 55 73 65 72 73 5c 50 75 62 6c 69 63 5c 73 76 63 68 6f 73 74 33 32 2e 65 78 65")
		$a_03_3 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 50 28 22 35 37 20 35 33 20 36 33 20 37 32 20 36 39 20 37 30 20 37 34 20 32 65 20 35 33 20 36 38 20 36 35 20 36 63 20 36 63 20 22 29 29 90 00 } //1
		$a_01_4 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 37 37 20 37 37 20 37 37 20 32 45 20 36 35 20 37 30 20 37 39 20 36 46 20 37 32 20 36 42 20 36 35 20 32 45 20 36 35 20 36 34 20 37 35 20 32 45 20 36 32 20 37 41 20 32 46 20 32 46 20 36 43 20 36 39 20 36 32 20 37 32 20 36 31 20 37 32 20 36 39 20 36 35 20 37 33 20 32 46 20 35 33 20 37 35 20 36 45 20 36 34 20 36 46 20 37 37 20 36 45 20 32 45 20 36 35 20 37 38 20 36 35 } //1 68 74 74 70 3A 2F 2F 77 77 77 2E 65 70 79 6F 72 6B 65 2E 65 64 75 2E 62 7A 2F 2F 6C 69 62 72 61 72 69 65 73 2F 53 75 6E 64 6F 77 6E 2E 65 78 65
		$a_01_5 = {36 38 20 37 34 20 37 34 20 37 30 20 37 33 20 33 41 20 32 46 20 32 46 20 36 44 20 36 31 20 36 45 20 36 31 20 36 37 20 36 35 20 36 34 20 32 45 20 36 46 20 37 33 20 37 33 20 32 44 20 36 33 20 36 45 20 32 44 20 36 32 20 36 35 20 36 39 20 36 41 20 36 39 20 36 45 20 36 37 20 32 45 20 36 31 20 36 43 20 36 39 20 37 39 20 37 35 20 36 45 20 36 33 20 37 33 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 34 46 20 36 45 20 37 39 20 36 35 20 36 44 20 35 46 20 36 44 20 36 44 20 32 45 20 36 35 20 37 38 20 36 35 } //1 68 74 74 70 73 3A 2F 2F 6D 61 6E 61 67 65 64 2E 6F 73 73 2D 63 6E 2D 62 65 69 6A 69 6E 67 2E 61 6C 69 79 75 6E 63 73 2E 63 6F 6D 2F 4F 6E 79 65 6D 5F 6D 6D 2E 65 78 65
		$a_01_6 = {36 38 20 37 34 20 37 34 20 37 30 20 33 41 20 32 46 20 32 46 20 36 44 20 36 31 20 37 33 20 37 33 20 36 34 20 36 39 20 37 33 20 37 30 20 32 45 20 36 33 20 36 46 20 36 44 20 32 46 20 36 39 20 36 44 20 36 37 20 37 33 20 32 46 20 37 34 20 36 35 20 36 44 20 37 30 20 32 46 20 37 30 20 37 32 20 36 35 20 36 34 20 36 37 20 36 36 20 37 32 20 37 34 20 32 45 20 36 35 20 37 38 20 36 35 } //1 68 74 74 70 3A 2F 2F 6D 61 73 73 64 69 73 70 2E 63 6F 6D 2F 69 6D 67 73 2F 74 65 6D 70 2F 70 72 65 64 67 66 72 74 2E 65 78 65
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_03_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=4
 
}