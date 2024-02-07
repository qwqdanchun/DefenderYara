
rule TrojanDropper_Win32_Injector_A{
	meta:
		description = "TrojanDropper:Win32/Injector.A,SIGNATURE_TYPE_PEHSTR,33 00 33 00 07 00 00 0a 00 "
		
	strings :
		$a_01_0 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00  WriteProcessMemory
		$a_01_1 = {43 72 65 61 74 65 52 65 6d 6f 74 65 54 68 72 65 61 64 } //0a 00  CreateRemoteThread
		$a_01_2 = {25 00 73 00 5c 00 64 00 65 00 63 00 64 00 65 00 6c 00 2e 00 62 00 61 00 74 00 } //0a 00  %s\decdel.bat
		$a_01_3 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 77 00 69 00 6e 00 68 00 65 00 6c 00 70 00 33 00 32 00 2e 00 65 00 78 00 65 00 } //0a 00  \windows\system32\winhelp32.exe
		$a_01_4 = {5c 00 77 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 73 00 79 00 73 00 74 00 65 00 6d 00 33 00 32 00 5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 56 00 49 00 44 00 45 00 4f 00 2e 00 73 00 79 00 73 00 } //01 00  \windows\system32\drivers\VIDEO.sys
		$a_01_5 = {66 81 39 4d 5a 75 2b 8b 51 3c 85 d2 7c 24 81 fa 00 00 00 10 73 1c 8d 04 0a 89 45 e4 81 38 50 45 00 00 74 } //01 00 
		$a_01_6 = {5a eb 0c 03 ca 68 00 80 00 00 6a 00 57 ff 11 8b c6 5a 5e 5f 59 5b 5d ff e0 } //00 00 
	condition:
		any of ($a_*)
 
}