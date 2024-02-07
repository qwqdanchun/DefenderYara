
rule Trojan_Win32_VB_PB{
	meta:
		description = "Trojan:Win32/VB.PB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 18 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {2e 65 78 65 63 71 75 65 72 79 28 22 20 53 65 6c 65 63 74 20 2a 20 46 72 6f 6d 20 77 69 6e 33 32 5f 70 72 6f 63 65 73 73 20 77 68 65 72 65 20 6e 61 6d 65 20 3d 20 27 22 20 26 20 50 72 6f 63 65 73 73 4e 61 6d 65 20 26 20 22 27 20 22 29 } //01 00  .execquery(" Select * From win32_process where name = '" & ProcessName & "' ")
		$a_00_1 = {53 75 62 20 4b 69 6c 6c 50 72 6f 63 65 73 73 28 50 72 6f 63 65 73 73 4e 61 6d 65 73 29 } //01 00  Sub KillProcess(ProcessNames)
		$a_01_2 = {69 65 64 6f 77 6e 5f 00 70 75 62 6c 69 63 } //01 00  敩潤湷_異汢捩
		$a_00_3 = {73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 3d 00 } //01 00  shell\open\Command=
		$a_00_4 = {72 00 65 00 67 00 20 00 41 00 44 00 44 00 20 00 48 00 4b 00 4c 00 4d 00 5c 00 53 00 4f 00 46 00 54 00 57 00 41 00 52 00 45 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 20 00 2f 00 56 00 } //0a 00  reg ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /V
		$a_00_5 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00  WriteProcessMemory
		$a_00_6 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}