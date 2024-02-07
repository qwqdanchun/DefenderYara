
rule TrojanDownloader_O97M_EncDoc_E_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.E!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {52 74 43 6f 6f 6c 4d 6f 6d 20 3d 20 52 74 43 6f 6f 6c 4d 6f 6d 20 2b 20 90 02 15 20 2a 20 53 67 6e 28 90 02 15 20 2b 20 90 02 18 20 2a 20 41 73 73 69 74 65 6e 74 73 29 90 00 } //01 00 
		$a_03_1 = {2e 57 72 69 74 65 4c 69 6e 65 20 28 22 77 73 63 72 69 70 74 20 2f 2f 6e 6f 6c 6f 67 6f 20 63 3a 5c 43 6f 6c 6f 72 66 6f 6e 74 73 33 32 5c 76 69 73 69 74 63 61 72 64 2e 76 62 73 20 68 74 74 70 90 02 01 3a 2f 2f 77 77 77 2e 90 02 18 2e 63 6f 6d 2f 90 02 70 2e 62 69 6e 20 63 3a 5c 43 6f 6c 6f 72 66 6f 6e 74 73 33 32 5c 90 02 10 2e 65 78 65 22 29 90 00 } //01 00 
		$a_01_2 = {26 20 22 7c 22 20 26 20 42 20 26 20 22 7c 22 20 26 } //00 00  & "|" & B & "|" &
	condition:
		any of ($a_*)
 
}