
rule Trojan_BAT_AgentTesla_COX_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.COX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {44 72 61 77 00 66 67 68 } //01 00  牄睡昀桧
		$a_01_1 = {50 31 00 4b 31 00 63 62 61 } //01 00 
		$a_01_2 = {47 75 72 75 00 58 65 48 00 68 65 78 } //01 00  畇畲堀䡥栀硥
		$a_01_3 = {75 67 7a 31 00 75 67 7a 33 00 70 72 6f 6a 6e 61 6d 65 } //01 00  杵ㅺ甀穧3牰橯慮敭
		$a_01_4 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_01_5 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_01_6 = {53 75 62 73 74 72 69 6e 67 } //01 00  Substring
		$a_01_7 = {54 6f 49 6e 74 33 32 } //01 00  ToInt32
		$a_01_8 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}