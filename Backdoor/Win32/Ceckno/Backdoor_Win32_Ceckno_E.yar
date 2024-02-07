
rule Backdoor_Win32_Ceckno_E{
	meta:
		description = "Backdoor:Win32/Ceckno.E,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_00_0 = {53 59 53 54 45 4d 5c 43 75 72 72 65 6e 74 43 6f 6e 74 72 6f 6c 53 65 74 5c 53 65 72 76 69 63 65 73 5c } //01 00  SYSTEM\CurrentControlSet\Services\
		$a_00_1 = {20 2f 63 20 64 65 6c 20 25 73 20 3e 20 6e 75 6c } //01 00   /c del %s > nul
		$a_01_2 = {43 72 65 61 74 65 53 65 72 76 69 63 65 41 } //01 00  CreateServiceA
		$a_00_3 = {3c 6d 69 72 31 38 32 3e 25 73 } //01 00  <mir182>%s
		$a_00_4 = {53 54 4f 50 41 54 54 41 43 4b } //01 00  STOPATTACK
		$a_00_5 = {40 41 74 74 61 63 6b 4d 6f 64 65 } //01 00  @AttackMode
		$a_01_6 = {53 74 61 72 74 53 65 72 76 69 63 65 43 74 72 6c 44 69 73 70 61 74 63 68 65 72 41 } //01 00  StartServiceCtrlDispatcherA
		$a_00_7 = {40 6a 69 68 75 6f 64 65 6e 67 6c 75 3e } //01 00  @jihuodenglu>
		$a_01_8 = {57 69 6e 45 78 65 63 } //00 00  WinExec
	condition:
		any of ($a_*)
 
}