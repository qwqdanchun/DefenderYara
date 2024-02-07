
rule Backdoor_Win32_Olux_A{
	meta:
		description = "Backdoor:Win32/Olux.A,SIGNATURE_TYPE_PEHSTR,37 00 37 00 0b 00 00 0a 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 25 73 } //0a 00  del %s
		$a_01_1 = {25 73 61 73 33 32 2e 62 61 74 } //0a 00  %sas32.bat
		$a_01_2 = {25 73 64 65 72 33 32 2e 65 78 65 } //0a 00  %sder32.exe
		$a_01_3 = {21 50 41 52 41 4e 4f 49 44 21 } //0a 00  !PARANOID!
		$a_01_4 = {25 73 3f 75 69 6e 3d 25 64 } //0a 00  %s?uin=%d
		$a_01_5 = {74 61 73 6b 6b 69 6c 6c 20 2f 66 20 2f 70 69 64 20 25 64 20 } //01 00  taskkill /f /pid %d 
		$a_01_6 = {5c 6d 73 61 75 63 2e 65 78 65 } //01 00  \msauc.exe
		$a_01_7 = {6c 73 61 73 73 20 64 72 69 76 65 72 } //01 00  lsass driver
		$a_01_8 = {6c 6f 67 69 6e 2e 69 63 71 2e 63 6f 6d } //01 00  login.icq.com
		$a_01_9 = {47 45 54 20 25 73 20 48 54 54 50 2f 31 2e 31 } //01 00  GET %s HTTP/1.1
		$a_01_10 = {55 52 4c 44 6f 77 6e 6c 6f 61 64 54 6f 46 69 6c 65 41 } //00 00  URLDownloadToFileA
	condition:
		any of ($a_*)
 
}