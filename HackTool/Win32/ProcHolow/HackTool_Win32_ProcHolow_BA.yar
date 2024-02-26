
rule HackTool_Win32_ProcHolow_BA{
	meta:
		description = "HackTool:Win32/ProcHolow.BA,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {48 6f 6c 6c 6f 77 47 68 6f 73 74 90 02 0f 2e 4d 6f 64 75 6c 65 73 2e 45 76 61 73 69 6f 6e 90 00 } //01 00 
		$a_00_1 = {5a 77 51 75 65 72 79 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //01 00  ZwQueryInformationProcess
		$a_00_2 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_00_3 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  WriteProcessMemory
		$a_00_4 = {52 65 73 75 6d 65 54 68 72 65 61 64 } //01 00  ResumeThread
		$a_00_5 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 } //00 00  CreateProcess
	condition:
		any of ($a_*)
 
}