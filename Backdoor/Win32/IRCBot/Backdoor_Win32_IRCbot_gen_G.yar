
rule Backdoor_Win32_IRCbot_gen_G{
	meta:
		description = "Backdoor:Win32/IRCbot.gen!G,SIGNATURE_TYPE_PEHSTR,17 00 17 00 0a 00 00 "
		
	strings :
		$a_01_0 = {74 00 72 00 75 00 65 00 6d 00 61 00 6e 00 32 00 } //1 trueman2
		$a_01_1 = {44 00 6f 00 77 00 6e 00 6c 00 6f 00 61 00 64 00 69 00 6e 00 67 00 20 00 62 00 6f 00 74 00 20 00 75 00 70 00 64 00 61 00 74 00 65 00 20 00 66 00 72 00 6f 00 6d 00 } //1 Downloading bot update from
		$a_01_2 = {42 00 6f 00 74 00 20 00 49 00 52 00 43 00 20 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 } //1 Bot IRC Commands
		$a_01_3 = {4d 00 69 00 67 00 75 00 65 00 6c 00 20 00 53 00 6f 00 75 00 72 00 63 00 65 00 20 00 43 00 6f 00 64 00 65 00 5c 00 54 00 52 00 55 00 45 00 4d 00 41 00 4e 00 } //20 Miguel Source Code\TRUEMAN
		$a_01_4 = {47 00 45 00 54 00 20 00 2f 00 6c 00 69 00 6e 00 75 00 78 00 2f 00 75 00 62 00 75 00 6e 00 74 00 75 00 2d 00 72 00 65 00 6c 00 65 00 61 00 73 00 65 00 73 00 } //1 GET /linux/ubuntu-releases
		$a_01_5 = {53 70 65 65 64 74 65 73 74 73 6f 63 6b } //1 Speedtestsock
		$a_01_6 = {50 72 69 6d 61 72 79 20 42 6f 74 20 3a } //1 Primary Bot :
		$a_01_7 = {53 70 65 65 64 20 74 65 73 74 20 3a } //1 Speed test :
		$a_01_8 = {5c 00 53 00 68 00 61 00 72 00 65 00 64 00 41 00 63 00 63 00 65 00 73 00 73 00 5c 00 50 00 61 00 72 00 61 00 6d 00 65 00 74 00 65 00 72 00 73 00 5c 00 46 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 50 00 6f 00 6c 00 69 00 63 00 79 00 5c 00 53 00 74 00 61 00 6e 00 64 00 61 00 72 00 64 00 50 00 72 00 6f 00 66 00 69 00 6c 00 65 00 } //1 \SharedAccess\Parameters\FirewallPolicy\StandardProfile
		$a_01_9 = {5c 00 4c 00 49 00 4e 00 4b 00 2e 00 45 00 58 00 45 00 2e 00 4d 00 } //1 \LINK.EXE.M
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*20+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1+(#a_01_8  & 1)*1+(#a_01_9  & 1)*1) >=23
 
}