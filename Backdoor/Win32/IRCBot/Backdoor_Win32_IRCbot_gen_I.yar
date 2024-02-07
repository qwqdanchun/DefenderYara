
rule Backdoor_Win32_IRCbot_gen_I{
	meta:
		description = "Backdoor:Win32/IRCbot.gen!I,SIGNATURE_TYPE_PEHSTR_EXT,06 00 04 00 08 00 00 01 00 "
		
	strings :
		$a_00_0 = {42 6f 74 6b 69 6c 6c 65 72 20 74 68 72 65 61 64 20 73 74 61 72 74 65 64 2e } //01 00  Botkiller thread started.
		$a_00_1 = {42 6f 74 20 6b 69 6c 6c 65 64 20 61 6e 64 20 72 65 6d 6f 76 65 64 3a 20 25 73 20 28 70 69 64 3a 20 25 64 29 21 } //01 00  Bot killed and removed: %s (pid: %d)!
		$a_00_2 = {47 75 61 72 64 22 20 26 6e 65 74 20 73 74 6f 70 20 22 53 65 63 75 72 69 74 79 20 43 65 6e 74 65 72 22 20 26 6e 65 74 20 73 74 6f 70 20 22 53 79 6d 61 6e 74 65 63 } //01 00  Guard" &net stop "Security Center" &net stop "Symantec
		$a_00_3 = {56 4e 43 25 64 2e 25 64 20 25 73 3a 20 25 73 20 2d 20 5b 4e 6f 50 61 73 73 77 6f 72 64 5d } //01 00  VNC%d.%d %s: %s - [NoPassword]
		$a_00_4 = {50 61 74 63 68 69 6e 67 20 74 63 70 69 70 2e 73 79 73 2e } //01 00  Patching tcpip.sys.
		$a_00_5 = {54 43 50 49 50 2e 53 59 53 20 66 69 78 65 64 2c 20 76 65 72 73 69 6f 6e 20 25 64 2e } //01 00  TCPIP.SYS fixed, version %d.
		$a_01_6 = {25 73 20 25 73 20 22 66 6f 25 64 2e 6e 65 74 22 20 22 6c 6f 6c 22 20 3a 25 73 0d 0a 00 } //01 00 
		$a_01_7 = {26 66 74 70 20 2d 6e 20 2d 76 20 2d 73 3a 69 6b 20 26 64 65 6c 20 69 6b 20 26 25 73 20 26 65 78 69 74 00 00 00 25 73 2e 65 78 65 } //00 00 
	condition:
		any of ($a_*)
 
}