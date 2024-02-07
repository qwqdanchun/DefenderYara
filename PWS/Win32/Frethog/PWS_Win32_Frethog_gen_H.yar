
rule PWS_Win32_Frethog_gen_H{
	meta:
		description = "PWS:Win32/Frethog.gen!H,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_02_0 = {68 03 01 00 00 50 56 ff 15 90 01 04 8d 85 90 01 02 ff ff 6a 5c 50 ff 15 90 01 04 8b f8 8d 45 f4 50 c7 45 f4 7a 68 65 6e 8d 5f 01 c7 45 f8 67 74 75 2e 53 c7 45 fc 64 61 74 00 ff 15 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule PWS_Win32_Frethog_gen_H_2{
	meta:
		description = "PWS:Win32/Frethog.gen!H,SIGNATURE_TYPE_PEHSTR_EXT,ffffffc0 03 ffffffc0 03 1c 00 00 64 00 "
		
	strings :
		$a_00_0 = {52 61 76 4d 6f 6e 2e 65 78 65 } //64 00  RavMon.exe
		$a_00_1 = {4f 70 65 6e 50 72 6f 63 65 73 73 54 6f 6b 65 6e } //64 00  OpenProcessToken
		$a_01_2 = {53 65 44 65 62 75 67 50 72 69 76 69 6c 65 67 65 } //64 00  SeDebugPrivilege
		$a_00_3 = {41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 } //64 00  AdjustTokenPrivileges
		$a_00_4 = {4c 6f 6f 6b 75 70 50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 41 } //64 00  LookupPrivilegeValueA
		$a_01_5 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //64 00  CreateToolhelp32Snapshot
		$a_00_6 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //32 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_7 = {77 69 6e 6c 6f 67 30 6e 2e 65 78 65 } //32 00  winlog0n.exe
		$a_00_8 = {65 78 70 6c 6f 72 65 72 2e 65 78 65 } //32 00  explorer.exe
		$a_00_9 = {46 69 6c 4d 73 67 2e 65 78 65 } //32 00  FilMsg.exe
		$a_00_10 = {54 77 69 73 74 65 72 2e 65 78 65 } //32 00  Twister.exe
		$a_00_11 = {56 43 32 30 58 43 30 30 55 } //32 00  VC20XC00U
		$a_00_12 = {41 56 50 2e 41 6c 65 72 74 } //32 00  AVP.Alert
		$a_00_13 = {41 56 50 2e 50 72 6f 64 75 63 74 } //32 00  AVP.Product
		$a_00_14 = {41 6c 65 72 74 44 69 61 6c 6f 67 } //32 00  AlertDialog
		$a_00_15 = {50 72 6f 64 75 63 74 5f 4e 6f 74 69 66 69 63 61 74 69 6f 6e } //0a 00  Product_Notification
		$a_00_16 = {57 69 6e 45 78 65 63 } //0a 00  WinExec
		$a_00_17 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e } //0a 00  InternetOpen
		$a_00_18 = {43 61 6c 6c 4e 65 78 74 48 6f 6f 6b 45 78 } //0a 00  CallNextHookEx
		$a_00_19 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //0a 00  VirtualAllocEx
		$a_01_20 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //0a 00  SetWindowsHookExA
		$a_01_21 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00  ReadProcessMemory
		$a_01_22 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //0a 00  CreateRemoteThread
		$a_01_23 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0c fe  WriteProcessMemory
		$a_00_24 = {69 00 73 00 20 00 72 00 65 00 67 00 69 00 73 00 74 00 65 00 72 00 65 00 64 00 20 00 74 00 72 00 61 00 64 00 65 00 6d 00 61 00 72 00 6b 00 20 00 6f 00 66 00 20 00 4b 00 61 00 73 00 70 00 65 00 72 00 73 00 6b 00 79 00 20 00 4c 00 61 00 62 00 2e 00 } //0c fe  is registered trademark of Kaspersky Lab.
		$a_00_25 = {71 71 6b 61 76 3a 20 6c 6f 61 64 65 64 } //18 fc  qqkav: loaded
		$a_00_26 = {67 67 73 61 66 65 2e 63 6f 6d 2f 67 67 74 6f 6f 6c 73 2e 69 6e 69 } //18 fc  ggsafe.com/ggtools.ini
		$a_00_27 = {41 00 6e 00 56 00 69 00 72 00 20 00 54 00 61 00 73 00 6b 00 20 00 4d 00 61 00 6e 00 61 00 67 00 65 00 72 00 } //01 00  AnVir Task Manager
	condition:
		any of ($a_*)
 
}