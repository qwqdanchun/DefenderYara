
rule TrojanDownloader_O97M_EncDoc_TRC_MTB{
	meta:
		description = "TrojanDownloader:O97M/EncDoc.TRC!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 66 20 57 69 6e 36 34 20 54 68 65 6e } //01 00  If Win64 Then
		$a_01_1 = {41 6c 69 61 73 20 22 55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 22 20 28 42 79 56 61 6c 20 70 43 61 6c 6c 65 72 20 41 73 20 4c 6f 6e 67 2c 20 5f } //01 00  Alias "URLDownloadToFileA" (ByVal pCaller As Long, _
		$a_03_2 = {42 79 56 61 6c 20 64 77 52 65 73 65 72 76 65 64 20 41 73 20 4c 6f 6e 67 2c 20 42 79 56 61 6c 20 6c 70 66 6e 43 42 20 41 73 20 4c 6f 6e 67 29 20 41 73 20 4c 6f 6e 67 90 0c 02 00 23 45 6e 64 20 49 66 90 00 } //01 00 
		$a_01_3 = {50 75 62 6c 69 63 20 46 75 6e 63 74 69 6f 6e 20 74 72 65 73 28 29 } //01 00  Public Function tres()
		$a_01_4 = {42 65 72 74 69 20 3d 20 22 68 74 74 70 3a 2f 2f 22 } //01 00  Berti = "http://"
		$a_01_5 = {47 75 69 6b 67 68 6a 67 66 68 20 3d 20 42 65 72 74 69 20 26 20 53 68 65 65 74 73 28 22 46 69 6c 65 73 22 29 2e 52 61 6e 67 65 28 22 42 36 30 22 29 } //01 00  Guikghjgfh = Berti & Sheets("Files").Range("B60")
		$a_01_6 = {42 74 64 75 66 6a 6b 68 6e 20 3d 20 53 68 65 65 74 73 28 22 46 69 6c 65 73 22 29 2e 52 61 6e 67 65 28 22 42 35 36 22 29 } //01 00  Btdufjkhn = Sheets("Files").Range("B56")
		$a_03_7 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 20 30 2c 20 47 75 69 6b 67 68 6a 67 66 68 2c 20 42 74 64 75 66 6a 6b 68 6e 2c 20 30 2c 20 30 90 0c 02 00 45 6e 64 20 46 75 6e 63 74 69 6f 6e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}