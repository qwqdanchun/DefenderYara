
rule TrojanDownloader_BAT_Small_MA_MTB{
	meta:
		description = "TrojanDownloader:BAT/Small.MA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 63 00 64 00 6e 00 2e 00 64 00 69 00 73 00 63 00 6f 00 72 00 64 00 61 00 70 00 70 00 2e 00 63 00 6f 00 6d 00 2f 00 61 00 74 00 74 00 61 00 63 00 68 00 6d 00 65 00 6e 00 74 00 73 00 2f 00 90 02 60 2f 00 43 00 72 00 61 00 62 00 43 00 68 00 65 00 61 00 74 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_1 = {47 65 74 54 65 6d 70 50 61 74 68 } //01 00  GetTempPath
		$a_01_2 = {48 00 61 00 6e 00 64 00 6c 00 65 00 45 00 78 00 65 00 63 00 75 00 74 00 6f 00 72 00 } //01 00  HandleExecutor
		$a_01_3 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 } //01 00  DownloadFile
		$a_01_4 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}