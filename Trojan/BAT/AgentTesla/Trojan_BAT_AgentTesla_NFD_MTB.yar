
rule Trojan_BAT_AgentTesla_NFD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 05 00 00 0a 00 "
		
	strings :
		$a_01_0 = {1f 28 95 5f 7e 32 00 00 04 16 9a 20 b3 09 00 00 95 61 61 80 45 00 00 04 7e 26 00 00 04 39 6a 08 00 00 7e 26 00 00 04 8e 69 0a } //0a 00 
		$a_01_1 = {20 5e 05 00 00 95 5a 7e 13 00 00 04 18 9a 20 08 10 00 00 95 58 61 80 33 00 00 04 38 a6 00 00 00 7e 33 00 00 04 7e 13 00 00 04 11 04 0c 18 9a 20 1a 0c 00 00 95 33 1a 7e 33 00 00 04 } //01 00 
		$a_01_2 = {01 57 94 02 28 09 02 00 00 00 fa 25 33 00 16 00 00 01 00 00 00 1b 00 00 00 04 } //01 00 
		$a_01_3 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00  get_CurrentDomain
		$a_01_4 = {67 65 74 5f 42 61 73 65 44 69 72 65 63 74 6f 72 79 } //00 00  get_BaseDirectory
	condition:
		any of ($a_*)
 
}