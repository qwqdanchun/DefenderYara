
rule TrojanDownloader_O97M_Obfuse_GE{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.GE,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_03_1 = {2e 52 75 6e 21 20 90 02 20 20 5f 90 00 } //01 00 
		$a_01_2 = {3d 20 56 42 41 2e 20 5f } //01 00  = VBA. _
		$a_01_3 = {2e 54 65 78 74 } //01 00  .Text
		$a_03_4 = {2b 20 76 62 4e 75 6c 6c 90 02 11 20 5f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}