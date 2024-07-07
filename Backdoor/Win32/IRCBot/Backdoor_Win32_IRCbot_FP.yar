
rule Backdoor_Win32_IRCbot_FP{
	meta:
		description = "Backdoor:Win32/IRCbot.FP,SIGNATURE_TYPE_PEHSTR,0a 00 0a 00 08 00 00 "
		
	strings :
		$a_01_0 = {35 00 38 00 35 00 30 00 35 00 30 00 35 00 35 00 38 00 39 00 45 00 35 00 35 00 37 00 35 00 33 00 35 00 31 00 35 00 32 00 33 00 31 00 43 00 30 00 45 00 42 00 30 00 } //3 5850505589E55753515231C0EB0
		$a_01_1 = {62 00 6f 00 74 00 69 00 6e 00 66 00 6f 00 2e 00 77 00 62 00 } //3 botinfo.wb
		$a_01_2 = {73 00 73 00 6c 00 33 00 32 00 2e 00 63 00 65 00 72 00 74 00 } //3 ssl32.cert
		$a_01_3 = {77 00 75 00 6e 00 64 00 65 00 72 00 62 00 6f 00 74 00 } //1 wunderbot
		$a_01_4 = {23 00 72 00 75 00 6e 00 65 00 73 00 63 00 61 00 70 00 65 00 } //1 #runescape
		$a_01_5 = {23 00 70 00 6f 00 77 00 65 00 72 00 62 00 6f 00 74 00 } //1 #powerbot
		$a_01_6 = {23 00 73 00 77 00 69 00 66 00 74 00 6b 00 69 00 74 00 } //1 #swiftkit
		$a_01_7 = {23 00 6d 00 69 00 6e 00 65 00 63 00 72 00 61 00 66 00 74 00 } //1 #minecraft
	condition:
		((#a_01_0  & 1)*3+(#a_01_1  & 1)*3+(#a_01_2  & 1)*3+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=10
 
}