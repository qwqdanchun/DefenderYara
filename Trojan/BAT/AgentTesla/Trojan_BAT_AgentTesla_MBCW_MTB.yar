
rule Trojan_BAT_AgentTesla_MBCW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MBCW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {07 09 18 6f 90 01 01 00 00 0a 1f 10 28 90 01 01 00 00 0a d2 13 05 08 11 05 6f 90 01 01 00 00 0a 09 18 58 0d 09 07 6f 90 01 01 00 00 0a 32 d9 90 00 } //01 00 
		$a_01_1 = {23 23 33 23 23 23 30 34 23 23 23 46 46 46 46 23 23 42 38 23 23 23 23 23 23 23 34 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 23 } //01 00 
		$a_01_2 = {23 32 38 30 32 23 23 32 42 31 33 30 38 31 32 30 38 32 30 43 35 30 33 23 23 32 30 38 44 30 33 23 23 32 38 33 33 23 23 30 36 32 30 43 38 } //00 00 
	condition:
		any of ($a_*)
 
}