
rule TrojanDownloader_O97M_Ursnif_GM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.GM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {41 74 74 72 69 62 75 74 65 20 56 42 5f 4e 61 6d 65 20 3d 20 22 48 31 22 } //01 00  Attribute VB_Name = "H1"
		$a_00_1 = {50 75 62 6c 69 63 20 43 6f 6e 73 74 20 4d 6a 20 41 73 20 53 74 72 69 6e 67 20 3d 20 22 24 24 24 22 } //01 00  Public Const Mj As String = "$$$"
		$a_00_2 = {50 75 62 6c 69 63 20 43 6f 6e 73 74 20 54 20 41 73 20 53 74 72 69 6e 67 20 3d 20 22 23 23 23 22 } //01 00  Public Const T As String = "###"
		$a_00_3 = {52 65 70 6c 61 63 65 28 4a 6f 69 6e 28 61 72 31 2c 20 22 22 29 2c 20 54 2c 20 76 62 4e 75 6c 6c 53 74 72 69 6e 67 29 } //01 00  Replace(Join(ar1, ""), T, vbNullString)
		$a_02_4 = {53 70 6c 69 74 28 90 02 10 2c 20 4d 6a 29 90 00 } //01 00 
		$a_02_5 = {61 72 31 28 30 29 20 3d 20 22 68 90 02 04 74 90 02 04 74 90 02 04 70 90 02 04 3a 90 02 04 2f 90 02 04 2f 90 02 14 22 90 00 } //01 00 
		$a_02_6 = {61 72 31 28 31 30 29 20 3d 20 90 02 10 2e 90 02 05 64 90 02 05 61 90 02 05 74 90 02 05 22 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}