
rule Backdoor_Win32_Sharke_L{
	meta:
		description = "Backdoor:Win32/Sharke.L,SIGNATURE_TYPE_PEHSTR_EXT,17 00 16 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {6d 4d 61 69 6e 00 00 00 6d 6f 64 55 73 65 72 6c 61 6e 64 55 6e 68 6f 6f 6b 69 6e 67 } //0a 00 
		$a_00_1 = {4d 53 56 42 56 4d 36 30 2e 44 4c 4c } //01 00  MSVBVM60.DLL
		$a_00_2 = {6b 00 65 00 72 00 6e 00 65 00 6c 00 33 00 33 00 2e 00 64 00 6c 00 6c 00 } //01 00  kernel33.dll
		$a_00_3 = {25 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 62 00 72 00 6f 00 77 00 73 00 65 00 72 00 25 00 } //01 00  %defaultbrowser%
		$a_00_4 = {48 00 54 00 54 00 50 00 5c 00 73 00 68 00 65 00 6c 00 6c 00 5c 00 6f 00 70 00 65 00 6e 00 5c 00 63 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 5c 00 } //03 00  HTTP\shell\open\command\
		$a_00_5 = {58 00 3a 00 5c 00 73 00 68 00 61 00 72 00 4b 00 20 00 33 00 5c 00 43 00 6c 00 69 00 } //00 00  X:\sharK 3\Cli
	condition:
		any of ($a_*)
 
}