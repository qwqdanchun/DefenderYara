
rule TrojanDownloader_O97M_Donoff_CE{
	meta:
		description = "TrojanDownloader:O97M/Donoff.CE,SIGNATURE_TYPE_MACROHSTR_EXT,0f 00 0f 00 07 00 00 "
		
	strings :
		$a_02_0 = {53 68 65 6c 6c 20 (43 68 72 28 36 37 29 20 26 20 43 68 72 28 37 37 29 20 26 20 43 68 72 28 31 30 30 29 20 26 20 22 20|22 63 4d 64 20) 90 05 35 01 20 2f 63 20 63 64 20 90 05 35 01 20 25 41 70 70 64 61 74 61 25 20 90 05 04 01 20 26 90 05 03 01 20 40 65 63 68 6f } //4
		$a_02_1 = {2e 76 62 73 20 90 05 01 01 20 26 40 65 63 68 6f 20 45 6e 64 20 46 75 6e 63 74 69 6f 6e 20 3e 3e } //3
		$a_01_2 = {2e 52 65 73 70 6f 6e 73 65 42 6f 64 79 3e 3e } //2 .ResponseBody>>
		$a_01_3 = {2e 73 65 6e 64 20 28 22 22 22 22 29 3e 3e } //2 .send ("""")>>
		$a_02_4 = {2e 76 62 73 20 90 05 01 01 20 26 20 74 69 6d 65 6f 75 74 20 31 (32|33) 20 26 } //4
		$a_02_5 = {53 68 65 6c 6c 20 43 68 72 28 90 10 04 00 20 2d 20 90 10 04 00 29 20 26 20 43 68 72 28 90 10 04 00 20 2d 20 90 10 04 00 29 20 26 20 43 68 72 28 90 10 04 00 20 2d 20 90 10 04 00 29 20 26 20 43 68 72 28 90 10 04 00 20 2d 20 90 10 04 00 29 20 26 20 43 68 72 28 90 10 04 00 20 2d 20 90 10 04 00 29 20 26 20 43 68 72 28 } //2
		$a_02_6 = {2e 53 61 76 65 54 6f 46 69 6c 65 20 [0-38] 2e 43 6c 6f 73 65 3e 3e } //2
	condition:
		((#a_02_0  & 1)*4+(#a_02_1  & 1)*3+(#a_01_2  & 1)*2+(#a_01_3  & 1)*2+(#a_02_4  & 1)*4+(#a_02_5  & 1)*2+(#a_02_6  & 1)*2) >=15
 
}