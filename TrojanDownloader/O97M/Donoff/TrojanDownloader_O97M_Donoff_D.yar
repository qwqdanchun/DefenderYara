
rule TrojanDownloader_O97M_Donoff_D{
	meta:
		description = "TrojanDownloader:O97M/Donoff.D,SIGNATURE_TYPE_MACROHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {53 65 74 41 74 74 72 20 90 02 0a 2c 20 76 62 4e 6f 72 6d 61 6c 90 02 10 4b 69 6c 6c 20 90 00 } //01 00 
		$a_01_1 = {3d 20 43 72 65 61 74 65 4f 62 6a 65 63 74 28 22 57 69 6e 48 74 74 70 2e 57 69 6e 48 74 74 70 52 65 71 75 65 73 74 2e 35 2e 31 22 29 } //01 00  = CreateObject("WinHttp.WinHttpRequest.5.1")
		$a_03_2 = {2e 52 65 73 70 6f 6e 73 65 42 6f 64 79 90 02 20 2e 53 61 76 65 54 6f 46 69 6c 65 20 28 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 90 02 08 2e 65 78 65 22 29 90 00 } //01 00 
		$a_03_3 = {3d 20 53 68 65 6c 6c 28 45 6e 76 69 72 6f 6e 28 22 54 45 4d 50 22 29 20 26 20 22 5c 90 02 08 2e 65 78 65 22 2c 90 00 } //01 00 
		$a_01_4 = {3d 20 28 44 69 72 28 46 69 6c 65 54 6f 54 65 73 74 29 20 3c 3e 20 22 22 29 } //00 00  = (Dir(FileToTest) <> "")
	condition:
		any of ($a_*)
 
}