
rule TrojanDownloader_O97M_Emotet_SAW_MTB{
	meta:
		description = "TrojanDownloader:O97M/Emotet.SAW!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 3d 20 22 78 20 5b 20 73 68 20 62 72 6f 78 20 5b 20 73 68 20 62 78 20 5b 20 73 68 20 62 63 65 78 20 5b 20 73 68 20 62 73 78 20 5b 20 73 68 20 62 73 78 20 5b 20 73 68 20 62 78 20 5b 20 73 68 20 62 22 } //01 00   = "x [ sh brox [ sh bx [ sh bcex [ sh bsx [ sh bsx [ sh bx [ sh b"
		$a_01_1 = {20 3d 20 22 78 20 5b 20 73 68 20 62 3a 77 78 20 5b 20 73 68 20 62 78 20 5b 20 73 68 20 62 69 6e 78 20 5b 20 73 68 20 62 33 78 20 5b 20 73 68 20 62 32 78 20 5b 20 73 68 20 62 5f 78 20 5b 20 73 68 20 62 22 } //01 00   = "x [ sh b:wx [ sh bx [ sh binx [ sh b3x [ sh b2x [ sh b_x [ sh b"
		$a_01_2 = {20 3d 20 22 77 78 20 5b 20 73 68 20 62 69 6e 78 20 5b 20 73 68 20 62 6d 78 20 5b 20 73 68 20 62 67 6d 78 20 5b 20 73 68 20 62 74 78 20 5b 20 73 68 20 62 78 20 5b 20 73 68 20 62 22 } //01 00   = "wx [ sh binx [ sh bmx [ sh bgmx [ sh btx [ sh bx [ sh b"
		$a_03_3 = {20 3d 20 52 65 70 6c 61 63 65 28 90 02 25 2c 20 22 78 20 5b 20 73 68 20 62 22 2c 20 90 02 25 29 90 00 } //01 00 
		$a_03_4 = {2e 43 72 65 61 74 65 20 90 02 20 2c 20 90 02 20 2c 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}