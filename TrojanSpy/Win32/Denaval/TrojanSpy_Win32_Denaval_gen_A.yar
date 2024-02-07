
rule TrojanSpy_Win32_Denaval_gen_A{
	meta:
		description = "TrojanSpy:Win32/Denaval.gen!A,SIGNATURE_TYPE_PEHSTR,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 72 00 69 00 76 00 65 00 72 00 73 00 2e 00 65 00 78 00 65 00 } //01 00  \System\Drivers.exe
		$a_01_1 = {74 00 69 00 74 00 6f 00 73 00 2e 00 45 00 58 00 45 00 00 00 1a 00 00 00 44 00 65 00 73 00 63 00 } //01 00 
		$a_01_2 = {2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 52 00 65 00 67 00 69 00 73 00 74 00 72 00 79 00 54 00 6f 00 6f 00 6c 00 73 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 } //01 00  /v DisableRegistryTools /t REG_DWORD /d
		$a_01_3 = {2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 } //01 00  /v DisableTaskMgr /t REG_DWORD /d
		$a_01_4 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_5 = {72 00 69 00 76 00 65 00 72 00 73 00 00 00 16 00 00 00 6d 00 73 00 6e 00 6d 00 73 00 67 } //00 00 
	condition:
		any of ($a_*)
 
}