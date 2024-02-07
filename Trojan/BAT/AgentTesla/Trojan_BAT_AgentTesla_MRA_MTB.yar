
rule Trojan_BAT_AgentTesla_MRA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.MRA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 06 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 09 20 00 b4 00 00 5d 07 09 20 00 b4 00 00 5d 91 08 09 1f 16 5d 6f 90 01 03 0a 61 07 09 17 58 20 00 b4 00 00 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 5d d2 9c 00 09 15 58 0d 09 16 fe 04 16 fe 01 13 04 11 04 2d b7 90 00 } //01 00 
		$a_81_1 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_2 = {47 65 74 54 79 70 65 73 } //01 00  GetTypes
		$a_81_3 = {49 6e 76 6f 6b 65 } //01 00  Invoke
		$a_01_4 = {65 00 74 00 6c 00 67 00 65 00 6e 00 } //01 00  etlgen
		$a_01_5 = {50 00 37 00 43 00 34 00 35 00 35 00 52 00 46 00 38 00 45 00 42 00 43 00 59 00 48 00 41 00 38 00 55 00 52 00 4a 00 35 00 38 00 35 00 } //00 00  P7C455RF8EBCYHA8URJ585
	condition:
		any of ($a_*)
 
}