
rule TrojanDownloader_O97M_Obfuse_PQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_00_0 = {3d 20 70 61 74 68 44 61 74 61 20 26 20 22 5c 76 73 68 6f 73 74 76 62 61 2e 63 72 79 22 } //01 00  = pathData & "\vshostvba.cry"
		$a_02_1 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 53 63 72 69 70 74 2e 53 68 65 6c 6c 22 29 2e 45 78 65 63 20 70 61 74 68 44 61 74 61 20 26 20 22 5c 90 02 20 2e 65 78 65 22 90 00 } //01 00 
		$a_02_2 = {2e 57 72 69 74 65 20 43 68 72 28 41 73 63 28 6f 62 6a 53 74 72 65 61 6d 49 6e 2e 52 65 61 64 28 31 29 29 20 58 6f 72 20 90 02 10 28 69 29 29 90 00 } //00 00 
		$a_00_3 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}