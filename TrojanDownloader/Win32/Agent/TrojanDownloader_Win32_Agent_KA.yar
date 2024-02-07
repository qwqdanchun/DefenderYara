
rule TrojanDownloader_Win32_Agent_KA{
	meta:
		description = "TrojanDownloader:Win32/Agent.KA,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {4d 69 63 72 6f 73 6f 66 74 20 56 69 73 75 61 6c 20 43 2b 2b 20 52 75 6e 74 69 6d 65 20 4c 69 62 72 61 72 79 } //01 00  Microsoft Visual C++ Runtime Library
		$a_01_1 = {76 72 73 4f 6b 49 6e 74 2e 70 68 70 } //01 00  vrsOkInt.php
		$a_01_2 = {6f 6b 69 6e 74 65 72 6e 65 74 2e 63 6f 2e 6b 72 } //01 00  okinternet.co.kr
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_01_5 = {48 74 74 70 4f 70 65 6e 52 65 71 75 65 73 74 41 } //00 00  HttpOpenRequestA
	condition:
		any of ($a_*)
 
}