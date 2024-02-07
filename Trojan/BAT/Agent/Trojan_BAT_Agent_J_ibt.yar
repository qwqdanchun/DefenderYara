
rule Trojan_BAT_Agent_J_ibt{
	meta:
		description = "Trojan:BAT/Agent.J!ibt,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_40_0 = {20 ff 00 00 00 5f 07 25 17 58 0b 61 d2 0d 01 } //00 0d 
		$a_25_1 = {63 07 25 17 58 0b 61 d2 13 04 26 01 00 08 40 11 04 1e 62 09 60 d1 9d 01 00 0c 03 03 00 0a 6f 90 01 01 02 00 0a 90 00 01 00 1b 03 00 70 fe 0c 00 00 28 01 00 00 06 28 90 01 02 00 0a 28 90 01 01 } //01 00 
		$a_2a_2 = {00 01 00 14 00 4c } //6f 6f  Ā᐀䰀
		$a_75_3 = {50 72 69 76 69 6c 65 67 65 56 61 6c 75 65 01 00 15 00 41 64 6a 75 73 74 54 6f 6b 65 6e 50 72 69 76 69 6c 65 67 65 73 00 00 5d 04 00 00 c6 f2 03 80 5c 25 00 00 c7 f2 03 80 00 00 01 00 08 00 0f 00 af 01 41 67 65 6e 74 53 74 2e 4a 21 69 62 74 00 00 01 40 05 82 70 00 04 00 78 85 00 00 05 00 05 00 05 00 00 01 00 23 03 1f 1a } //28 10 
	condition:
		any of ($a_*)
 
}