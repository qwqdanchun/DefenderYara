
rule TrojanDownloader_O97M_Obfuse_FQ{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.FQ,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_01_1 = {2e 54 65 78 74 29 } //01 00  .Text)
		$a_01_2 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 20 5f } //01 00  = CreateObject _
		$a_03_3 = {43 61 6c 6c 20 90 02 16 2e 52 75 6e 90 02 01 28 20 5f 90 00 } //01 00 
		$a_01_4 = {2b 20 22 22 2c 20 5f } //00 00  + "", _
	condition:
		any of ($a_*)
 
}