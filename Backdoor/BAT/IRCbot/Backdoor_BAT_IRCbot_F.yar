
rule Backdoor_BAT_IRCbot_F{
	meta:
		description = "Backdoor:BAT/IRCbot.F,SIGNATURE_TYPE_PEHSTR,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {21 00 68 00 74 00 74 00 70 00 66 00 6c 00 6f 00 6f 00 64 00 65 00 72 00 } //01 00  !httpflooder
		$a_01_1 = {69 00 72 00 63 00 2e 00 63 00 68 00 6f 00 6f 00 70 00 61 00 2e 00 6e 00 65 00 74 00 } //01 00  irc.choopa.net
		$a_01_2 = {5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 22 00 20 00 73 00 74 00 61 00 72 00 74 00 } //01 00  \svchost.exe" start
		$a_01_3 = {78 00 78 00 36 00 36 00 36 00 4b 00 4c 00 4d 00 75 00 74 00 65 00 78 00 } //01 00  xx666KLMutex
		$a_01_4 = {24 00 52 00 45 00 43 00 59 00 43 00 4c 00 45 00 2e 00 42 00 49 00 4e 00 5c 00 73 00 76 00 63 00 68 00 6f 00 73 00 74 00 2e 00 65 00 78 00 65 00 } //00 00  $RECYCLE.BIN\svchost.exe
	condition:
		any of ($a_*)
 
}