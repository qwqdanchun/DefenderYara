
rule TrojanDropper_Win32_Tedroo_B{
	meta:
		description = "TrojanDropper:Win32/Tedroo.B,SIGNATURE_TYPE_PEHSTR,01 01 01 01 0f 00 00 64 00 "
		
	strings :
		$a_01_0 = {64 65 6c 20 25 } //64 00  del %
		$a_01_1 = {69 66 20 65 78 69 73 74 20 25 31 20 67 6f 74 6f 20 } //0a 00  if exist %1 goto 
		$a_01_2 = {5c 00 5c 00 2e 00 5c 00 44 00 65 00 66 00 4c 00 69 00 62 00 } //0a 00  \\.\DefLib
		$a_01_3 = {53 00 79 00 73 00 4c 00 69 00 62 00 72 00 61 00 72 00 79 00 } //0a 00  SysLibrary
		$a_01_4 = {5c 00 64 00 72 00 69 00 76 00 65 00 72 00 73 00 5c 00 65 00 74 00 63 00 5c 00 68 00 6f 00 73 00 74 00 73 00 } //0a 00  \drivers\etc\hosts
		$a_01_5 = {65 00 78 00 70 00 6c 00 6f 00 72 00 65 00 72 00 2e 00 65 00 78 00 65 00 } //0a 00  explorer.exe
		$a_01_6 = {46 69 72 65 77 61 6c 6c 20 61 75 74 6f 20 73 65 74 75 70 } //01 00  Firewall auto setup
		$a_01_7 = {53 4f 46 54 57 41 52 45 5c 4d 69 63 72 6f 73 6f 66 74 5c 57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e } //01 00  SOFTWARE\Microsoft\Windows\CurrentVersion\Run
		$a_01_8 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 53 65 63 75 72 69 74 79 } //01 00  Software\Microsoft\Internet Explorer\Security
		$a_01_9 = {5a 77 4c 6f 61 64 44 72 69 76 65 72 } //01 00  ZwLoadDriver
		$a_01_10 = {4c 6f 61 64 4c 69 62 72 61 72 79 45 78 57 } //01 00  LoadLibraryExW
		$a_01_11 = {52 59 43 72 65 61 74 65 57 69 6e 64 6f 77 45 78 57 } //01 00  RYCreateWindowExW
		$a_01_12 = {47 65 74 53 79 73 74 65 6d 44 69 72 65 63 74 6f 72 79 57 } //01 00  GetSystemDirectoryW
		$a_01_13 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //01 00  CreateToolhelp32Snapshot
		$a_01_14 = {4d 4d 57 72 69 74 65 50 72 69 76 61 74 65 50 72 6f 66 69 6c 65 53 74 72 69 6e 67 41 } //00 00  MMWritePrivateProfileStringA
	condition:
		any of ($a_*)
 
}