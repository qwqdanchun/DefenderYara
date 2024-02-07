
rule PWS_Win32_Lmir_BMQ{
	meta:
		description = "PWS:Win32/Lmir.BMQ,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 08 00 00 02 00 "
		
	strings :
		$a_02_0 = {73 6f 75 6c c7 45 90 01 01 2e 65 78 65 90 00 } //02 00 
		$a_02_1 = {41 75 74 6f c7 45 90 01 01 50 61 74 63 c7 45 90 01 01 68 2e 65 78 c7 45 90 01 01 65 00 00 00 90 00 } //02 00 
		$a_02_2 = {2e 5c 73 6f c7 45 90 01 01 75 6c 2e 65 c7 45 90 01 01 78 65 00 00 90 00 } //01 00 
		$a_01_3 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 41 } //01 00  InternetOpenA
		$a_01_4 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_01_5 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_01_6 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_7 = {73 6f 75 6c 2e 65 78 65 } //00 00  soul.exe
	condition:
		any of ($a_*)
 
}