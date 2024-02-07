
rule TrojanSpy_Win32_Yokumlog_A{
	meta:
		description = "TrojanSpy:Win32/Yokumlog.A,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {5c 57 69 6e 64 6f 77 73 43 6f 6d 6f 64 6f 5c 73 76 63 68 6f 73 74 2e 65 78 65 20 2b 68 20 2b 61 } //01 00  \WindowsComodo\svchost.exe +h +a
		$a_01_1 = {79 6f 6b 6d 75 20 6c 6f 67 67 65 72 } //01 00  yokmu logger
		$a_03_2 = {68 00 74 00 74 00 70 00 3a 00 2f 00 2f 00 77 00 77 00 77 00 2e 00 90 02 20 2e 00 63 00 6f 00 6d 00 2f 00 53 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 2e 00 65 00 78 00 65 00 90 00 } //01 00 
		$a_01_3 = {5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 31 00 20 00 2f 00 66 00 } //00 00  \System /v DisableTaskMgr /t REG_DWORD /d 1 /f
		$a_00_4 = {5d 04 } //00 00  ѝ
	condition:
		any of ($a_*)
 
}