
rule Backdoor_Win32_Delf_SJ{
	meta:
		description = "Backdoor:Win32/Delf.SJ,SIGNATURE_TYPE_PEHSTR,5d 00 5c 00 0d 00 00 0a 00 "
		
	strings :
		$a_01_0 = {53 6f 66 74 77 61 72 65 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c } //0a 00  Software\Borland\Delphi\
		$a_01_1 = {54 53 65 72 76 65 72 49 6e 66 6f 4c } //0a 00  TServerInfoL
		$a_01_2 = {39 31 37 37 34 34 35 34 32 33 39 34 37 30 34 34 30 34 36 38 32 39 35 34 30 31 37 34 39 31 } //0a 00  917744542394704404682954017491
		$a_01_3 = {31 32 37 2e 30 2e 30 2e 31 } //0a 00  127.0.0.1
		$a_01_4 = {3a 28 4e 65 74 20 44 69 73 6b 29 } //0a 00  :(Net Disk)
		$a_01_5 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //0a 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 50 6f 6c 69 63 69 65 73 5c 57 69 6e 4f 6c 64 41 70 70 } //0a 00  Software\Microsoft\Windows\CurrentVersion\Policies\WinOldApp
		$a_01_7 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00  Toolhelp32ReadProcessMemory
		$a_01_8 = {43 68 61 6e 67 65 53 65 72 76 69 63 65 43 6f 6e 66 69 67 32 41 } //01 00  ChangeServiceConfig2A
		$a_01_9 = {68 74 74 70 3a 2f 2f 69 70 2e 61 71 31 33 38 2e 63 6f 6d 2f 67 65 74 69 70 2e 61 73 70 3f 61 71 75 73 65 72 3d } //01 00  http://ip.aq138.com/getip.asp?aquser=
		$a_01_10 = {68 74 74 70 3a 2f 2f 69 70 2e 61 71 31 33 38 2e 63 6f 6d 2f 73 65 74 69 70 2e 61 73 70 } //01 00  http://ip.aq138.com/setip.asp
		$a_01_11 = {68 74 74 70 3a 2f 2f 31 39 32 2e 31 36 38 2e 31 2e 35 2f 67 65 74 2e 61 73 70 3f 75 73 65 72 3d } //01 00  http://192.168.1.5/get.asp?user=
		$a_01_12 = {68 74 74 70 3a 2f 2f 31 39 32 2e 31 36 38 2e 31 2e 35 2f 73 65 74 2e 61 73 70 } //00 00  http://192.168.1.5/set.asp
	condition:
		any of ($a_*)
 
}