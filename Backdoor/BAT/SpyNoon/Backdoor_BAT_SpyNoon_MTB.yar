
rule Backdoor_BAT_SpyNoon_MTB{
	meta:
		description = "Backdoor:BAT/SpyNoon!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {45 6e 74 72 79 50 6f 69 6e 74 } //01 00  EntryPoint
		$a_01_1 = {56 69 72 74 75 61 6c 41 6c 6c 6f 63 } //01 00  VirtualAlloc
		$a_01_2 = {4e 74 53 65 74 49 6e 66 6f 72 6d 61 74 69 6f 6e 50 72 6f 63 65 73 73 } //01 00  NtSetInformationProcess
		$a_01_3 = {67 65 74 5f 45 78 65 63 75 74 61 62 6c 65 50 61 74 68 } //01 00  get_ExecutablePath
		$a_01_4 = {67 65 74 5f 4d 61 63 68 69 6e 65 4e 61 6d 65 } //01 00  get_MachineName
		$a_01_5 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_7 = {53 00 65 00 74 00 20 00 57 00 73 00 68 00 53 00 68 00 65 00 6c 00 6c 00 20 00 3d 00 20 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 43 00 72 00 65 00 61 00 74 00 65 00 4f 00 62 00 6a 00 65 00 63 00 74 00 28 00 22 00 57 00 53 00 63 00 72 00 69 00 70 00 74 00 2e 00 53 00 68 00 65 00 6c 00 6c 00 22 00 29 00 } //01 00  Set WshShell = WScript.CreateObject("WScript.Shell")
		$a_01_8 = {57 00 73 00 68 00 53 00 68 00 65 00 6c 00 6c 00 2e 00 52 00 75 00 6e 00 22 00 43 00 3a 00 5c 00 } //01 00  WshShell.Run"C:\
		$a_01_9 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_81_10 = {49 6e 73 74 61 6c 6c 55 74 69 6c 2e 65 78 65 } //00 00  InstallUtil.exe
	condition:
		any of ($a_*)
 
}