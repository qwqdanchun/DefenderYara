
rule Trojan_BAT_AgentTesla_NLI_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NLI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 15 00 00 0a 0b 07 28 16 00 00 0a 03 6f 17 00 00 0a 6f 18 00 00 0a 0a 7e 37 00 00 04 06 6f 19 00 00 0a 00 7e 37 00 00 04 18 6f 1a 00 00 0a 00 7e 37 00 00 04 6f 1b 00 00 0a 80 38 00 00 04 02 28 15 00 00 06 0c 08 0d 7e 37 00 00 04 6f 1c 00 00 0a 00 09 13 04 2b 00 11 04 2a } //01 00 
		$a_01_1 = {24 33 62 31 65 63 37 36 33 2d 65 36 62 61 2d 34 61 36 66 2d 62 33 63 31 2d 65 63 30 35 34 63 38 62 36 32 37 31 } //01 00  $3b1ec763-e6ba-4a6f-b3c1-ec054c8b6271
		$a_01_2 = {68 61 75 68 61 75 77 65 } //01 00  hauhauwe
		$a_81_3 = {25 49 6e 4a 25 65 63 74 6f 72 25 } //00 00  %InJ%ector%
	condition:
		any of ($a_*)
 
}