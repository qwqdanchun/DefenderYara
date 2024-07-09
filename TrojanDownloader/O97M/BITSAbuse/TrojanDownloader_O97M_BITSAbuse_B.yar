
rule TrojanDownloader_O97M_BITSAbuse_B{
	meta:
		description = "TrojanDownloader:O97M/BITSAbuse.B,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_02_0 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 74 72 61 6e 73 66 65 72 [0-40] 2f 75 70 6c 6f 61 64 } //10
		$a_02_1 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 74 72 61 6e 73 66 65 72 [0-f0] 68 74 74 70 } //10
		$a_02_2 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 64 6f 77 6e 6c 6f 61 64 [0-f0] 68 74 74 70 } //10
		$a_02_3 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 61 64 64 66 69 6c 65 [0-f0] 68 74 74 70 } //10
		$a_02_4 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 73 65 74 6e 6f 74 69 66 79 63 6d 64 6c 69 6e 65 [0-f0] 68 74 74 70 } //10
		$a_02_5 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 73 65 74 6e 6f 74 69 66 79 63 6d 64 6c 69 6e 65 [0-f0] 63 6d 64 2e 65 78 65 } //10
		$a_02_6 = {62 69 74 73 61 64 6d 69 6e [0-10] 2f 73 65 74 6e 6f 74 69 66 79 63 6d 64 6c 69 6e 65 [0-f0] 62 69 74 73 61 64 6d 69 6e } //10
		$a_02_7 = {63 6f 70 79 [0-40] 5c 62 69 74 73 61 64 6d 69 6e 2e 65 78 65 [0-40] 2e 65 78 65 } //10
	condition:
		((#a_02_0  & 1)*10+(#a_02_1  & 1)*10+(#a_02_2  & 1)*10+(#a_02_3  & 1)*10+(#a_02_4  & 1)*10+(#a_02_5  & 1)*10+(#a_02_6  & 1)*10+(#a_02_7  & 1)*10) >=10
 
}