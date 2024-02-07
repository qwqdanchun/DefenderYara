
rule TrojanDownloader_BAT_PsDownload_MA_MTB{
	meta:
		description = "TrojanDownloader:BAT/PsDownload.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 0f 00 00 01 00 "
		
	strings :
		$a_01_0 = {66 00 69 00 69 00 69 00 69 00 } //01 00  fiiii
		$a_01_1 = {69 00 69 00 72 00 72 00 73 00 74 00 2e 00 74 00 78 00 74 00 } //01 00  iirrst.txt
		$a_03_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 60 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 44 61 74 61 } //01 00  DownloadData
		$a_01_4 = {70 00 6f 00 77 00 65 00 72 00 73 00 68 00 65 00 6c 00 6c 00 } //01 00  powershell
		$a_01_5 = {2d 00 65 00 6e 00 63 00 } //01 00  -enc
		$a_01_6 = {74 69 6d 65 72 31 5f 54 69 63 6b } //01 00  timer1_Tick
		$a_01_7 = {67 65 74 5f 4b 65 79 43 6f 64 65 } //01 00  get_KeyCode
		$a_01_8 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //01 00  DebuggableAttribute
		$a_01_9 = {61 64 64 5f 4b 65 79 44 6f 77 6e } //01 00  add_KeyDown
		$a_01_10 = {73 65 74 5f 53 75 70 70 72 65 73 73 4b 65 79 50 72 65 73 73 } //01 00  set_SuppressKeyPress
		$a_01_11 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //01 00  GetFolderPath
		$a_01_12 = {54 6f 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  ToBase64String
		$a_01_13 = {47 65 74 42 79 74 65 73 } //01 00  GetBytes
		$a_01_14 = {44 6f 77 6e 6c 6f 61 64 53 74 72 69 6e 67 } //00 00  DownloadString
	condition:
		any of ($a_*)
 
}