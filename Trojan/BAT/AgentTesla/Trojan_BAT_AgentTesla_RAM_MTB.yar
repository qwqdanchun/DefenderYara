
rule Trojan_BAT_AgentTesla_RAM_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.RAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 05 00 00 0a 00 "
		
	strings :
		$a_03_0 = {07 11 04 06 11 04 18 d8 18 6f 90 01 03 0a 1f 10 28 90 01 03 0a 9c 11 04 17 d6 13 04 90 00 } //0a 00 
		$a_01_1 = {73 00 65 00 70 00 79 00 54 00 74 00 65 00 47 00 } //01 00  sepyTteG
		$a_01_2 = {4c 61 74 65 47 65 74 } //01 00  LateGet
		$a_01_3 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_4 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //00 00  CreateInstance
	condition:
		any of ($a_*)
 
}