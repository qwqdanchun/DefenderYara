
rule Backdoor_Win32_Delfsnif_gen_E{
	meta:
		description = "Backdoor:Win32/Delfsnif.gen!E,SIGNATURE_TYPE_PEHSTR_EXT,52 00 50 00 0e 00 00 14 00 "
		
	strings :
		$a_00_0 = {74 72 6f 69 2e 65 78 65 } //14 00  troi.exe
		$a_00_1 = {73 76 63 68 6f 73 74 2e 65 78 65 } //14 00  svchost.exe
		$a_00_2 = {45 78 70 6c 6f 72 65 72 2e 65 78 65 20 } //14 00  Explorer.exe 
		$a_00_3 = {61 72 67 65 6e 74 75 73 2e 65 78 65 } //14 00  argentus.exe
		$a_00_4 = {57 69 6e 50 72 6f 74 65 63 74 } //05 00  WinProtect
		$a_00_5 = {67 65 74 65 78 65 } //05 00  getexe
		$a_00_6 = {73 65 6e 64 70 61 73 73 } //05 00  sendpass
		$a_01_7 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  WriteProcessMemory
		$a_01_8 = {49 6e 74 65 72 6e 65 74 52 65 61 64 46 69 6c 65 } //05 00  InternetReadFile
		$a_00_9 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e } //05 00  InternetOpen
		$a_00_10 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 45 78 } //01 00  VirtualAllocEx
		$a_00_11 = {4d 6f 7a 69 6c 6c 61 2f 34 2e 30 20 28 63 6f 6d 70 61 74 69 62 6c 65 3b 20 4d 53 49 45 20 36 2e 30 3b 20 57 69 6e 64 6f 77 73 20 58 50 20 35 2e 31 29 } //01 00  Mozilla/4.0 (compatible; MSIE 6.0; Windows XP 5.1)
		$a_00_12 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 20 4e 54 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 57 69 6e 6c 6f 67 6f 6e } //9c ff  Software\Microsoft\Windows NT\CurrentVersion\Winlogon
		$a_01_13 = {41 6e 56 69 72 20 54 61 73 6b 20 4d 61 6e 61 67 65 72 } //00 00  AnVir Task Manager
	condition:
		any of ($a_*)
 
}