
rule Backdoor_Win32_Afcore{
	meta:
		description = "Backdoor:Win32/Afcore,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 0b 00 00 01 00 "
		
	strings :
		$a_01_0 = {49 4e 53 54 41 4c 4c 5f 42 41 53 45 } //01 00  INSTALL_BASE
		$a_01_1 = {2a 5c 69 6e 74 65 72 6e 2a 5c 69 65 78 70 6c 6f 72 65 2e 65 78 65 } //01 00  *\intern*\iexplore.exe
		$a_01_2 = {4f 63 74 6f 70 75 73 20 50 49 44 3a 20 25 64 28 25 69 29 } //01 00  Octopus PID: %d(%i)
		$a_01_3 = {64 61 79 20 25 64 20 68 61 73 20 65 6c 61 70 73 65 64 } //01 00  day %d has elapsed
		$a_01_4 = {77 61 6e 74 65 64 20 70 72 6f 63 65 73 73 20 28 25 73 29 2c 20 6c 65 76 65 6c 3d 25 64 } //01 00  wanted process (%s), level=%d
		$a_01_5 = {49 50 43 20 28 25 64 29 2c 20 6c 6f 67 20 28 25 64 29 20 6f 72 20 68 6f 6f 6b 20 28 25 64 29 } //01 00  IPC (%d), log (%d) or hook (%d)
		$a_01_6 = {4f 43 54 4f 50 55 53 5f 53 48 41 52 45 44 20 28 70 69 64 3a 20 25 64 29 } //01 00  OCTOPUS_SHARED (pid: %d)
		$a_01_7 = {25 73 3d 25 73 20 43 6f 6d 6d 65 6e 74 3a 20 25 73 20 46 6c 61 67 73 3a 20 25 68 } //01 00  %s=%s Comment: %s Flags: %h
		$a_01_8 = {62 72 6f 77 73 65 72 20 72 75 6c 65 20 25 64 20 68 61 73 20 62 65 65 6e 20 61 73 73 6f 63 69 61 74 65 64 } //01 00  browser rule %d has been associated
		$a_01_9 = {2a 2a 45 4e 44 20 4f 46 20 50 49 50 45 } //01 00  **END OF PIPE
		$a_01_10 = {6f 66 20 25 64 20 66 69 6c 65 73 20 6c 69 73 74 65 64 20 69 6e 20 25 73 2e } //00 00  of %d files listed in %s.
	condition:
		any of ($a_*)
 
}