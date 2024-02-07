
rule TrojanDownloader_O97M_Powdow_RVJ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Powdow.RVJ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {22 70 22 20 2b 20 22 6f 22 20 2b 20 22 77 22 20 2b 20 22 65 22 20 2b 20 22 72 22 20 2b 20 22 73 22 20 2b 20 22 68 22 20 2b 20 22 65 22 20 2b 20 22 6c 22 20 2b 20 22 6c 22 20 2b 20 22 2e 22 20 2b 20 22 65 22 20 2b 20 22 78 22 20 2b 20 22 65 22 } //01 00  "p" + "o" + "w" + "e" + "r" + "s" + "h" + "e" + "l" + "l" + "." + "e" + "x" + "e"
		$a_01_1 = {2b 20 22 68 22 20 2b 20 22 74 22 20 2b 20 22 74 22 20 2b 20 22 70 22 20 2b 20 22 73 22 20 2b 20 22 3a 22 20 2b 20 22 2f 22 20 2b 20 22 2f 22 20 2b 20 22 77 22 20 2b 20 22 77 77 22 20 2b 20 22 2e 22 20 2b 20 22 62 69 74 6c 22 } //01 00  + "h" + "t" + "t" + "p" + "s" + ":" + "/" + "/" + "w" + "ww" + "." + "bitl"
		$a_01_2 = {75 37 20 3d 20 22 22 20 2b 20 22 79 2e 63 6f 6d 2f } //01 00  u7 = "" + "y.com/
		$a_01_3 = {69 69 20 3d 20 75 35 20 2b 20 75 36 20 2b 20 75 37 20 2b 20 75 38 } //00 00  ii = u5 + u6 + u7 + u8
	condition:
		any of ($a_*)
 
}