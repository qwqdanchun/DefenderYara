
rule Backdoor_Win32_Blackhole_R{
	meta:
		description = "Backdoor:Win32/Blackhole.R,SIGNATURE_TYPE_PEHSTR_EXT,7c 01 7c 01 0f 00 00 64 00 "
		
	strings :
		$a_01_0 = {4b 65 79 53 70 79 2e 64 6c 6c } //64 00  KeySpy.dll
		$a_01_1 = {4b 65 79 6c 6f 67 2e 74 78 74 } //64 00  Keylog.txt
		$a_01_2 = {47 65 74 4b 65 79 00 } //0a 00 
		$a_00_3 = {53 4f 46 54 57 41 52 45 5c 42 6f 72 6c 61 6e 64 5c 44 65 6c 70 68 69 5c 52 54 4c } //0a 00  SOFTWARE\Borland\Delphi\RTL
		$a_01_4 = {46 50 55 4d 61 73 6b 56 61 6c 75 65 } //0a 00  FPUMaskValue
		$a_01_5 = {53 74 61 72 74 48 6f 6f 6b } //0a 00  StartHook
		$a_00_6 = {53 74 6f 70 48 6f 6f 6b } //05 00  StopHook
		$a_01_7 = {43 72 65 61 74 65 54 6f 6f 6c 68 65 6c 70 33 32 53 6e 61 70 73 68 6f 74 } //05 00  CreateToolhelp32Snapshot
		$a_01_8 = {54 6f 6f 6c 68 65 6c 70 33 32 52 65 61 64 50 72 6f 63 65 73 73 4d 65 6d 6f 72 79 } //05 00  Toolhelp32ReadProcessMemory
		$a_00_9 = {50 72 6f 63 65 73 73 33 32 46 69 72 73 74 } //05 00  Process32First
		$a_00_10 = {50 72 6f 63 65 73 73 33 32 4e 65 78 74 } //05 00  Process32Next
		$a_01_11 = {54 68 72 65 61 64 33 32 46 69 72 73 74 } //05 00  Thread32First
		$a_01_12 = {54 68 72 65 61 64 33 32 4e 65 78 74 } //05 00  Thread32Next
		$a_00_13 = {4d 6f 64 75 6c 65 33 32 46 69 72 73 74 } //05 00  Module32First
		$a_00_14 = {4d 6f 64 75 6c 65 33 32 4e 65 78 74 } //00 00  Module32Next
	condition:
		any of ($a_*)
 
}