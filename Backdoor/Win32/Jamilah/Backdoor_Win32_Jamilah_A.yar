
rule Backdoor_Win32_Jamilah_A{
	meta:
		description = "Backdoor:Win32/Jamilah.A,SIGNATURE_TYPE_PEHSTR,33 00 33 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {48 6f 6f 6b 65 64 53 44 54 } //0a 00  HookedSDT
		$a_01_1 = {6b 69 6c 6c 20 50 72 6f 63 65 73 73 } //0a 00  kill Process
		$a_01_2 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //0a 00  WriteProcessMemory
		$a_01_3 = {5a 77 51 75 65 72 79 53 79 73 74 65 6d 49 6e 66 6f 72 6d 61 74 69 6f 6e } //0a 00  ZwQuerySystemInformation
		$a_01_4 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //01 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_5 = {73 68 65 20 69 73 20 6d 79 20 66 72 69 65 6e 64 20 6f 6b } //01 00  she is my friend ok
		$a_01_6 = {49 20 43 61 6e 74 20 4f 70 65 6e 20 4d 79 20 4f 57 4e 20 44 72 69 76 65 72 } //01 00  I Cant Open My OWN Driver
		$a_01_7 = {77 65 20 73 68 6f 75 6c 64 6e 27 74 20 66 69 67 68 74 20 65 61 63 68 20 6f 74 68 65 72 } //00 00  we shouldn't fight each other
	condition:
		any of ($a_*)
 
}