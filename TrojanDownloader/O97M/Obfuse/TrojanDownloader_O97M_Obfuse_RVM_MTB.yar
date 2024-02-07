
rule TrojanDownloader_O97M_Obfuse_RVM_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.RVM!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {76 62 30 39 20 3d 20 47 65 74 4f 62 6a 65 63 74 28 22 6e 65 77 3a 37 32 43 32 34 44 44 35 2d 44 37 30 41 2d 34 33 38 42 2d 38 41 34 32 2d 39 38 34 32 34 42 38 38 41 46 42 38 22 29 } //01 00  vb09 = GetObject("new:72C24DD5-D70A-438B-8A42-98424B88AFB8")
		$a_00_1 = {2e 50 61 72 61 67 72 61 70 68 73 2e 43 6f 75 6e 74 20 54 6f 20 31 20 53 74 65 70 20 2d 31 } //01 00  .Paragraphs.Count To 1 Step -1
		$a_02_2 = {3d 20 52 65 70 6c 61 63 65 28 90 02 09 2c 20 22 90 02 0c 22 2c 20 22 22 29 90 00 } //01 00 
		$a_02_3 = {76 62 30 39 2e 52 75 6e 20 47 72 61 76 69 74 79 20 26 20 22 22 20 26 20 90 02 09 2c 20 30 2e 30 30 30 31 90 00 } //01 00 
		$a_00_4 = {43 61 6c 6c 20 6e 6d 6e 67 74 79 79 } //01 00  Call nmngtyy
		$a_00_5 = {6f 52 6e 67 2e 4d 6f 76 65 45 6e 64 57 68 69 6c 65 20 43 68 72 28 33 32 29 } //01 00  oRng.MoveEndWhile Chr(32)
		$a_00_6 = {4d 73 67 42 6f 78 20 22 54 68 69 73 20 69 73 20 62 6f 6c 64 22 } //00 00  MsgBox "This is bold"
	condition:
		any of ($a_*)
 
}