
rule Trojan_BAT_Xlceint_A_bit{
	meta:
		description = "Trojan:BAT/Xlceint.A!bit,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 78 43 6c 69 65 6e 74 2e 43 6f 72 65 } //01 00 
		$a_01_1 = {78 00 43 00 6c 00 69 00 65 00 6e 00 74 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  xClient.Properties.Resources
		$a_01_2 = {68 00 74 00 74 00 70 00 73 00 3a 00 2f 00 2f 00 66 00 72 00 65 00 65 00 67 00 65 00 6f 00 69 00 70 00 2e 00 6e 00 65 00 74 00 2f 00 78 00 6d 00 6c 00 2f 00 } //01 00  https://freegeoip.net/xml/
		$a_01_3 = {53 00 6f 00 66 00 74 00 77 00 61 00 72 00 65 00 5c 00 4d 00 69 00 63 00 72 00 6f 00 73 00 6f 00 66 00 74 00 5c 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 5c 00 43 00 75 00 72 00 72 00 65 00 6e 00 74 00 56 00 65 00 72 00 73 00 69 00 6f 00 6e 00 5c 00 52 00 75 00 6e 00 } //01 00  Software\Microsoft\Windows\CurrentVersion\Run
		$a_01_4 = {54 72 79 55 61 63 54 72 69 63 6b } //00 00  TryUacTrick
	condition:
		any of ($a_*)
 
}