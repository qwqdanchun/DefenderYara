
rule Trojan_BAT_AgentTesla_JXG_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.JXG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_03_0 = {11 00 02 03 6f 90 01 03 0a 38 90 01 03 00 38 90 01 03 00 11 00 02 03 6f 90 01 03 0a 13 01 38 90 00 } //01 00 
		$a_03_1 = {0a 13 01 38 90 01 03 00 00 11 00 16 73 90 01 03 0a 73 90 01 03 0a 13 02 38 90 01 03 00 11 01 6f 90 01 03 0a 13 03 38 90 01 03 00 00 11 02 11 01 6f 90 01 03 0a 38 90 01 03 00 90 01 05 11 02 90 00 } //01 00 
		$a_01_2 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_3 = {47 65 74 53 74 72 69 6e 67 } //01 00  GetString
		$a_01_4 = {52 65 70 6c 61 63 65 } //00 00  Replace
	condition:
		any of ($a_*)
 
}