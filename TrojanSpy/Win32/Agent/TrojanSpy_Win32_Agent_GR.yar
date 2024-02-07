
rule TrojanSpy_Win32_Agent_GR{
	meta:
		description = "TrojanSpy:Win32/Agent.GR,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 68 65 6c 6c 45 78 65 63 75 74 65 45 78 41 } //01 00  ShellExecuteExA
		$a_01_1 = {77 6f 72 64 70 61 64 2e 65 78 65 } //01 00  wordpad.exe
		$a_01_2 = {55 73 65 72 3a 20 25 73 } //01 00  User: %s
		$a_01_3 = {53 54 4f 52 20 25 73 } //01 00  STOR %s
		$a_01_4 = {50 41 53 53 20 25 73 } //01 00  PASS %s
		$a_01_5 = {49 45 55 73 65 72 40 } //01 00  IEUser@
		$a_01_6 = {20 3e 20 6e 75 6c 00 00 2f 63 20 64 65 6c 20 } //01 00 
		$a_01_7 = {66 74 70 3a 2f 2f } //01 00  ftp://
		$a_01_8 = {48 61 72 64 77 61 72 65 5c 44 65 73 63 72 69 70 74 69 6f 6e 5c 53 79 73 74 65 6d 5c 43 65 6e 74 72 61 6c 50 72 6f 63 65 73 73 6f 72 5c 30 } //01 00  Hardware\Description\System\CentralProcessor\0
		$a_01_9 = {68 74 74 70 3a 2f 2f 00 63 6f 6e 74 65 6e 74 2d 6c 65 6e 67 74 68 } //0a 00 
		$a_03_10 = {74 28 6a 02 53 53 55 ff 15 90 01 21 56 6a 1e 8d 44 24 1c 50 bd 90 01 c1 5b 3c 5d 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}