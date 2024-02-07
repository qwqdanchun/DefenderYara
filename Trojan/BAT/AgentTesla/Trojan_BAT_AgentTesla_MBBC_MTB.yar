
rule Trojan_BAT_AgentTesla_MBBC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 04 00 00 0a 00 "
		
	strings :
		$a_01_0 = {20 8f 0f 00 00 95 5f 11 23 20 3b 0a 00 00 95 61 59 13 45 11 45 11 23 20 1a 05 00 00 95 33 25 7e 0e 00 00 04 17 11 43 13 43 16 9e } //0a 00 
		$a_01_1 = {20 bc 09 00 00 95 5f 11 18 13 18 11 41 20 e6 0d 00 00 95 61 59 80 18 00 00 04 38 e3 00 00 00 7e 18 00 00 04 11 41 20 94 01 00 00 95 33 63 7e 24 00 00 04 11 41 20 77 05 00 00 95 e0 11 41 20 7b 0e 00 00 } //01 00 
		$a_01_2 = {73 6d 38 39 6d 71 44 72 61 61 5f 30 33 31 31 } //01 00  sm89mqDraa_0311
		$a_01_3 = {49 70 68 77 73 4a 53 30 41 4c } //00 00  IphwsJS0AL
	condition:
		any of ($a_*)
 
}