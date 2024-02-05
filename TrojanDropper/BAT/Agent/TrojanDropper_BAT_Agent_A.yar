
rule TrojanDropper_BAT_Agent_A{
	meta:
		description = "TrojanDropper:BAT/Agent.A,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 02 00 "
		
	strings :
		$a_00_0 = {44 72 6f 70 45 58 45 00 45 58 45 6e 61 6d 65 } //02 00 
		$a_00_1 = {61 62 63 64 65 00 61 62 63 64 65 2e 65 78 65 } //01 00 
		$a_02_2 = {28 23 00 00 0a 14 72 01 00 00 70 28 12 00 00 06 90 01 02 16 28 11 00 00 06 26 72 09 00 00 70 72 25 00 00 70 28 24 00 00 0a 28 11 00 00 0a 90 00 } //01 00 
		$a_00_3 = {06 16 1f 4d 9c 06 } //01 00 
		$a_00_4 = {06 17 1f 5a 9c 06 } //00 00 
	condition:
		any of ($a_*)
 
}