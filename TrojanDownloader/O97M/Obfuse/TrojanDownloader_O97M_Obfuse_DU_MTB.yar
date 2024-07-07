
rule TrojanDownloader_O97M_Obfuse_DU_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.DU!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 "
		
	strings :
		$a_01_0 = {31 31 30 2c 31 31 35 2c 31 32 33 2c 31 30 33 2c 31 30 30 2c 31 32 31 2c 31 31 30 2c 31 32 31 } //1 110,115,123,103,100,121,110,121
		$a_01_1 = {31 30 34 2c 34 39 2c 38 37 2c 31 32 33 2c 31 32 31 2c 31 30 30 2c 31 30 38 2c 31 32 31 2c 31 30 36 2c 31 30 32 2c 31 31 31 2c 31 30 36 2c 31 32 37 2c 31 30 36 2c 38 37 2c 31 30 36 2c 38 31 2c 31 31 30 2c 36 33 2c 36 36 2c 33 37 2c 39 39 2c 31 32 37 2c 31 30 36 } //1 104,49,87,123,121,100,108,121,106,102,111,106,127,106,87,106,81,110,63,66,37,99,127,106
		$a_03_2 = {2e 53 68 65 6c 6c 45 78 65 63 75 74 65 20 90 02 0f 2c 20 22 20 22 2c 20 53 57 5f 53 48 4f 57 4e 4f 52 4d 41 4c 90 00 } //1
		$a_01_3 = {61 67 65 75 30 6f 28 61 58 4c 42 41 28 61 55 30 43 6d 77 29 20 58 6f 72 20 31 31 29 } //1 ageu0o(aXLBA(aU0Cmw) Xor 11)
		$a_01_4 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 43 6f 6e 74 65 6e 74 } //1 ActiveDocument.Content
		$a_01_5 = {53 70 6c 69 74 28 61 71 47 6d 6e 2c 20 43 68 72 28 31 31 20 2b 20 33 33 29 29 } //1 Split(aqGmn, Chr(11 + 33))
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_03_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1) >=6
 
}