
rule Trojan_BAT_Icbot_A_bit{
	meta:
		description = "Trojan:BAT/Icbot.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {21 00 6b 00 69 00 6c 00 6c 00 62 00 6f 00 74 00 } //01 00  !killbot
		$a_01_1 = {21 00 74 00 75 00 72 00 6e 00 20 00 6f 00 6e 00 20 00 6d 00 6f 00 6e 00 69 00 74 00 6f 00 72 00 } //01 00  !turn on monitor
		$a_01_2 = {72 00 65 00 63 00 6f 00 72 00 64 00 20 00 72 00 65 00 63 00 73 00 6f 00 75 00 6e 00 64 00 } //01 00  record recsound
		$a_01_3 = {21 00 68 00 61 00 63 00 6b 00 20 00 64 00 6e 00 73 00 20 00 3c 00 69 00 70 00 3e 00 20 00 3c 00 75 00 72 00 6c 00 3e 00 } //01 00  !hack dns <ip> <url>
		$a_01_4 = {6e 00 65 00 74 00 73 00 68 00 20 00 66 00 69 00 72 00 65 00 77 00 61 00 6c 00 6c 00 20 00 73 00 65 00 74 00 20 00 6f 00 70 00 6d 00 6f 00 64 00 65 00 20 00 64 00 69 00 73 00 61 00 62 00 6c 00 65 00 } //00 00  netsh firewall set opmode disable
		$a_00_5 = {5d 04 00 } //00 5a 
	condition:
		any of ($a_*)
 
}