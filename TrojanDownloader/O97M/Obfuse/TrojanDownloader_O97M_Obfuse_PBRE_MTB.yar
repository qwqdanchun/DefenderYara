
rule TrojanDownloader_O97M_Obfuse_PBRE_MTB{
	meta:
		description = "TrojanDownloader:O97M/Obfuse.PBRE!MTB,SIGNATURE_TYPE_MACROHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {3d 20 22 63 6d 64 20 2f 63 20 73 74 61 72 74 20 2f 6d 69 6e 20 50 6f 77 22 } //01 00  = "cmd /c start /min Pow"
		$a_01_1 = {3d 20 22 65 72 53 68 65 6c 6c 20 2d 65 78 20 42 79 70 61 73 73 20 2d 6e 4f 22 } //01 00  = "erShell -ex Bypass -nO"
		$a_01_2 = {3d 20 22 70 20 2d 77 20 31 20 3b 69 27 45 27 78 28 69 77 72 22 } //01 00  = "p -w 1 ;i'E'x(iwr"
		$a_01_3 = {3d 20 22 67 37 78 42 6e 71 2f 34 38 62 39 33 36 35 65 63 37 36 31 33 38 31 32 39 61 65 66 36 39 35 35 34 34 66 64 64 30 61 34 39 64 38 35 62 38 66 33 2f 66 69 6c 65 73 2f 70 30 30 30 73 74 61 72 74 27 29 20 2d 75 73 65 42 29 3b 20 53 74 22 } //01 00  = "g7xBnq/48b9365ec76138129aef695544fdd0a49d85b8f3/files/p000start') -useB); St"
		$a_01_4 = {3d 20 22 61 72 74 2d 53 6c 65 65 70 20 2d 53 65 63 22 } //01 00  = "art-Sleep -Sec"
		$a_01_5 = {3d 20 43 61 72 31 20 2b 20 43 61 72 32 20 2b 20 43 61 72 33 20 2b 20 43 61 72 34 20 2b 20 43 61 72 35 20 2b 20 43 61 72 36 } //01 00  = Car1 + Car2 + Car3 + Car4 + Car5 + Car6
		$a_01_6 = {53 68 65 6c 6c 20 69 5f 6f 70 65 6e 68 65 61 72 74 74 68 69 6e 67 } //00 00  Shell i_openheartthing
	condition:
		any of ($a_*)
 
}