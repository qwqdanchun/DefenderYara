
rule Backdoor_BAT_Kryptik_A_MSR{
	meta:
		description = "Backdoor:BAT/Kryptik.A!MSR,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_00_0 = {76 00 6d 00 74 00 6f 00 6f 00 6c 00 73 00 64 00 } //01 00  vmtoolsd
		$a_00_1 = {56 00 42 00 6f 00 78 00 54 00 72 00 61 00 79 00 } //01 00  VBoxTray
		$a_01_2 = {57 00 69 00 6e 00 44 00 72 00 69 00 76 00 2e 00 75 00 72 00 6c 00 } //01 00  WinDriv.url
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {43 00 20 00 63 00 68 00 6f 00 69 00 63 00 65 00 20 00 2f 00 43 00 20 00 59 00 20 00 2f 00 4e 00 20 00 2f 00 44 00 20 00 59 00 20 00 2f 00 54 00 20 00 33 00 20 00 26 00 20 00 44 00 65 00 6c 00 } //00 00  C choice /C Y /N /D Y /T 3 & Del
	condition:
		any of ($a_*)
 
}