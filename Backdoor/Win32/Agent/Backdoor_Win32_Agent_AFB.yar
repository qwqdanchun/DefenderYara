
rule Backdoor_Win32_Agent_AFB{
	meta:
		description = "Backdoor:Win32/Agent.AFB,SIGNATURE_TYPE_PEHSTR,29 00 29 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //0a 00  svchost.exe
		$a_01_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //0a 00  MSVBVM60.DLL
		$a_01_2 = {57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 } //0a 00  WScript.Shell
		$a_01_3 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 67 00 61 00 69 00 79 00 61 00 39 00 2e 00 63 00 6e 00 2f 00 6d 00 6d 00 2f 00 63 00 6f 00 6e 00 66 00 69 00 67 00 2e 00 74 00 } //01 00  http://www.gaiya9.cn/mm/config.t
		$a_01_4 = {5c 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 20 00 46 00 69 00 6c 00 65 00 73 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 2e 00 45 00 58 00 45 00 } //01 00  \Program Files\Internet Explorer\IEXPLORE.EXE
		$a_01_5 = {48 00 4b 00 45 00 59 00 5f 00 43 00 55 00 52 00 52 00 45 00 4e 00 54 00 5f 00 55 00 53 00 45 00 52 00 5c 00 53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 49 00 6e 00 74 00 65 00 72 00 6e 00 65 00 74 00 20 00 45 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 5c 00 4d 00 61 00 69 00 6e 00 5c 00 53 00 74 00 61 00 72 00 74 00 20 00 50 00 61 00 67 00 65 00 } //01 00  HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\Start Page
		$a_01_6 = {48 00 4b 00 45 00 59 00 5f 00 4c 00 4f 00 43 00 41 00 4c 00 5f 00 4d 00 41 00 43 00 48 00 49 00 4e 00 45 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 49 00 45 00 58 00 50 00 4c 00 4f 00 52 00 45 00 } //00 00  HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run\IEXPLORE
	condition:
		any of ($a_*)
 
}