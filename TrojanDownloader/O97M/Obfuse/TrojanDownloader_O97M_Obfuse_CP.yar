
rule TrojanDownloader_O97M_Obfuse_CP{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CP,SIGNATURE_TYPE_MACROHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 3d 20 4d 69 64 28 } //01 00   = Mid(
		$a_01_1 = {20 3d 20 43 68 72 28 41 73 63 28 } //01 00   = Chr(Asc(
		$a_01_2 = {50 72 69 76 61 74 65 20 53 75 62 20 57 6f 72 6b 62 6f 6f 6b 5f 4f 70 65 6e 28 29 } //01 00  Private Sub Workbook_Open()
		$a_01_3 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 73 63 72 69 70 74 69 6e 67 2e 66 69 6c 65 73 79 73 74 65 6d 6f 62 6a 65 63 74 22 29 } //01 00   = CreateObject("scripting.filesystemobject")
		$a_01_4 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 6d 69 63 72 6f 73 6f 66 74 2e 78 6d 6c 68 74 74 70 22 29 } //01 00   = CreateObject("microsoft.xmlhttp")
		$a_01_5 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 53 68 65 6c 6c 2e 41 70 70 6c 69 63 61 74 69 6f 6e 22 29 } //01 00   = CreateObject("Shell.Application")
		$a_01_6 = {2e 4f 70 65 6e 20 22 47 45 54 22 2c 20 } //01 00  .Open "GET", 
		$a_01_7 = {2e 53 74 61 74 75 73 20 3d 20 32 30 30 20 54 68 65 6e } //01 00  .Status = 200 Then
		$a_01_8 = {20 3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 61 64 6f 64 62 2e 73 74 72 65 61 6d 22 29 } //00 00   = CreateObject("adodb.stream")
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_O97M_Obfuse_CP_2{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.CP,SIGNATURE_TYPE_MACROHSTR_EXT,0c 00 0c 00 14 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 75 62 20 61 75 74 6f 6f 70 65 6e 28 29 } //01 00  Sub autoopen()
		$a_01_1 = {7e 39 2c 32 25 20 2f 56 } //01 00  ~9,2% /V
		$a_01_2 = {7e 39 2c 32 25 20 22 20 2b 20 22 2f 56 3a } //01 00  ~9,2% " + "/V:
		$a_01_3 = {22 2c 32 25 20 2f 56 3a 4f 22 20 2b } //01 00  ",2% /V:O" +
		$a_01_4 = {2b 20 22 39 2c 32 25 20 2f 56 3a 4f 22 } //01 00  + "9,2% /V:O"
		$a_01_5 = {7e 39 2c 32 25 20 2f 22 20 2b 20 22 56 } //01 00  ~9,2% /" + "V
		$a_01_6 = {22 39 2c 32 25 20 2f 56 } //01 00  "9,2% /V
		$a_01_7 = {39 2c 32 25 22 } //01 00  9,2%"
		$a_01_8 = {22 39 2c 32 25 20 22 20 2b } //01 00  "9,2% " +
		$a_01_9 = {7e 39 22 20 2b 20 22 2c 32 25 } //01 00  ~9" + ",2%
		$a_01_10 = {7e 39 2c 22 20 2b 20 22 32 25 } //01 00  ~9," + "2%
		$a_01_11 = {22 2c 32 25 22 20 2b 20 22 20 2f 56 } //01 00  ",2%" + " /V
		$a_01_12 = {22 39 2c 32 25 22 } //01 00  "9,2%"
		$a_03_13 = {46 69 78 28 90 10 07 00 29 90 00 } //0a 00 
		$a_02_14 = {3d 20 53 68 65 6c 6c 28 90 02 80 2c 20 90 10 07 00 20 2d 20 90 10 07 00 29 90 00 } //0a 00 
		$a_02_15 = {3d 20 53 68 65 6c 6c 28 90 02 20 20 2b 20 90 02 20 20 2b 20 90 02 20 2c 20 76 62 48 69 64 65 29 90 00 } //0a 00 
		$a_02_16 = {3d 20 43 68 6f 6f 73 65 28 90 02 40 2c 20 53 68 65 6c 6c 28 90 02 70 2c 20 90 10 07 00 20 2d 20 90 10 07 00 29 90 00 } //0a 00 
		$a_02_17 = {53 68 65 6c 6c 20 22 22 20 2b 20 90 02 80 2c 20 90 00 } //01 00 
		$a_03_18 = {3d 20 48 65 78 28 90 02 10 29 90 00 } //01 00 
		$a_03_19 = {48 65 78 28 90 02 10 20 2a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}