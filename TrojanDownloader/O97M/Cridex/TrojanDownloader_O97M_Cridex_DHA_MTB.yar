
rule TrojanDownloader_O97M_Cridex_DHA_MTB{
	meta:
		description = "TrojanDownloader:O97M/Cridex.DHA!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,1f 00 1f 00 07 00 00 01 00 "
		
	strings :
		$a_03_0 = {2f 6d 6f 63 2e 90 02 0f 2f 2f 3a 70 74 74 68 22 2c 90 00 } //01 00 
		$a_81_1 = {28 53 74 72 52 65 76 65 72 73 65 28 22 70 6d 65 74 22 29 29 20 26 20 22 5c 73 6e 2e 74 6d 70 22 } //0a 00  (StrReverse("pmet")) & "\sn.tmp"
		$a_81_2 = {28 53 74 72 52 65 76 65 72 73 65 28 22 3d 3d 77 63 7a 56 32 59 76 4a 48 55 66 4a 7a 4d 75 6c 32 56 36 4d 48 64 74 64 57 62 75 6c 32 64 22 29 29 } //01 00  (StrReverse("==wczV2YvJHUfJzMul2V6MHdtdWbul2d"))
		$a_03_3 = {3d 20 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 28 90 02 05 26 2c 20 53 74 72 52 65 76 65 72 73 65 28 90 02 05 29 2c 90 00 } //0a 00 
		$a_03_4 = {2e 43 72 65 61 74 65 20 90 02 05 2e 90 02 05 28 29 20 2b 20 22 72 33 32 20 22 20 2b 20 90 00 } //0a 00 
		$a_03_5 = {2e 43 72 65 61 74 65 4f 62 6a 65 63 74 28 90 02 05 28 90 02 05 29 29 90 00 } //01 00 
		$a_81_6 = {3d 20 53 74 72 52 65 76 65 72 73 65 28 22 76 73 67 65 72 22 29 } //00 00  = StrReverse("vsger")
	condition:
		any of ($a_*)
 
}