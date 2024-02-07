
rule TrojanSpy_Win32_Keylogger_EJ{
	meta:
		description = "TrojanSpy:Win32/Keylogger.EJ,SIGNATURE_TYPE_PEHSTR_EXT,5b 00 5b 00 0f 00 00 0a 00 "
		
	strings :
		$a_00_0 = {62 00 70 00 6b 00 2e 00 64 00 61 00 74 00 } //0a 00  bpk.dat
		$a_00_1 = {77 00 65 00 62 00 2e 00 64 00 61 00 74 00 } //0a 00  web.dat
		$a_00_2 = {62 00 70 00 6b 00 63 00 68 00 2e 00 64 00 61 00 74 00 } //0a 00  bpkch.dat
		$a_00_3 = {6b 00 65 00 79 00 73 00 74 00 72 00 6f 00 6b 00 65 00 73 00 2e 00 68 00 74 00 6d 00 6c 00 } //0a 00  keystrokes.html
		$a_00_4 = {77 00 65 00 62 00 73 00 69 00 74 00 65 00 73 00 2e 00 68 00 74 00 6d 00 6c 00 } //0a 00  websites.html
		$a_00_5 = {63 00 68 00 61 00 74 00 73 00 2e 00 68 00 74 00 6d 00 6c 00 } //0a 00  chats.html
		$a_00_6 = {72 00 65 00 70 00 6f 00 72 00 74 00 2e 00 74 00 78 00 74 00 } //05 00  report.txt
		$a_01_7 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  WriteProcessMemory
		$a_01_8 = {57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //05 00  WindowsHookEx
		$a_01_9 = {46 74 70 50 75 74 46 69 6c 65 } //05 00  FtpPutFile
		$a_01_10 = {46 74 70 53 65 74 43 75 72 72 65 6e 74 44 69 72 65 63 74 6f 72 79 } //05 00  FtpSetCurrentDirectory
		$a_01_11 = {47 65 74 4b 65 79 62 6f 61 72 64 4c 61 79 6f 75 74 } //05 00  GetKeyboardLayout
		$a_00_12 = {43 4f 52 52 45 43 54 2e 64 6c 6c } //06 00  CORRECT.dll
		$a_00_13 = {45 58 45 43 72 79 70 74 6f 72 20 56 32 2e 33 2e 39 2e 30 2e 44 65 6d 6f 2e 43 72 61 63 4b 65 64 2e 42 79 20 3a 20 66 6c 79 } //01 00  EXECryptor V2.3.9.0.Demo.CracKed.By : fly
		$a_01_14 = {44 4c 4c 5f 47 65 74 50 72 6f 6a 65 63 74 56 65 72 73 69 6f 6e } //00 00  DLL_GetProjectVersion
	condition:
		any of ($a_*)
 
}