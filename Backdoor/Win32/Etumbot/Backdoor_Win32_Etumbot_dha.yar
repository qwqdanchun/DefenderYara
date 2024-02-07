
rule Backdoor_Win32_Etumbot_dha{
	meta:
		description = "Backdoor:Win32/Etumbot!dha,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {47 65 74 50 72 6f 63 65 73 73 49 64 28 29 20 74 6f 20 66 61 69 6c 65 64 21 } //01 00  GetProcessId() to failed!
		$a_01_1 = {43 72 65 61 74 65 50 72 6f 63 65 73 73 41 73 55 73 65 72 28 29 20 3d 20 25 64 } //01 00  CreateProcessAsUser() = %d
		$a_01_2 = {41 6c 6c 6f 63 61 74 65 20 53 49 44 20 6f 72 20 41 43 4c 20 74 6f 20 66 61 69 6c 65 64 21 } //01 00  Allocate SID or ACL to failed!
		$a_01_3 = {41 6c 6c 6f 63 61 74 65 20 70 53 64 20 6d 65 6d 6f 72 79 20 74 6f 20 66 61 69 6c 65 64 21 } //05 00  Allocate pSd memory to failed!
		$a_00_4 = {c6 44 24 19 50 c6 44 24 1a 41 c6 44 24 1b 73 c6 44 24 1c 55 c6 44 24 1d 73 c6 44 24 20 3a 88 4c 24 21 88 5c 24 25 c6 44 24 26 74 c6 44 24 28 50 88 54 24 2a c6 44 24 2b 63 c6 44 24 2d 73 c6 44 24 2e 73 c6 44 24 2f 28 c6 44 24 30 29 88 4c 24 31 } //05 00 
		$a_00_5 = {c6 44 24 32 74 88 54 24 33 88 4c 24 34 c6 44 24 35 66 88 5c 24 36 c6 44 24 37 69 c6 44 24 38 6c c6 44 24 3a 64 c6 44 24 3b 21 } //00 00 
		$a_00_6 = {80 10 00 00 93 98 37 } //4b 06 
	condition:
		any of ($a_*)
 
}