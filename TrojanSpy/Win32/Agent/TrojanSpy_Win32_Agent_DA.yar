
rule TrojanSpy_Win32_Agent_DA{
	meta:
		description = "TrojanSpy:Win32/Agent.DA,SIGNATURE_TYPE_PEHSTR,ffffffb9 01 ffffffb9 01 0d 00 00 64 00 "
		
	strings :
		$a_01_0 = {41 6e 74 6f 68 69 6e 73 61 69 74 } //64 00  Antohinsait
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 48 61 70 70 79 } //64 00  Software\Happy
		$a_01_2 = {68 74 74 70 3a 2f 2f 61 6e 74 79 2e 66 72 65 65 68 6f 73 74 69 61 2e 63 6f 6d 2f 78 78 78 2f } //64 00  http://anty.freehostia.com/xxx/
		$a_01_3 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //0a 00  SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_4 = {45 78 69 74 57 69 6e 64 6f 77 73 45 78 } //0a 00  ExitWindowsEx
		$a_01_5 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //0a 00  InternetReadFile
		$a_01_6 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //0a 00  URLDownloadToFileA
		$a_01_7 = {53 65 53 68 75 74 64 6f 77 6e 50 72 69 76 69 6c 65 67 65 } //01 00  SeShutdownPrivilege
		$a_01_8 = {3f 6e 69 63 6b 3d } //01 00  ?nick=
		$a_01_9 = {26 69 6e 66 6f 3d 69 42 61 6e 6b 32 } //01 00  &info=iBank2
		$a_01_10 = {6c 6f 67 6f 2e 70 6e 67 } //01 00  logo.png
		$a_01_11 = {66 74 70 2e 6e 61 72 6f 64 2e 72 75 } //01 00  ftp.narod.ru
		$a_01_12 = {53 6f 72 72 79 2c 20 73 65 72 76 69 63 65 20 69 73 20 63 75 72 72 65 6e 74 6c 79 20 6e 6f 74 20 61 76 61 69 6c 61 62 6c 65 } //00 00  Sorry, service is currently not available
	condition:
		any of ($a_*)
 
}