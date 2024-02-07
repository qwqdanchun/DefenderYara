
rule TrojanDownloader_Win32_Adload{
	meta:
		description = "TrojanDownloader:Win32/Adload,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 6c 00 75 00 63 00 6b 00 62 00 69 00 72 00 64 00 38 00 2e 00 63 00 6e 00 2f 00 00 00 00 00 18 00 00 00 74 00 74 00 68 00 68 00 33 00 2f 00 67 00 78 00 2e 00 6a 00 70 00 67 00 } //01 00 
		$a_01_1 = {5c 00 66 00 70 00 74 00 2e 00 65 00 78 00 65 00 } //01 00  \fpt.exe
		$a_01_2 = {63 00 6d 00 64 00 2e 00 65 00 78 00 65 00 20 00 2f 00 63 00 20 00 73 00 74 00 61 00 72 00 74 00 } //01 00  cmd.exe /c start
		$a_01_3 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 52 00 52 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 53 00 6f 00 75 00 6e 00 64 00 4d 00 61 00 6e 00 } //01 00  \Windows\CuRRentVersion\Run\SoundMan
		$a_01_4 = {53 00 6f 00 75 00 6e 00 64 00 4d 00 61 00 6e 00 2e 00 65 00 78 00 65 00 } //01 00  SoundMan.exe
		$a_01_5 = {4f 00 72 00 69 00 67 00 69 00 6e 00 61 00 6c 00 46 00 69 00 6c 00 65 00 6e 00 61 00 6d 00 65 00 00 00 6e 00 6f 00 74 00 65 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Adload_2{
	meta:
		description = "TrojanDownloader:Win32/Adload,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 4c 6f 63 61 6c 65 73 } //01 00  Software\Borland\Delphi\Locales
		$a_01_1 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 45 78 70 6c 6f 72 65 72 5c 42 72 6f 77 73 65 72 20 48 65 6c 70 65 72 20 4f 62 6a 65 63 74 73 5c 7b 42 43 37 44 42 36 38 34 2d 33 34 39 35 2d 34 32 30 31 2d 38 35 43 35 2d 37 38 35 37 46 31 39 32 42 32 33 34 7d } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects\{BC7DB684-3495-4201-85C5-7857F192B234}
		$a_01_2 = {6b 6f 72 65 61 2e 62 6f 6e 75 73 70 61 63 6b 2e 63 6f 2e 6b 72 } //01 00  korea.bonuspack.co.kr
		$a_01_3 = {38 31 30 33 32 46 41 37 2d 35 44 46 41 2d 34 38 31 34 2d 41 44 41 30 2d 35 34 45 32 46 36 42 39 32 42 44 30 } //01 00  81032FA7-5DFA-4814-ADA0-54E2F6B92BD0
		$a_01_4 = {46 42 43 34 39 30 36 41 2d 43 45 42 30 2d 34 44 33 36 2d 39 43 45 38 2d 45 39 35 39 30 31 30 39 45 34 43 36 } //01 00  FBC4906A-CEB0-4D36-9CE8-E9590109E4C6
		$a_01_5 = {44 6c 6c 52 65 67 69 73 74 65 72 53 65 72 76 65 72 } //01 00  DllRegisterServer
		$a_01_6 = {46 69 6e 64 4e 65 78 74 46 69 6c 65 41 } //01 00  FindNextFileA
		$a_01_7 = {47 65 74 57 69 6e 64 6f 77 73 44 69 72 65 63 74 6f 72 79 41 } //01 00  GetWindowsDirectoryA
		$a_01_8 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //01 00  UnhookWindowsHookEx
		$a_01_9 = {67 65 74 68 6f 73 74 62 79 6e 61 6d 65 } //00 00  gethostbyname
	condition:
		any of ($a_*)
 
}