
rule PWS_Win32_Frethog_M{
	meta:
		description = "PWS:Win32/Frethog.M,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {41 63 63 65 70 74 3a 20 2a 2f 2a 00 48 54 54 50 2f 31 2e 30 00 00 00 00 50 4f 53 54 00 00 00 00 43 6f 6e 74 65 6e 74 2d 54 79 70 65 3a 20 61 70 70 6c 69 63 61 74 69 6f 6e 2f 78 2d 77 77 77 2d 66 6f 72 6d 2d 75 72 6c 65 6e 63 6f 64 65 64 } //01 00 
		$a_00_1 = {77 6f 77 2e 65 78 65 } //01 00  wow.exe
		$a_01_2 = {57 30 57 2e 65 78 65 } //01 00  W0W.exe
		$a_01_3 = {57 51 57 2e 65 78 65 } //01 00  WQW.exe
		$a_01_4 = {57 63 57 2e 65 78 65 } //01 00  WcW.exe
		$a_01_5 = {57 61 57 2e 65 78 65 } //01 00  WaW.exe
		$a_01_6 = {4a 75 6d 70 48 6f 6f 6b 4f 6e } //01 00  JumpHookOn
		$a_01_7 = {50 72 6f 67 72 61 6d 20 4d 61 6e 61 67 65 72 } //01 00  Program Manager
		$a_01_8 = {57 72 69 74 65 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //00 00  WriteProcessMemory
	condition:
		any of ($a_*)
 
}