
rule Trojan_BAT_AgentTesla_ABBP_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABBP!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 06 04 03 8e 69 14 14 17 28 90 01 03 06 d6 13 07 11 07 04 5f 13 08 03 11 06 03 8e 69 14 14 17 28 90 01 03 06 91 13 09 08 74 90 01 03 1b 11 06 16 16 02 17 8d 90 01 03 01 25 16 11 06 8c 90 01 03 01 a2 14 28 90 01 03 0a 28 90 01 03 0a 16 16 11 09 8c 90 01 03 01 11 08 8c 90 01 03 01 18 28 90 01 03 06 8c 90 01 03 01 18 28 90 01 03 06 b4 9c 11 06 17 d6 13 06 90 00 } //01 00 
		$a_01_1 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 41 00 70 00 70 00 31 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00  WindowsApp1.Resources
		$a_01_2 = {6e 00 6a 00 68 00 75 00 68 00 37 00 37 00 36 00 37 00 36 00 } //00 00  njhuh77676
	condition:
		any of ($a_*)
 
}