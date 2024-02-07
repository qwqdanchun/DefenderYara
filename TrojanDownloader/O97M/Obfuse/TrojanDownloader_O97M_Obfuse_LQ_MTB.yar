
rule TrojanDownloader_O97M_Obfuse_LQ_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.LQ!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {2e 43 72 65 61 74 65 54 65 78 74 46 69 6c 65 28 90 02 15 2e 43 6f 6e 74 72 6f 6c 73 28 31 29 2e 56 61 6c 75 65 2c 20 54 72 75 65 29 90 00 } //01 00 
		$a_03_1 = {2e 57 72 69 74 65 4c 69 6e 65 20 28 90 02 15 2e 43 6f 6e 74 72 6f 6c 73 28 30 29 2e 43 61 70 74 69 6f 6e 29 90 00 } //01 00 
		$a_03_2 = {43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 2e 4f 70 65 6e 20 90 02 15 2e 43 6f 6e 74 72 6f 6c 73 28 31 29 2e 56 61 6c 75 65 90 00 } //01 00 
		$a_01_3 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 63 72 69 70 74 69 6e 67 2e 46 69 6c 65 53 79 73 74 65 6d 4f 62 6a 65 63 74 22 29 } //01 00  = CreateObject("Scripting.FileSystemObject")
		$a_01_4 = {53 75 62 20 41 75 74 6f 4f 70 65 6e 28 29 } //01 00  Sub AutoOpen()
		$a_01_5 = {2e 43 6c 6f 73 65 } //00 00  .Close
	condition:
		any of ($a_*)
 
}