
rule TrojanDownloader_BAT_Genmaldow_T{
	meta:
		description = "TrojanDownloader:BAT/Genmaldow.T,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 03 00 "
		
	strings :
		$a_03_0 = {49 6e 76 6f 69 63 65 20 23 90 02 0a 2e 65 78 65 90 00 } //01 00 
		$a_01_1 = {5f 41 64 64 52 65 67 69 73 74 72 79 } //01 00  _AddRegistry
		$a_01_2 = {44 6f 77 6e 6c 6f 61 64 46 69 6c 65 46 54 50 } //01 00  DownloadFileFTP
		$a_01_3 = {65 00 78 00 70 00 6f 00 72 00 74 00 3d 00 64 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 26 00 69 00 64 00 3d 00 } //01 00  export=download&id=
		$a_01_4 = {5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 20 00 66 00 69 00 6c 00 65 00 73 00 5c 00 } //01 00  \system files\
		$a_01_5 = {53 00 75 00 62 00 5f 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  Sub_main.exe
		$a_01_6 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //00 00  HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_7 = {5d 04 00 } //00 dc 
	condition:
		any of ($a_*)
 
}