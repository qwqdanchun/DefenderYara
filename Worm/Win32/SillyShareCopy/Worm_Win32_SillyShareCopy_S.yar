
rule Worm_Win32_SillyShareCopy_S{
	meta:
		description = "Worm:Win32/SillyShareCopy.S,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_01_0 = {61 00 75 00 74 00 6f 00 72 00 75 00 6e 00 2e 00 69 00 6e 00 66 00 } //01 00  autorun.inf
		$a_01_1 = {50 00 52 00 49 00 56 00 4d 00 53 00 47 00 } //01 00  PRIVMSG
		$a_01_2 = {55 00 4d 00 4f 00 44 00 45 00 20 00 2d 00 4d 00 6d 00 } //02 00  UMODE -Mm
		$a_01_3 = {21 00 3c 00 73 00 65 00 74 00 7c 00 62 00 6f 00 74 00 7c 00 63 00 68 00 61 00 6e 00 6e 00 65 00 6c 00 7c 00 63 00 6d 00 64 00 } //02 00  !<set|bot|channel|cmd
		$a_01_4 = {7c 00 69 00 64 00 65 00 6e 00 74 00 64 00 7c 00 70 00 61 00 73 00 73 00 7c 00 66 00 75 00 6c 00 6c 00 6e 00 61 00 6d 00 65 00 7c 00 6c 00 6f 00 67 00 69 00 6e 00 } //01 00  |identd|pass|fullname|login
		$a_01_5 = {5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 5c 00 } //00 00  \Windows\CurrentVersion\Run\
	condition:
		any of ($a_*)
 
}