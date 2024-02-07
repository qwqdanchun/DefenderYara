
rule TrojanSpy_Win32_Keylogger_FZ{
	meta:
		description = "TrojanSpy:Win32/Keylogger.FZ,SIGNATURE_TYPE_PEHSTR,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {43 00 44 00 4f 00 2e 00 4d 00 65 00 73 00 73 00 61 00 67 00 65 00 00 00 } //01 00 
		$a_01_1 = {4b 65 79 6c 6f 67 67 65 72 } //01 00  Keylogger
		$a_01_2 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 5c 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 } //01 00  \CurrentVersion\Policies\System\DisableTaskMgr
		$a_01_3 = {43 00 6f 00 64 00 65 00 72 00 20 00 42 00 79 00 20 00 52 00 69 00 6b 00 6b 00 75 00 } //01 00  Coder By Rikku
		$a_01_4 = {00 00 53 00 65 00 72 00 76 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //00 00 
	condition:
		any of ($a_*)
 
}