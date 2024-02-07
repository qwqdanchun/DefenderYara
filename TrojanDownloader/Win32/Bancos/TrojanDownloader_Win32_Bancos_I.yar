
rule TrojanDownloader_Win32_Bancos_I{
	meta:
		description = "TrojanDownloader:Win32/Bancos.I,SIGNATURE_TYPE_PEHSTR,08 00 06 00 04 00 00 05 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_1 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 66 00 72 00 65 00 65 00 77 00 65 00 62 00 74 00 6f 00 77 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 67 00 69 00 6e 00 31 00 38 00 37 00 2f 00 54 00 75 00 64 00 6f 00 41 00 71 00 75 00 69 00 2e 00 65 00 78 00 65 00 } //01 00  http://www.freewebtown.com/login187/TudoAqui.exe
		$a_01_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 66 00 72 00 65 00 65 00 77 00 65 00 62 00 74 00 6f 00 77 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 67 00 69 00 6e 00 31 00 38 00 37 00 2f 00 70 00 72 00 6f 00 63 00 65 00 73 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  http://www.freewebtown.com/login187/process.exe
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 66 00 72 00 65 00 65 00 77 00 65 00 62 00 74 00 6f 00 77 00 6e 00 2e 00 63 00 6f 00 6d 00 2f 00 6c 00 6f 00 67 00 69 00 6e 00 31 00 38 00 37 00 2f 00 77 00 6f 00 72 00 6d 00 2e 00 65 00 78 00 65 00 } //00 00  http://www.freewebtown.com/login187/worm.exe
	condition:
		any of ($a_*)
 
}