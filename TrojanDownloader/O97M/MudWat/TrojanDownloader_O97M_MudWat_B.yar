
rule TrojanDownloader_O97M_MudWat_B{
	meta:
		description = "TrojanDownloader:O97M/MudWat.B,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_02_0 = {46 75 6e 63 74 69 6f 6e 20 [0-60] 20 3d 20 43 68 72 28 [0-06] 20 2d 20 [0-03] 29 [0-06] 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_02_1 = {46 75 6e 63 74 69 6f 6e 20 [0-60] 20 3d 20 4c 65 66 74 28 [0-06] 2c 20 [0-03] 29 [0-06] 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_02_2 = {46 75 6e 63 74 69 6f 6e 20 [0-60] 20 3d 20 52 69 67 68 74 28 [0-06] 2c 20 4c 65 6e 28 [0-06] 29 20 2d 20 [0-03] 29 [0-06] 45 6e 64 20 46 75 6e 63 74 69 6f 6e } //1
		$a_02_3 = {3d 20 43 61 6c 6c 42 79 4e 61 6d 65 28 [0-10] 28 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? [0-30] 20 22 22 29 2c 20 [0-10] 29 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1+(#a_02_2  & 1)*1+(#a_02_3  & 1)*1) >=4
 
}