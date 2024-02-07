
rule Worm_Win32_IRCbot_F{
	meta:
		description = "Worm:Win32/IRCbot.F,SIGNATURE_TYPE_PEHSTR,0b 00 0b 00 03 00 00 04 00 "
		
	strings :
		$a_01_0 = {20 00 3a 00 45 00 2d 00 4d 00 75 00 6c 00 65 00 20 00 53 00 70 00 72 00 65 00 61 00 64 00 20 00 43 00 6f 00 6d 00 70 00 6c 00 65 00 74 00 65 00 } //03 00   :E-Mule Spread Complete
		$a_01_1 = {31 00 32 00 46 00 65 00 74 00 63 00 68 00 69 00 6e 00 67 00 20 00 4b 00 65 00 79 00 73 00 2e 00 2e 00 2e 00 } //04 00  12Fetching Keys...
		$a_01_2 = {20 00 3a 00 5b 00 44 00 44 00 4f 00 53 00 5d 00 20 00 41 00 74 00 74 00 61 00 63 00 6b 00 20 00 53 00 74 00 61 00 72 00 74 00 65 00 64 00 20 00 } //00 00   :[DDOS] Attack Started 
	condition:
		any of ($a_*)
 
}