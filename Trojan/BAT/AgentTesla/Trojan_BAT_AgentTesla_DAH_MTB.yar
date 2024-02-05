
rule Trojan_BAT_AgentTesla_DAH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DAH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 06 00 00 02 00 "
		
	strings :
		$a_03_0 = {16 fe 01 13 07 11 07 2c 14 00 06 72 90 01 01 09 00 70 28 90 01 01 00 00 0a 08 28 90 01 01 00 00 0a 00 00 06 72 90 01 01 09 00 70 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 26 20 88 13 00 00 28 90 01 01 00 00 0a 00 d0 90 01 01 00 00 01 28 90 00 } //01 00 
		$a_01_1 = {43 00 3a 00 5c 00 55 00 73 00 65 00 72 00 73 00 5c 00 50 00 75 00 62 00 6c 00 69 00 63 00 5c 00 44 00 79 00 6e 00 61 00 6d 00 69 00 63 00 55 00 73 00 65 00 72 00 46 00 6f 00 6c 00 64 00 65 00 72 00 } //01 00 
		$a_01_2 = {45 00 78 00 63 00 6c 00 75 00 73 00 69 00 6f 00 6e 00 2e 00 62 00 61 00 74 00 } //01 00 
		$a_01_3 = {42 00 49 00 4e 00 5c 00 44 00 41 00 54 00 41 00 2e 00 42 00 49 00 4e 00 } //01 00 
		$a_01_4 = {57 72 69 74 65 41 6c 6c 42 79 74 65 73 } //01 00 
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00 
	condition:
		any of ($a_*)
 
}