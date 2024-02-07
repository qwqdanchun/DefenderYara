
rule Backdoor_Win32_IRCbot_CV{
	meta:
		description = "Backdoor:Win32/IRCbot.CV,SIGNATURE_TYPE_PEHSTR_EXT,07 00 06 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {6d 6f 64 53 6f 63 6b 65 74 4d 61 73 74 65 72 } //01 00  modSocketMaster
		$a_01_1 = {6d 6f 64 55 52 4c 53 6f 75 72 63 65 } //01 00  modURLSource
		$a_01_2 = {6d 73 6e 70 77 64 00 } //01 00 
		$a_01_3 = {6b 61 79 6e 61 6b 00 } //01 00 
		$a_01_4 = {54 78 74 4c 45 45 43 48 00 } //01 00 
		$a_01_5 = {54 78 74 50 61 73 73 00 } //01 00  硔側獡s
		$a_01_6 = {52 00 4f 00 4b 00 55 00 00 00 } //01 00 
		$a_01_7 = {52 00 4b 00 49 00 4c 00 00 00 } //01 00 
		$a_01_8 = {50 00 52 00 49 00 56 00 4d 00 53 00 47 00 20 00 52 00 6f 00 6f 00 74 00 20 00 3a 00 } //00 00  PRIVMSG Root :
	condition:
		any of ($a_*)
 
}