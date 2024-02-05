
rule Trojan_BAT_AgentTesla_NJE_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NJE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 03 00 00 01 00 "
		
	strings :
		$a_01_0 = {20 24 04 00 00 95 2e 03 16 2b 01 17 7e 1e 00 00 04 1a 9a 1f 72 95 5a 7e 1e 00 00 04 1a 9a 20 c6 00 00 00 95 07 0c 58 61 81 07 00 00 01 7e 09 00 00 04 18 95 7e 1e 00 00 04 1a 9a 20 bc 00 00 00 } //01 00 
		$a_01_1 = {1f 4f 7e 0a 00 00 04 17 9a 1f 4f 95 7e 0a 00 00 04 17 9a 1f 3d 95 61 7e 35 00 00 04 20 3e 09 00 00 95 5a 9e 7e 0a 00 00 04 17 9a 1f 3b 8f 09 00 00 01 25 71 09 00 00 01 7e 35 00 00 04 20 38 06 } //01 00 
		$a_01_2 = {2e 03 17 2b 01 16 58 7e 2c 00 00 04 7e 1e 00 00 04 16 9a 20 88 04 00 00 95 e0 95 7e 1e 00 00 04 16 9a 20 94 0e 00 00 95 61 7e 1e 00 00 04 16 09 0a 9a 20 8a 0e 00 00 95 } //00 00 
	condition:
		any of ($a_*)
 
}