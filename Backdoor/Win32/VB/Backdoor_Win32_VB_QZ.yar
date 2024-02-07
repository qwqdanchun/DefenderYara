
rule Backdoor_Win32_VB_QZ{
	meta:
		description = "Backdoor:Win32/VB.QZ,SIGNATURE_TYPE_PEHSTR,06 00 05 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {53 48 45 6d 70 74 79 52 65 63 79 63 6c 65 42 69 6e 41 } //01 00  SHEmptyRecycleBinA
		$a_01_1 = {42 00 6f 00 74 00 20 00 43 00 6f 00 6e 00 6e 00 65 00 63 00 74 00 65 00 64 00 } //01 00  Bot Connected
		$a_01_2 = {55 00 44 00 50 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 52 00 75 00 6e 00 6e 00 69 00 6e 00 67 00 21 00 } //01 00  UDP Attack Running!
		$a_01_3 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 } //01 00  autorun
		$a_01_4 = {6f 00 70 00 65 00 6e 00 6d 00 65 00 73 00 73 00 61 00 6e 00 67 00 65 00 72 00 } //01 00  openmessanger
		$a_01_5 = {5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 50 00 6f 00 6c 00 69 00 63 00 69 00 65 00 73 00 5c 00 53 00 79 00 73 00 74 00 65 00 6d 00 20 00 2f 00 76 00 20 00 44 00 69 00 73 00 61 00 62 00 6c 00 65 00 54 00 61 00 73 00 6b 00 4d 00 67 00 72 00 20 00 2f 00 74 00 20 00 52 00 45 00 47 00 5f 00 44 00 57 00 4f 00 52 00 44 00 20 00 2f 00 64 00 20 00 31 00 } //01 00  \CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1
		$a_01_6 = {5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 5c 00 41 00 75 00 74 00 68 00 6f 00 72 00 69 00 7a 00 65 00 64 00 41 00 70 00 70 00 6c 00 69 00 63 00 61 00 74 00 69 00 6f 00 6e 00 73 00 5c 00 4c 00 69 00 73 00 74 00 } //00 00  \FirewallPolicy\StandardProfile\AuthorizedApplications\List
	condition:
		any of ($a_*)
 
}