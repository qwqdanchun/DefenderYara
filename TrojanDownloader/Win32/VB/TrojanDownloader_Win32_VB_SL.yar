
rule TrojanDownloader_Win32_VB_SL{
	meta:
		description = "TrojanDownloader:Win32/VB.SL,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {62 61 69 78 6f 61 73 73 69 6e 61 64 6f } //01 00  baixoassinado
		$a_00_1 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_00_2 = {53 00 57 00 53 00 65 00 74 00 5c 00 73 00 65 00 74 00 75 00 70 00 2e 00 65 00 78 00 65 00 } //01 00  SWSet\setup.exe
		$a_00_3 = {50 00 6c 00 67 00 20 00 41 00 64 00 6f 00 62 00 65 00 } //01 00  Plg Adobe
		$a_02_4 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 6e 00 6f 00 76 00 69 00 6d 00 5c 00 6e 00 65 00 77 00 90 02 10 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_02_5 = {44 00 65 00 73 00 6b 00 74 00 6f 00 70 00 5c 00 6c 00 6f 00 61 00 64 00 65 00 72 00 20 00 6e 00 6f 00 76 00 6f 00 5c 00 6e 00 65 00 77 00 90 02 10 2e 00 76 00 62 00 70 00 90 00 } //01 00 
		$a_02_6 = {6c 00 6f 00 64 00 65 00 72 00 20 00 66 00 69 00 6c 00 65 00 20 00 76 00 62 00 20 00 6e 00 6f 00 76 00 6f 00 90 02 20 2e 00 76 00 62 00 70 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}