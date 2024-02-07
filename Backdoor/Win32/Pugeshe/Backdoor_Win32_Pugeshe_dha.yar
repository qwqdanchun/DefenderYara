
rule Backdoor_Win32_Pugeshe_dha{
	meta:
		description = "Backdoor:Win32/Pugeshe!dha,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {55 73 61 67 65 3a 20 20 45 58 45 20 50 6f 72 74 20 50 61 73 73 77 6f 72 64 } //01 00  Usage:  EXE Port Password
		$a_01_1 = {43 6f 6e 6e 65 63 74 20 45 72 72 6f 72 20 25 64 2e } //01 00  Connect Error %d.
		$a_01_2 = {47 65 74 20 4c 61 73 74 20 45 72 72 6f 72 20 72 65 70 6f 72 74 73 20 25 64 } //01 00  Get Last Error reports %d
		$a_01_3 = {50 61 73 73 77 6f 72 64 20 69 73 20 77 72 6f 6e 67 21 } //01 00  Password is wrong!
		$a_01_4 = {43 6f 6e 6e 65 63 74 65 64 20 25 73 3a 20 25 73 } //01 00  Connected %s: %s
		$a_01_5 = {6c 69 6e 73 65 6e 69 6e 67 20 25 64 2e 2e 2e } //00 00  linsening %d...
		$a_00_6 = {87 10 00 } //00 31 
	condition:
		any of ($a_*)
 
}