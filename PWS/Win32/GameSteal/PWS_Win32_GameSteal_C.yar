
rule PWS_Win32_GameSteal_C{
	meta:
		description = "PWS:Win32/GameSteal.C,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 } //01 00  SOFTWARE\Borland\Delphi
		$a_01_1 = {52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //01 00  ReadProcessMemory
		$a_00_2 = {49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e } //01 00  Internet Explorer\Main
		$a_00_3 = {77 6f 77 2e 65 78 65 } //01 00  wow.exe
		$a_00_4 = {77 6f 6f 6f 6c 2e } //01 00  woool.
		$a_00_5 = {7a 68 65 6e 67 74 75 } //01 00  zhengtu
		$a_00_6 = {65 6c 65 6d 65 6e 74 63 6c 69 65 6e 74 } //01 00  elementclient
		$a_00_7 = {45 78 70 6c 6f 72 65 72 2e 45 78 65 } //01 00  Explorer.Exe
		$a_01_8 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 41 } //01 00  SetWindowsHookExA
		$a_01_9 = {4d 73 67 48 6f 6f 6b 4f 6e } //00 00  MsgHookOn
	condition:
		any of ($a_*)
 
}