
rule Trojan_BAT_AgentTesla_BAZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.BAZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {07 11 05 07 8e 69 5d 07 11 05 07 8e 69 5d 91 08 11 05 1f 16 5d 91 61 28 90 01 01 00 00 0a 07 11 05 17 58 07 8e 69 5d 91 28 90 01 01 00 00 0a 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 00 11 05 15 58 13 05 11 05 16 fe 04 16 fe 01 13 06 11 06 2d b0 90 00 } //01 00 
		$a_01_1 = {37 00 47 00 46 00 38 00 54 00 50 00 45 00 36 00 39 00 42 00 35 00 35 00 38 00 37 00 34 00 46 00 59 00 5a 00 43 00 37 00 32 00 59 00 } //01 00  7GF8TPE69B55874FYZC72Y
		$a_01_2 = {47 65 74 42 79 74 65 73 } //00 00  GetBytes
	condition:
		any of ($a_*)
 
}