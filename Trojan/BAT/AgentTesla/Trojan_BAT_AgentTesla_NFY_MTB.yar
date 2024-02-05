
rule Trojan_BAT_AgentTesla_NFY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NFY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 91 09 00 00 95 61 7e 08 00 00 04 1a 9a 20 3f 0c 00 00 95 2e 03 17 2b 01 16 58 7e 08 00 00 04 17 9a 7e 08 00 00 04 1a 9a 20 6c 0a 00 00 95 e0 95 7e 08 00 00 04 1a 9a 20 8b 05 00 00 } //01 00 
		$a_01_1 = {20 68 08 00 00 95 61 7e 11 00 00 04 18 9a 20 d0 00 00 00 95 2e 03 17 2b 01 16 58 7e 21 00 00 04 7e 11 00 00 04 18 9a 20 50 02 00 00 95 e0 95 7e 11 00 00 04 18 9a 20 89 08 00 00 95 59 7e 11 00 00 04 18 11 04 13 04 9a 20 1c 05 00 00 } //01 00 
		$a_01_2 = {20 ce 09 00 00 95 e0 95 7e 16 00 00 04 20 68 01 00 00 95 61 7e 16 00 00 04 20 5f 05 00 00 95 2e 03 17 2b 01 16 58 7e 09 00 00 04 19 9a 17 95 7e 16 00 00 04 20 a2 09 00 00 95 59 7e 16 00 00 04 20 4e } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_NFY_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NFY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 08 00 00 0a 00 "
		
	strings :
		$a_01_0 = {1f 15 95 7e 07 00 00 04 19 9a 20 9e 03 00 00 95 33 2e 7e 07 00 00 04 18 9a 1f 15 8f 07 00 00 01 25 71 07 00 00 01 7e 07 00 00 04 19 07 0a 9a 20 6f 04 00 00 95 61 81 07 00 00 01 38 bf 00 00 00 7e 07 00 00 04 18 9a 1f 15 95 7e 07 00 00 04 19 9a 20 ce 02 00 00 95 33 2f } //0a 00 
		$a_01_1 = {0a 7e 1e 00 00 04 16 9a 20 4b 0e 00 00 95 5a 7e 1e 00 00 04 16 9a 20 a1 12 00 00 95 58 61 81 06 00 00 01 11 04 0b 7e 1e 00 00 04 1b 9a 1f 3f 95 7e 1e 00 00 04 16 9a 20 e9 0a 00 00 95 33 4c 7e 08 00 00 04 16 8f 0a 00 00 01 25 71 0a } //0a 00 
		$a_01_2 = {20 49 09 00 00 95 2e 03 17 2b 01 16 58 6a 7e 05 00 00 04 1a 9a 20 68 0f 00 00 95 6e 31 03 16 2b 01 17 17 59 7e 05 00 00 04 1a 9a 20 b1 0b 00 00 95 5f 7e 05 00 00 04 1a 9a 20 d1 07 00 00 95 61 61 81 08 00 00 01 38 56 11 00 00 7e 05 00 00 04 } //01 00 
		$a_01_3 = {57 94 02 28 09 02 00 00 00 fa 25 33 00 16 00 00 01 } //01 00 
		$a_01_4 = {47 65 74 46 6f 6c 64 65 72 50 61 74 68 } //01 00 
		$a_01_5 = {67 65 74 5f 43 75 72 72 65 6e 74 44 6f 6d 61 69 6e } //01 00 
		$a_01_6 = {41 70 70 44 6f 6d 61 69 6e } //01 00 
		$a_01_7 = {67 65 74 5f 42 61 73 65 44 69 72 65 63 74 6f 72 79 } //00 00 
	condition:
		any of ($a_*)
 
}