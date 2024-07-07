
rule TrojanDownloader_O97M_Donoff_DR{
	meta:
		description = "TrojanDownloader:O97M/Donoff.DR,SIGNATURE_TYPE_MACROHSTR_EXT,18 00 18 00 0d 00 00 "
		
	strings :
		$a_00_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 6d 6f 64 65 22 } //20 Attribute VB_Name = "mode"
		$a_00_1 = {20 3d 20 22 63 4d 64 22 } //1  = "cMd"
		$a_00_2 = {20 3d 20 22 2e 65 78 22 } //1  = ".ex"
		$a_00_3 = {20 3d 20 22 70 6f 5e 22 } //1  = "po^"
		$a_00_4 = {20 3d 20 22 57 65 5e 22 } //1  = "We^"
		$a_00_5 = {20 3d 20 22 52 53 48 22 } //1  = "RSH"
		$a_00_6 = {20 3d 20 22 44 6f 57 22 } //1  = "DoW"
		$a_00_7 = {20 3d 20 22 63 6d 22 } //1  = "cm"
		$a_00_8 = {20 3d 20 22 64 2e 22 } //1  = "d."
		$a_00_9 = {20 3d 20 22 65 78 22 } //1  = "ex"
		$a_00_10 = {20 3d 20 22 2f 43 22 } //1  = "/C"
		$a_00_11 = {20 3d 20 22 70 6f 22 } //1  = "po"
		$a_00_12 = {20 3d 20 22 57 45 22 } //1  = "WE"
	condition:
		((#a_00_0  & 1)*20+(#a_00_1  & 1)*1+(#a_00_2  & 1)*1+(#a_00_3  & 1)*1+(#a_00_4  & 1)*1+(#a_00_5  & 1)*1+(#a_00_6  & 1)*1+(#a_00_7  & 1)*1+(#a_00_8  & 1)*1+(#a_00_9  & 1)*1+(#a_00_10  & 1)*1+(#a_00_11  & 1)*1+(#a_00_12  & 1)*1) >=24
 
}