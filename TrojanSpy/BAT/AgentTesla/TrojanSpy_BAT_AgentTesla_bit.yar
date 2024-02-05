
rule TrojanSpy_BAT_AgentTesla_bit{
	meta:
		description = "TrojanSpy:BAT/AgentTesla!bit,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {03 20 20 a7 00 00 59 02 7b 90 01 01 00 00 04 61 d1 90 00 } //01 00 
		$a_03_1 = {0a 06 02 16 6f 90 01 01 00 00 0a 20 20 a7 00 00 59 7d 90 01 01 00 00 04 02 17 6f 90 01 01 00 00 0a 06 fe 06 90 01 01 00 00 06 73 90 01 01 00 00 0a 28 90 01 01 00 00 2b 90 00 } //01 00 
		$a_03_2 = {00 00 06 0a 06 7e 90 01 01 00 00 04 16 6f 90 01 01 00 00 0a 20 20 a7 00 00 59 7d 90 01 01 00 00 04 7e 90 01 01 00 00 04 17 6f 90 01 01 00 00 0a 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}