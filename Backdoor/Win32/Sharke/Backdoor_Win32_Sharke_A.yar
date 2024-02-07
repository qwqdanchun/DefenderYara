
rule Backdoor_Win32_Sharke_A{
	meta:
		description = "Backdoor:Win32/Sharke.A,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_00_0 = {3a 00 5c 00 73 00 68 00 61 00 72 00 4b 00 20 00 33 00 5c 00 49 00 6e 00 6a 00 65 00 63 00 74 00 6f 00 72 00 } //01 00  :\sharK 3\Injector
		$a_00_1 = {57 00 72 00 69 00 74 00 65 00 50 00 72 00 6f 00 63 00 65 00 73 00 73 00 4d 00 65 00 6d 00 6f 00 72 00 79 00 } //01 00  WriteProcessMemory
		$a_00_2 = {53 00 65 00 74 00 54 00 68 00 72 00 65 00 61 00 64 00 43 00 6f 00 6e 00 74 00 65 00 78 00 74 00 } //01 00  SetThreadContext
		$a_00_3 = {48 00 54 00 54 00 50 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 5c 00 } //01 00  HTTP\shell\open\command\
		$a_00_4 = {72 00 65 00 67 00 72 00 65 00 61 00 64 00 } //01 00  regread
		$a_01_5 = {6d 4d 61 69 6e 00 00 00 6d 6f 64 55 73 65 72 6c 61 6e 64 55 6e 68 6f 6f 6b 69 6e 67 } //01 00 
		$a_00_6 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //00 00  MSVBVM60.DLL
	condition:
		any of ($a_*)
 
}