
rule TrojanDownloader_Win32_VB_YCH{
	meta:
		description = "TrojanDownloader:Win32/VB.YCH,SIGNATURE_TYPE_PEHSTR,15 00 15 00 03 00 00 0b 00 "
		
	strings :
		$a_01_0 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 69 00 65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 2e 00 65 00 78 00 65 00 20 00 68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 35 00 32 00 78 00 64 00 79 00 2e 00 63 00 6f 00 6d 00 } //0a 00  C:\Program Files\Internet Explorer\iexplore.exe http://www.52xdy.com
		$a_01_1 = {41 00 46 00 3a 00 5c 00 11 62 84 76 0b 7a 8f 5e 5c 00 32 00 30 00 30 00 39 00 74 5e 2a 4e ba 4e 48 72 0b 4e 7d 8f 05 80 5c 00 97 66 37 52 51 7f d9 7a 5c 00 e5 5d 0b 7a 31 00 2e 00 76 00 62 00 70 00 } //0a 00 
		$a_01_2 = {5c 00 41 00 46 00 3a 00 5c 00 11 62 84 76 0b 7a 8f 5e 5c 00 32 00 30 00 30 00 39 00 74 5e 2a 4e ba 4e 48 72 0b 4e 7d 8f 05 80 5c 00 af 7e 39 5f 97 7a 5c 00 e5 5d 0b 7a 31 00 2e 00 76 00 62 00 70 00 } //00 00 
	condition:
		any of ($a_*)
 
}