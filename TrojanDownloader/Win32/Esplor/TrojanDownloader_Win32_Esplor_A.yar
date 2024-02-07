
rule TrojanDownloader_Win32_Esplor_A{
	meta:
		description = "TrojanDownloader:Win32/Esplor.A,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //01 00  URLDownloadToFileA
		$a_01_1 = {7c 00 6b 00 70 00 66 00 77 00 33 00 32 00 2e 00 65 00 78 00 65 00 7c 00 72 00 66 00 77 00 6d 00 61 00 69 00 6e 00 2e 00 65 00 78 00 65 00 7c 00 52 00 53 00 54 00 72 00 61 00 79 00 2e 00 65 00 78 00 65 00 7c 00 } //01 00  |kpfw32.exe|rfwmain.exe|RSTray.exe|
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 70 00 69 00 64 00 20 00 } //01 00  taskkill /f /pid 
		$a_01_3 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 73 00 68 00 61 00 72 00 65 00 64 00 61 00 63 00 63 00 65 00 73 00 } //01 00  net stop sharedacces
		$a_01_4 = {43 00 3a 00 5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 76 00 73 00 74 00 61 00 72 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  C:\Program Files\vstart.exe
	condition:
		any of ($a_*)
 
}