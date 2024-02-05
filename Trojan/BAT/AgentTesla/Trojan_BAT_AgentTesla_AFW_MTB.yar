
rule Trojan_BAT_AgentTesla_AFW_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.AFW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,10 00 10 00 04 00 00 0a 00 "
		
	strings :
		$a_03_0 = {25 16 09 a2 25 17 16 8c 90 01 03 01 a2 25 18 1a 8c 90 01 03 01 a2 13 08 11 08 0b 19 8d 90 01 03 01 13 04 11 04 16 17 9c 11 04 0c 11 12 90 00 } //02 00 
		$a_80_1 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //CreateInstance  02 00 
		$a_80_2 = {47 65 74 54 79 70 65 73 } //GetTypes  02 00 
		$a_80_3 = {52 65 76 65 72 73 65 } //Reverse  00 00 
	condition:
		any of ($a_*)
 
}