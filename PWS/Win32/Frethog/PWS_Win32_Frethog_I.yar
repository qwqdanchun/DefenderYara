
rule PWS_Win32_Frethog_I{
	meta:
		description = "PWS:Win32/Frethog.I,SIGNATURE_TYPE_PEHSTR_EXT,11 00 11 00 12 00 00 01 00 "
		
	strings :
		$a_02_0 = {8b 44 24 04 53 55 56 57 50 6a 00 68 ff 0f 1f 00 ff 15 90 01 02 00 10 8b d8 85 db 0f 84 97 00 00 00 68 90 01 02 00 10 68 90 01 02 00 10 ff 15 90 01 02 00 10 50 ff 15 90 01 02 00 10 8b e8 83 c9 ff 8b 7c 24 18 33 c0 f2 ae f7 d1 49 6a 04 8b f1 68 00 10 00 00 46 56 50 53 ff 15 90 01 02 00 10 8b f8 85 ff 74 50 85 f6 74 4c 8b 4c 24 18 6a 00 56 51 57 53 ff 15 90 01 02 00 10 6a 00 6a 00 57 55 6a 00 6a 00 53 ff 15 90 01 02 00 10 85 c0 74 1f 6a ff 50 ff 15 90 01 02 00 10 68 00 80 00 00 6a 00 57 53 ff 15 90 01 02 00 10 5f 5e 5d 5b c2 08 00 90 00 } //01 00 
		$a_00_1 = {47 65 74 57 69 6e 64 6f 77 54 68 72 65 61 64 50 72 6f 63 65 73 73 49 64 } //01 00  GetWindowThreadProcessId
		$a_00_2 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //01 00  AdjustTokenPrivileges
		$a_00_3 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //01 00  LookupPrivilegeValueA
		$a_01_4 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_01_5 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //01 00  CreateRemoteThread
		$a_01_6 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //01 00  SeDebugPrivilege
		$a_01_7 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //01 00  InternetOpenUrlA
		$a_01_8 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //01 00  InternetReadFile
		$a_00_9 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //01 00  OpenProcessToken
		$a_00_10 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 } //01 00  Explorer.exe
		$a_01_11 = {43 72 65 61 74 65 54 68 72 65 61 64 } //01 00  CreateThread
		$a_00_12 = {46 69 6e 64 57 69 6e 64 6f 77 41 } //01 00  FindWindowA
		$a_00_13 = {4f 70 65 6e 50 72 6f 63 65 73 73 } //01 00  OpenProcess
		$a_01_14 = {4b 69 6c 6c 54 69 6d 65 72 } //01 00  KillTimer
		$a_00_15 = {53 65 74 54 69 6d 65 72 } //01 00  SetTimer
		$a_01_16 = {3d 25 73 26 72 3d 25 73 26 6c 3d 25 73 26 6d } //01 00  =%s&r=%s&l=%s&m
		$a_01_17 = {3d 25 73 26 72 3d 25 73 26 6c 3d 25 64 26 6d } //00 00  =%s&r=%s&l=%d&m
	condition:
		any of ($a_*)
 
}