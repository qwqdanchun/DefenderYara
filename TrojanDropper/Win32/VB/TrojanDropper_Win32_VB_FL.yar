
rule TrojanDropper_Win32_VB_FL{
	meta:
		description = "TrojanDropper:Win32/VB.FL,SIGNATURE_TYPE_PEHSTR,09 00 08 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {77 00 69 00 6e 00 6d 00 67 00 6d 00 74 00 73 00 3a 00 5c 00 5c 00 2e 00 5c 00 72 00 6f 00 6f 00 74 00 5c 00 64 00 65 00 66 00 61 00 75 00 6c 00 74 00 3a 00 53 00 79 00 73 00 74 00 65 00 6d 00 52 00 65 00 73 00 74 00 6f 00 72 00 65 00 } //01 00  winmgmts:\\.\root\default:SystemRestore
		$a_01_1 = {53 00 62 00 69 00 65 00 44 00 6c 00 6c 00 2e 00 64 00 6c 00 6c 00 } //01 00  SbieDll.dll
		$a_01_2 = {74 00 61 00 73 00 6b 00 6b 00 69 00 6c 00 6c 00 20 00 2f 00 66 00 20 00 2f 00 69 00 6d 00 } //02 00  taskkill /f /im
		$a_01_3 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 53 00 65 00 72 00 76 00 69 00 63 00 65 00 73 00 2e 00 65 00 78 00 65 00 } //03 00  \WindowsServices.exe
		$a_01_4 = {53 00 72 00 79 00 20 00 74 00 68 00 65 00 20 00 66 00 69 00 6c 00 65 00 20 00 79 00 6f 00 75 00 20 00 61 00 72 00 65 00 20 00 74 00 72 00 79 00 69 00 6e 00 67 00 20 00 74 00 6f 00 20 00 63 00 72 00 79 00 70 00 74 00 20 00 69 00 73 00 20 00 76 00 65 00 72 00 79 00 20 00 6c 00 6f 00 6e 00 67 00 } //03 00  Sry the file you are trying to crypt is very long
		$a_01_5 = {6e 00 65 00 74 00 20 00 73 00 74 00 6f 00 70 00 20 00 73 00 68 00 61 00 72 00 65 00 64 00 61 00 63 00 63 00 65 00 73 00 73 00 } //00 00  net stop sharedaccess
	condition:
		any of ($a_*)
 
}