
rule Trojan_BAT_AgentTesla_JEB_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JEB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0c 00 0c 00 03 00 00 0a 00 "
		
	strings :
		$a_02_0 = {28 27 00 00 0a 13 06 11 06 13 07 11 07 2c 0d 00 72 90 01 03 70 28 90 01 03 0a 00 00 20 90 01 03 00 28 90 01 03 0a 00 72 90 01 03 70 28 90 01 03 0a 26 15 28 90 01 03 0a 00 00 2a 90 00 } //01 00 
		$a_81_1 = {24 34 63 32 61 35 62 30 62 2d 38 37 66 63 2d 34 63 63 64 2d 62 66 34 38 2d 38 36 39 30 34 39 35 34 32 32 31 66 } //01 00 
		$a_00_2 = {00 73 65 78 78 00 } //00 00 
	condition:
		any of ($a_*)
 
}