
rule TrojanDownloader_O97M_Ursnif_AE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 43 68 72 28 31 31 35 29 20 2b 20 22 68 22 20 2b 20 22 65 6c 6c 22 } //01 00  = Chr(115) + "h" + "ell"
		$a_03_1 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 90 02 12 29 90 00 } //01 00 
		$a_01_2 = {2e 43 6f 6e 74 72 6f 6c 73 28 31 29 2e 56 61 6c 75 65 } //01 00  .Controls(1).Value
		$a_01_3 = {3d 20 46 69 78 28 } //01 00  = Fix(
		$a_01_4 = {2e 43 6f 6e 74 72 6f 6c 73 28 30 20 2b 20 31 29 } //01 00  .Controls(0 + 1)
		$a_01_5 = {2e 4f 70 65 6e } //01 00  .Open
		$a_03_6 = {2e 57 72 69 74 65 4c 69 6e 65 20 90 02 12 2e 56 61 6c 75 65 90 00 } //01 00 
		$a_01_7 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //00 00  Sub AutoOpen()
	condition:
		any of ($a_*)
 
}