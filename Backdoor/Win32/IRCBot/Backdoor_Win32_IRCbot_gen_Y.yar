
rule Backdoor_Win32_IRCbot_gen_Y{
	meta:
		description = "Backdoor:Win32/IRCbot.gen!Y,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 41 53 53 00 } //01 00 
		$a_01_1 = {55 53 45 52 00 } //01 00 
		$a_01_2 = {50 52 49 56 4d 53 47 00 } //01 00  剐噉卍G
		$a_00_3 = {73 68 65 6c 6c 65 78 65 63 75 74 65 3d } //01 00  shellexecute=
		$a_00_4 = {5b 61 75 74 6f 72 75 6e 5d } //01 00  [autorun]
		$a_00_5 = {61 75 74 6f 72 75 6e 2e 69 6e 66 } //01 00  autorun.inf
		$a_01_6 = {57 69 6e 64 6f 77 73 5c 43 75 72 72 65 6e 74 56 65 72 73 69 6f 6e 5c 52 75 6e 00 } //01 00 
		$a_01_7 = {64 65 6c 20 22 25 73 22 3e 6e 75 6c } //01 00  del "%s">nul
		$a_01_8 = {70 69 6e 67 20 30 2e 30 2e 30 2e 30 3e 6e 75 6c } //01 00  ping 0.0.0.0>nul
	condition:
		any of ($a_*)
 
}