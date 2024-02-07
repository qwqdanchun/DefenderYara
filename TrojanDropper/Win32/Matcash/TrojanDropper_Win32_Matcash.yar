
rule TrojanDropper_Win32_Matcash{
	meta:
		description = "TrojanDropper:Win32/Matcash,SIGNATURE_TYPE_PEHSTR,2b 00 2b 00 09 00 00 0a 00 "
		
	strings :
		$a_01_0 = {49 6e 74 65 72 6e 65 74 4f 70 65 6e 55 72 6c 41 } //0a 00  InternetOpenUrlA
		$a_01_1 = {53 68 65 6c 6c 45 78 65 63 75 74 65 41 } //0a 00  ShellExecuteA
		$a_01_2 = {52 65 67 53 65 74 56 61 6c 75 65 45 78 41 } //0a 00  RegSetValueExA
		$a_01_3 = {55 6e 68 6f 6f 6b 57 69 6e 64 6f 77 73 48 6f 6f 6b 45 78 } //01 00  UnhookWindowsHookEx
		$a_01_4 = {2f 63 61 70 74 75 72 65 38 2f 00 00 2f 6d 63 61 73 68 2f 00 68 74 74 70 3a 2f 2f } //01 00 
		$a_01_5 = {77 65 62 6e 6f 31 00 00 63 68 65 63 6b 2e 70 68 70 3f 6d 61 63 3d } //01 00 
		$a_01_6 = {5c 63 68 38 38 2e 74 6d 70 00 00 00 2e 64 65 6c 65 74 65 64 } //01 00 
		$a_01_7 = {2e 65 78 65 00 00 00 00 75 73 65 00 2f 00 00 00 73 74 61 72 74 75 70 00 6f 6e 63 65 } //01 00 
		$a_01_8 = {53 6f 66 74 77 61 72 65 5c 4d 69 63 72 6f 73 6f 66 74 5c 49 6e 74 65 72 6e 65 74 20 45 78 70 6c 6f 72 65 72 5c 4d 61 69 6e 00 00 00 2e 45 58 45 } //00 00 
	condition:
		any of ($a_*)
 
}