
rule Backdoor_Win32_Agent_HA{
	meta:
		description = "Backdoor:Win32/Agent.HA,SIGNATURE_TYPE_PEHSTR_EXT,37 00 2d 00 18 00 00 1e 00 "
		
	strings :
		$a_00_0 = {33 c0 85 f6 7e 08 30 04 38 40 3b c6 7c f8 80 24 37 00 8b c7 } //0a 00 
		$a_00_1 = {73 42 6f 74 } //0a 00  sBot
		$a_00_2 = {62 6f 74 20 6b 69 6c 6c 65 72 } //0a 00  bot killer
		$a_00_3 = {62 6f 74 20 6b 69 6c 6c 65 72 20 74 68 72 65 61 64 } //0a 00  bot killer thread
		$a_00_4 = {55 6e 69 6e 73 74 61 6c 6c 69 6e 67 20 62 6f 74 2e 2e 2e } //0a 00  Uninstalling bot...
		$a_00_5 = {45 72 72 6f 72 20 74 65 72 6d 69 6e 61 74 69 6e 67 20 62 6f 74 6b 69 6c 6c 65 72 } //0a 00  Error terminating botkiller
		$a_00_6 = {53 70 79 62 6f 74 } //0a 00  Spybot
		$a_00_7 = {4c 4f 47 49 4e 20 4c 6f 67 67 65 64 20 75 73 65 72 20 25 73 20 69 6e 74 6f 20 62 6f 74 } //0a 00  LOGIN Logged user %s into bot
		$a_00_8 = {65 63 68 6f 20 6f 70 65 6e 20 25 73 20 3e 20 6f 26 65 63 68 6f 20 75 73 65 72 20 25 73 20 25 73 20 3e 3e 20 6f 20 26 65 63 68 6f 20 73 65 6e 64 } //02 00  echo open %s > o&echo user %s %s >> o &echo send
		$a_00_9 = {4d 6f 72 70 68 65 75 73 2e 65 78 65 } //02 00  Morpheus.exe
		$a_00_10 = {68 69 64 73 65 72 76 2e 65 78 65 } //01 00  hidserv.exe
		$a_00_11 = {6d 73 6e 6d 73 67 72 2e 65 78 65 } //01 00  msnmsgr.exe
		$a_00_12 = {6d 73 6e 75 70 64 61 74 65 2e 65 78 65 } //02 00  msnupdate.exe
		$a_00_13 = {53 45 52 56 49 43 45 53 2e 45 58 45 } //02 00  SERVICES.EXE
		$a_00_14 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00  explorer.exe
		$a_00_15 = {57 69 6e 45 78 65 63 } //01 00  WinExec
		$a_01_16 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_01_17 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_00_18 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_00_19 = {57 69 73 64 6f 6d } //02 00  Wisdom
		$a_00_20 = {74 69 74 66 75 63 6b } //02 00  titfuck
		$a_00_21 = {26 65 63 68 6f 20 62 79 65 } //02 00  &echo bye
		$a_00_22 = {63 79 62 65 72 40 63 72 69 6d 65 2e 67 6f 76 } //01 00  cyber@crime.gov
		$a_00_23 = {57 69 6e 64 6f 77 73 20 55 70 64 61 74 65 72 20 53 65 72 76 69 63 65 73 } //00 00  Windows Updater Services
	condition:
		any of ($a_*)
 
}