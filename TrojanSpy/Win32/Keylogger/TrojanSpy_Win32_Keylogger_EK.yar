
rule TrojanSpy_Win32_Keylogger_EK{
	meta:
		description = "TrojanSpy:Win32/Keylogger.EK,SIGNATURE_TYPE_PEHSTR_EXT,7e 00 7e 00 10 00 00 0a 00 "
		
	strings :
		$a_00_0 = {74 61 73 6b 6d 67 72 2e 65 78 65 } //0a 00  taskmgr.exe
		$a_00_1 = {70 6b 2e 62 69 6e } //0a 00  pk.bin
		$a_00_2 = {61 70 70 73 2e 64 61 74 } //0a 00  apps.dat
		$a_00_3 = {74 69 74 6c 65 73 2e 64 61 74 } //0a 00  titles.dat
		$a_00_4 = {69 6e 73 74 2e 64 61 74 } //0a 00  inst.dat
		$a_00_5 = {72 2e 65 78 65 } //0a 00  r.exe
		$a_00_6 = {68 6b 2e 64 6c 6c } //0a 00  hk.dll
		$a_00_7 = {76 77 2e 65 78 65 } //0a 00  vw.exe
		$a_00_8 = {75 6e 2e 65 78 65 } //0a 00  un.exe
		$a_01_9 = {4c 6f 67 20 75 70 6c 6f 61 64 20 64 61 74 65 3a 20 25 73 } //05 00  Log upload date: %s
		$a_01_10 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  WriteProcessMemory
		$a_01_11 = {57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //05 00  WindowsHookEx
		$a_01_12 = {46 74 70 50 75 74 46 69 6c 65 } //05 00  FtpPutFile
		$a_00_13 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //05 00  ZwQuerySystemInformation
		$a_00_14 = {43 4f 52 52 45 43 54 2e 64 6c 6c } //01 00  CORRECT.dll
		$a_01_15 = {44 4c 4c 5f 47 65 74 50 72 6f 6a 65 63 74 56 65 72 73 69 6f 6e } //00 00  DLL_GetProjectVersion
	condition:
		any of ($a_*)
 
}