
rule TrojanDownloader_O97M_Obfuse_PG_MSR{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PG!MSR,SIGNATURE_TYPE_MACROHSTR_EXT,03 00 02 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //02 00  URLDownloadToFileA
		$a_03_1 = {70 61 79 70 65 74 65 64 2e 63 6f 6d 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_03_2 = {68 74 74 70 3a 2f 2f 73 75 6c 61 69 6e 75 6c 2e 63 6f 6d 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_03_3 = {68 74 74 70 3a 2f 2f 76 6f 6e 74 79 2e 62 65 73 74 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_01_4 = {68 74 74 70 3a 2f 2f 32 30 67 6c 6f 72 79 6d 6d 61 75 73 61 2e 63 6f 6d 2f 41 2f 73 74 61 6e 7a 65 72 2e 65 78 65 } //02 00  http://20glorymmausa.com/A/stanzer.exe
		$a_03_5 = {68 74 74 70 3a 2f 2f 68 69 6e 64 6f 6c 64 2e 63 6f 6d 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_03_6 = {68 74 74 70 3a 2f 2f 70 75 64 72 6f 74 65 64 2e 63 6f 6d 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_01_7 = {68 74 74 70 3a 2f 2f 64 6f 77 6e 6c 6f 61 64 2e 73 61 62 61 6c 6f 6f 2e 63 6f 6d 2f 63 73 73 2f 6c 69 62 61 74 6b 2d 31 2e 30 2d 30 2e 64 61 74 } //02 00  http://download.sabaloo.com/css/libatk-1.0-0.dat
		$a_03_8 = {68 74 74 70 3a 2f 2f 73 79 73 74 69 61 6e 74 2e 63 6f 6d 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_03_9 = {68 74 74 70 3a 2f 2f 64 75 62 72 69 61 68 2e 63 6f 6d 2f 90 02 19 2f 90 02 06 2e 65 78 65 90 00 } //02 00 
		$a_03_10 = {68 74 74 70 3a 2f 2f 66 69 62 61 72 65 2e 63 6f 6d 2f 90 02 20 2f 90 02 10 2e 65 78 65 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}