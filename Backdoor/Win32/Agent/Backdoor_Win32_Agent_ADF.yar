
rule Backdoor_Win32_Agent_ADF{
	meta:
		description = "Backdoor:Win32/Agent.ADF,SIGNATURE_TYPE_PEHSTR_EXT,2b 00 2a 00 0b 00 00 05 00 "
		
	strings :
		$a_01_0 = {53 74 61 72 74 50 72 6f 63 65 73 73 41 74 53 74 61 72 74 75 70 } //05 00  StartProcessAtStartup
		$a_01_1 = {53 74 61 72 74 50 72 6f 63 65 73 73 41 74 57 69 6e 4c 6f 67 6f 6e } //05 00  StartProcessAtWinLogon
		$a_01_2 = {53 74 6f 70 50 72 6f 63 65 73 73 41 74 57 69 6e 4c 6f 67 6f 66 66 } //05 00  StopProcessAtWinLogoff
		$a_01_3 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //05 00  CreateToolhelp32Snapshot
		$a_01_4 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 } //05 00  Process32Next
		$a_01_5 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //05 00  CreateRemoteThread
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  WriteProcessMemory
		$a_01_7 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_01_8 = {78 75 68 75 61 6e 6b 69 6c 6c 6c 6f 76 65 } //01 00  xuhuankilllove
		$a_01_9 = {53 79 73 74 65 6d 5c 77 61 62 33 32 64 62 2e 64 6c 6c } //01 00  System\wab32db.dll
		$a_01_10 = {42 65 69 5a 68 75 } //00 00  BeiZhu
	condition:
		any of ($a_*)
 
}