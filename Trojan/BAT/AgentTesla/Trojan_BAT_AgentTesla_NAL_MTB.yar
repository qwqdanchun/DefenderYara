
rule Trojan_BAT_AgentTesla_NAL_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_01_0 = {11 05 17 d6 13 05 00 11 05 09 8e 69 fe 04 13 0a 11 0a 2d d4 } //01 00 
		$a_01_1 = {50 69 63 69 6d 69 7a 65 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_NAL_MTB_2{
	meta:
		description = "Trojan:BAT/AgentTesla.NAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0b 00 0b 00 03 00 00 05 00 "
		
	strings :
		$a_03_0 = {2b 0a 2b 0b 2b 0c 2b 11 2b 16 de 24 06 2b f3 02 2b f2 73 90 01 03 0a 2b ed 6f 90 01 03 0a 2b e8 0b 2b e7 90 00 } //05 00 
		$a_03_1 = {73 27 00 00 0a 0b 2b 2e 16 2b 2e 2b 33 2b 38 16 2d 09 2b 09 2b 0a 6f 90 01 03 0a de 10 08 2b f4 07 2b f3 90 00 } //01 00 
		$a_01_2 = {41 64 6f 62 65 20 55 70 64 61 74 65 72 20 55 74 69 6c 69 74 79 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AgentTesla_NAL_MTB_3{
	meta:
		description = "Trojan:BAT/AgentTesla.NAL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 11 04 6f 90 01 03 0a 0c 06 08 28 90 01 03 0a 07 59 28 90 01 03 0a 8c 90 01 03 01 28 90 01 03 0a 0a 11 04 17 58 13 04 11 04 09 6f 90 00 } //01 00 
		$a_01_1 = {53 74 72 52 65 76 65 72 73 65 } //01 00 
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_3 = {6a 00 65 00 4c 00 51 00 71 00 44 00 77 00 44 00 37 00 6a 00 78 00 69 00 37 00 44 00 44 00 44 00 44 00 44 00 6a 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 00 44 } //01 00 
		$a_01_4 = {54 00 56 00 71 00 51 00 41 00 41 00 4d 00 41 00 41 00 41 00 41 00 45 00 41 00 41 00 41 00 41 00 2f 00 2f 00 38 00 41 00 41 00 4c 00 67 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 51 00 41 00 41 00 41 00 41 } //01 00 
		$a_01_5 = {41 00 41 00 41 00 67 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 4d 00 41 00 59 00 49 00 55 00 41 00 41 00 42 00 41 00 41 00 41 00 42 00 41 00 41 00 41 00 41 00 41 00 41 00 45 00 41 00 41 00 41 00 45 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 41 00 38 } //00 00 
	condition:
		any of ($a_*)
 
}