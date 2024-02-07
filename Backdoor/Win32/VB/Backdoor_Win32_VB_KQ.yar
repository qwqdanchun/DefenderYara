
rule Backdoor_Win32_VB_KQ{
	meta:
		description = "Backdoor:Win32/VB.KQ,SIGNATURE_TYPE_PEHSTR_EXT,08 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 63 6b 53 65 72 76 65 72 5f 43 6f 6e 6e 65 63 74 } //02 00  sckServer_Connect
		$a_00_1 = {53 00 65 00 6c 00 65 00 63 00 74 00 20 00 2a 00 20 00 66 00 72 00 6f 00 6d 00 20 00 41 00 6e 00 74 00 69 00 56 00 69 00 72 00 75 00 73 00 50 00 72 00 6f 00 64 00 75 00 63 00 74 00 } //01 00  Select * from AntiVirusProduct
		$a_00_2 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_00_3 = {53 00 65 00 53 00 68 00 75 00 74 00 64 00 6f 00 77 00 6e 00 50 00 72 00 69 00 76 00 69 00 6c 00 65 00 67 00 65 00 } //02 00  SeShutdownPrivilege
		$a_01_4 = {74 6d 72 4f 46 46 4b 65 79 73 } //00 00  tmrOFFKeys
	condition:
		any of ($a_*)
 
}