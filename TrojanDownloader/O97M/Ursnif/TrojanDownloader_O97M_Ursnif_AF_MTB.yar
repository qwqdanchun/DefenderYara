
rule TrojanDownloader_O97M_Ursnif_AF_MTB{
	meta:
		description = "TrojanDownloader:O97M/Ursnif.AF!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 43 68 72 28 31 31 35 29 20 2b 20 22 68 22 20 2b 20 22 65 6c 6c 22 } //01 00  = Chr(115) + "h" + "ell"
		$a_01_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //01 00  = CreateObject("Scripting.FileSystemObject")
		$a_01_2 = {2e 43 6f 6e 74 72 6f 6c 73 28 31 29 2e 54 65 78 74 } //01 00  .Controls(1).Text
		$a_01_3 = {2e 43 6f 6e 74 72 6f 6c 73 28 76 62 48 69 64 65 29 } //01 00  .Controls(vbHide)
		$a_01_4 = {2e 4f 70 65 6e } //01 00  .Open
		$a_01_5 = {2e 56 61 6c 75 65 } //01 00  .Value
		$a_03_6 = {2e 57 72 69 74 65 4c 69 6e 65 20 90 02 16 2e 54 65 78 74 90 00 } //01 00 
		$a_01_7 = {41 63 74 69 76 65 44 6f 63 75 6d 65 6e 74 2e 52 61 6e 67 65 2e 50 61 67 65 53 65 74 75 70 2e 4c 65 66 74 4d 61 72 67 69 6e 20 3d 20 } //01 00  ActiveDocument.Range.PageSetup.LeftMargin = 
		$a_01_8 = {2b 20 22 2e 61 70 70 6c 69 63 61 22 20 2b 20 22 74 69 6f 6e 22 } //01 00  + ".applica" + "tion"
		$a_01_9 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //00 00  Sub AutoOpen()
	condition:
		any of ($a_*)
 
}