
rule Trojan_BAT_AgentTesla_ENA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ENA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {26 00 06 72 90 01 03 70 6f 90 01 03 0a 0c 08 72 90 01 03 70 20 00 01 00 00 14 14 14 6f 90 01 03 0a 26 00 de 00 90 00 } //01 00 
		$a_01_1 = {20 00 0c 00 00 28 14 00 00 0a 00 00 de 05 } //01 00 
		$a_01_2 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //01 00  䌀敲瑡䥥獮慴据e
		$a_01_3 = {00 47 65 74 54 79 70 65 00 } //01 00 
		$a_01_4 = {00 57 65 62 52 65 71 75 65 73 74 00 } //00 00  圀扥敒畱獥t
	condition:
		any of ($a_*)
 
}