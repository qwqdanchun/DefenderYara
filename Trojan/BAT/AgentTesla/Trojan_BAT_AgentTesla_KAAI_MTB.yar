
rule Trojan_BAT_AgentTesla_KAAI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.KAAI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {2b 40 02 7b 90 01 01 00 00 04 6f 90 01 01 00 00 0a 06 08 9a 6f 90 01 01 00 00 0a 25 07 08 8f 90 01 01 00 00 01 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 17 8d 90 01 01 00 00 01 25 16 07 08 99 a1 6f 90 01 01 00 00 0a 26 08 17 58 0c 08 06 8e 69 32 ba 90 00 } //0a 00 
		$a_01_1 = {74 00 59 00 55 00 79 00 6b 00 54 00 31 00 61 00 38 00 45 00 50 00 76 00 44 00 65 00 7a 00 52 00 59 00 36 00 6e 00 62 00 33 00 43 00 72 00 79 00 71 00 62 00 68 00 43 00 4e 00 49 00 4d 00 6c 00 37 00 30 00 53 00 70 00 73 00 6b 00 64 00 57 00 36 00 58 00 6f 00 3d 00 } //00 00 
	condition:
		any of ($a_*)
 
}