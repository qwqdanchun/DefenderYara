
rule Trojan_Win32_Adclicker_BB{
	meta:
		description = "Trojan:Win32/Adclicker.BB,SIGNATURE_TYPE_PEHSTR_EXT,7d 00 73 00 10 00 00 03 00 "
		
	strings :
		$a_01_0 = {4f 62 74 61 69 6e 55 73 65 72 41 67 65 6e 74 53 74 72 69 6e 67 } //05 00  ObtainUserAgentString
		$a_01_1 = {66 69 6e 61 6c 2e 64 6c 6c } //02 00  final.dll
		$a_01_2 = {57 53 50 53 74 61 72 74 75 70 } //05 00  WSPStartup
		$a_01_3 = {68 74 74 70 3a 2f 2f 78 6d 6c 2e 66 69 65 73 74 61 70 70 63 2e 63 6f 6d 2f 66 65 65 64 2e 70 68 70 3f 61 69 64 3d } //0a 00  http://xml.fiestappc.com/feed.php?aid=
		$a_01_4 = {4c 00 61 00 79 00 65 00 72 00 65 00 64 00 20 00 57 00 53 00 32 00 20 00 50 00 72 00 6f 00 76 00 69 00 64 00 65 00 72 00 } //0a 00  Layered WS2 Provider
		$a_01_5 = {4c 00 61 00 79 00 65 00 72 00 65 00 64 00 20 00 48 00 69 00 64 00 64 00 65 00 6e 00 20 00 57 00 69 00 6e 00 64 00 6f 00 77 00 } //0a 00  Layered Hidden Window
		$a_01_6 = {50 00 72 00 6f 00 78 00 79 00 2d 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //0a 00  Proxy-Connection
		$a_01_7 = {43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 69 00 6f 00 6e 00 } //0a 00  Connection
		$a_01_8 = {55 00 73 00 65 00 72 00 2d 00 41 00 67 00 65 00 6e 00 74 00 } //0a 00  User-Agent
		$a_01_9 = {41 00 63 00 63 00 65 00 70 00 74 00 2d 00 4c 00 61 00 6e 00 67 00 75 00 61 00 67 00 65 00 } //0a 00  Accept-Language
		$a_01_10 = {50 00 72 00 6f 00 78 00 79 00 2d 00 41 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 61 00 74 00 69 00 6f 00 6e 00 } //0a 00  Proxy-Authorization
		$a_01_11 = {20 00 28 00 4b 00 48 00 54 00 4d 00 4c 00 2c 00 20 00 6c 00 69 00 6b 00 65 00 20 00 47 00 65 00 63 00 6b 00 6f 00 29 00 } //0a 00   (KHTML, like Gecko)
		$a_01_12 = {53 00 65 00 61 00 72 00 63 00 68 00 53 00 74 00 72 00 69 00 6e 00 67 00 3d 00 } //0a 00  SearchString=
		$a_01_13 = {73 00 65 00 61 00 72 00 63 00 68 00 5f 00 6b 00 65 00 79 00 77 00 6f 00 72 00 64 00 3d 00 2b 00 } //0a 00  search_keyword=+
		$a_01_14 = {72 00 64 00 73 00 2e 00 79 00 61 00 68 00 6f 00 6f 00 2e 00 2a 00 2f 00 5f 00 79 00 6c 00 74 00 3d 00 2a 00 3b 00 5f 00 79 00 6c 00 75 00 3d 00 2a 00 2f 00 53 00 49 00 47 00 3d 00 2a 00 2f 00 45 00 58 00 50 00 3d 00 2a 00 2a 00 2a 00 68 00 74 00 74 00 70 00 2a 00 } //0a 00  rds.yahoo.*/_ylt=*;_ylu=*/SIG=*/EXP=***http*
		$a_01_15 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 70 00 6c 00 61 00 79 00 62 00 6f 00 79 00 2e 00 63 00 6f 00 6d 00 2f 00 73 00 65 00 61 00 72 00 63 00 68 00 3f 00 53 00 65 00 61 00 72 00 63 00 68 00 53 00 74 00 72 00 69 00 6e 00 67 00 3d 00 2a 00 } //00 00  http://playboy.com/search?SearchString=*
	condition:
		any of ($a_*)
 
}