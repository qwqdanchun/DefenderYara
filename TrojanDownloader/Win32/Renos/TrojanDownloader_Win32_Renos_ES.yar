
rule TrojanDownloader_Win32_Renos_ES{
	meta:
		description = "TrojanDownloader:Win32/Renos.ES,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 57 69 6e 41 6e 74 69 56 69 72 75 73 20 50 72 6f 20 32 30 30 37 } //01 00  SOFTWARE\WinAntiVirus Pro 2007
		$a_01_1 = {57 69 6e 41 56 58 00 00 5c 70 72 69 6e 74 65 72 2e 65 78 65 00 00 00 00 5c 57 69 6e 41 76 58 58 2e 65 78 65 } //01 00 
		$a_01_2 = {43 3a 5c 57 49 4e 44 4f 57 53 5c 53 59 53 54 45 4d 33 32 5c 57 69 6e 41 76 58 58 2e 65 78 65 } //01 00  C:\WINDOWS\SYSTEM32\WinAvXX.exe
		$a_01_3 = {25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 77 69 6e 61 76 2e 65 78 65 } //01 00  %windir%\system32\winav.exe
		$a_03_4 = {68 74 74 70 3a 2f 2f 67 6f 2e 77 69 6e 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d 2f 4d 54 59 32 4e 6a 55 3d 2f 32 2f 36 30 31 38 2f 61 78 3d 31 2f 65 64 3d 31 2f 65 78 3d 31 2f 90 01 03 2f 90 00 } //01 00 
		$a_01_5 = {43 4c 53 49 44 5c 7b 41 42 43 44 45 43 46 30 2d 34 42 31 35 2d 31 31 44 31 2d 41 42 45 44 2d 37 30 39 35 34 39 43 31 30 30 30 30 7d 5c 49 6e 50 72 6f 63 53 65 72 76 65 72 33 32 } //01 00  CLSID\{ABCDECF0-4B15-11D1-ABED-709549C10000}\InProcServer32
		$a_03_6 = {57 61 72 6e 69 6e 67 21 20 50 6f 74 65 6e 74 69 61 6c 20 53 70 79 77 61 72 65 20 4f 70 65 72 61 74 69 6f 6e 21 0a 0a 59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 73 20 6d 61 6b 69 6e 67 20 75 6e 61 75 74 68 6f 72 69 7a 65 64 20 63 6f 70 69 65 73 20 6f 66 20 79 6f 75 72 20 73 79 73 74 65 6d 20 61 6e 64 0a 49 6e 74 65 72 6e 65 74 20 66 69 6c 65 73 2e 20 52 75 6e 20 66 75 6c 6c 20 73 63 61 6e 20 6e 6f 77 20 74 6f 20 70 65 72 76 65 6e 74 20 61 6e 79 20 75 6e 61 74 68 6f 72 69 73 65 64 20 61 63 63 65 73 73 0a 74 6f 20 79 6f 75 72 20 66 69 6c 65 73 21 20 43 6c 69 63 6b 20 90 02 04 20 74 6f 20 64 6f 77 6e 6c 6f 61 64 20 73 70 79 77 61 72 65 20 72 65 6d 6f 76 65 72 20 2e 2e 2e 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule TrojanDownloader_Win32_Renos_ES_2{
	meta:
		description = "TrojanDownloader:Win32/Renos.ES,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 10 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 4f 46 54 57 41 52 45 5c 57 69 6e 41 6e 74 69 56 69 72 75 73 20 50 72 6f 20 32 30 30 37 } //01 00  SOFTWARE\WinAntiVirus Pro 2007
		$a_01_1 = {53 6f 66 74 77 61 72 65 5c 57 69 6e 41 6e 74 69 53 70 79 77 61 72 65 20 32 30 30 37 } //01 00  Software\WinAntiSpyware 2007
		$a_01_2 = {53 6f 66 74 77 61 72 65 5c 45 72 72 6f 72 50 72 6f 74 65 63 74 6f 72 } //01 00  Software\ErrorProtector
		$a_01_3 = {53 6f 66 74 77 61 72 65 5c 4d 61 6c 77 61 72 65 53 74 6f 70 70 65 72 } //01 00  Software\MalwareStopper
		$a_01_4 = {68 74 74 70 3a 2f 2f 67 6f 2e 77 69 6e 61 6e 74 69 76 69 72 75 73 2e 63 6f 6d 2f } //01 00  http://go.winantivirus.com/
		$a_01_5 = {68 74 74 70 3a 2f 2f 67 6f 2e 64 72 69 76 65 63 6c 65 61 6e 65 72 2e 63 6f 6d } //01 00  http://go.drivecleaner.com
		$a_01_6 = {68 74 74 70 3a 2f 2f 67 6f 2e 73 79 73 74 65 6d 64 6f 63 74 6f 72 2e 63 6f 6d } //01 00  http://go.systemdoctor.com
		$a_01_7 = {68 74 74 70 3a 2f 2f 67 6f 2e 65 72 72 6f 72 73 61 66 65 2e 63 6f 6d } //01 00  http://go.errorsafe.com
		$a_01_8 = {68 74 74 70 3a 2f 2f 67 6f 2e 65 72 72 6f 72 70 72 6f 74 65 63 74 6f 72 2e 63 6f 6d } //01 00  http://go.errorprotector.com
		$a_01_9 = {57 61 72 6e 69 6e 67 21 20 50 6f 74 65 6e 74 69 61 6c 20 53 70 79 77 61 72 65 20 4f 70 65 72 61 74 69 6f 6e 21 } //01 00  Warning! Potential Spyware Operation!
		$a_01_10 = {59 6f 75 72 20 63 6f 6d 70 75 74 65 72 20 69 73 20 6d 61 6b 69 6e 67 20 75 6e 61 75 74 68 6f 72 69 7a 65 64 20 63 6f 70 69 65 73 20 6f 66 20 79 6f 75 72 20 73 79 73 74 65 6d 20 61 6e 64 } //01 00  Your computer is making unauthorized copies of your system and
		$a_01_11 = {49 6e 74 65 72 6e 65 74 20 66 69 6c 65 73 2e 20 52 75 6e 20 66 75 6c 6c 20 73 63 61 6e 20 6e 6f 77 20 74 6f 20 70 65 72 76 65 6e 74 20 61 6e 79 20 75 6e 61 74 68 6f 72 69 73 65 64 20 61 63 63 65 73 73 } //01 00  Internet files. Run full scan now to pervent any unathorised access
		$a_01_12 = {74 6f 20 79 6f 75 72 20 66 69 6c 65 73 21 20 43 6c 69 63 6b 20 68 65 72 65 20 74 6f 20 64 6f 77 6e 6c 6f 61 64 20 73 70 79 77 61 72 65 20 72 65 6d 6f 76 65 72 20 2e 2e 2e } //01 00  to your files! Click here to download spyware remover ...
		$a_01_13 = {57 69 6e 64 6f 77 73 20 53 65 63 75 72 69 74 79 20 41 6c 65 72 74 } //01 00  Windows Security Alert
		$a_01_14 = {25 77 69 6e 64 69 72 25 5c 73 79 73 74 65 6d 33 32 5c 77 69 6e 61 76 2e 65 78 65 } //01 00  %windir%\system32\winav.exe
		$a_01_15 = {7b 41 42 43 44 45 43 46 30 2d 34 42 31 35 2d 31 31 44 31 2d 41 42 45 44 2d 37 30 39 35 34 39 43 31 30 30 30 30 7d } //00 00  {ABCDECF0-4B15-11D1-ABED-709549C10000}
	condition:
		any of ($a_*)
 
}