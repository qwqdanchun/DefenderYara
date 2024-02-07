
rule Backdoor_Win32_Wisdoor{
	meta:
		description = "Backdoor:Win32/Wisdoor,SIGNATURE_TYPE_PEHSTR,0a 00 08 00 09 00 00 04 00 "
		
	strings :
		$a_01_0 = {77 69 73 64 6f 6d } //04 00  wisdom
		$a_01_1 = {38 38 46 69 6e 61 6c 53 6f 6c 75 74 69 6f 6e } //04 00  88FinalSolution
		$a_01_2 = {44 43 43 20 63 6f 6e 73 6f 6c 65 } //02 00  DCC console
		$a_01_3 = {73 63 72 69 70 74 73 2f 25 32 65 } //01 00  scripts/%2e
		$a_01_4 = {61 6d 61 74 65 75 72 20 76 69 64 65 6f } //01 00  amateur video
		$a_01_5 = {4b 65 79 53 70 79 } //01 00  KeySpy
		$a_01_6 = {63 61 70 74 75 72 69 6e 67 } //01 00  capturing
		$a_01_7 = {53 65 74 57 69 6e 64 6f 77 73 48 6f 6f 6b } //01 00  SetWindowsHook
		$a_01_8 = {55 53 45 52 20 25 73 } //00 00  USER %s
	condition:
		any of ($a_*)
 
}