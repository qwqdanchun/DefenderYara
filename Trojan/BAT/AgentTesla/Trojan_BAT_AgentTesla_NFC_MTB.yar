
rule Trojan_BAT_AgentTesla_NFC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NFC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 06 00 00 0a 00 "
		
	strings :
		$a_01_0 = {20 05 0d 00 00 95 5a 11 04 0b 7e 28 00 00 04 20 79 09 00 00 95 58 61 81 06 00 00 01 2b 69 7e 1d 00 00 04 1d 95 7e 28 00 00 04 20 46 05 00 00 95 33 55 06 2d 29 } //0a 00 
		$a_01_1 = {19 9a 20 ad 04 00 00 95 5f 7e 04 00 00 04 19 9a 20 1d 11 00 00 95 61 58 81 09 00 00 01 7e 25 00 00 04 1f 37 95 7e 04 00 00 04 19 9a 20 10 0d 00 00 } //0a 00 
		$a_01_2 = {20 b6 09 00 00 95 2e 03 16 2b 01 17 17 59 7e 1d 00 00 04 18 9a 20 86 0a 00 00 06 0a 95 5f 7e 1d 00 00 04 18 9a 20 09 04 00 00 95 61 58 } //01 00 
		$a_01_3 = {01 57 94 02 28 09 02 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 1b 00 00 00 04 } //01 00 
		$a_01_4 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_01_5 = {67 65 74 5f 42 61 73 65 44 69 72 65 63 74 6f 72 79 } //00 00  get_BaseDirectory
	condition:
		any of ($a_*)
 
}