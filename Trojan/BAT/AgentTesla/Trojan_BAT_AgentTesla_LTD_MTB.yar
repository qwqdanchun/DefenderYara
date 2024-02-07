
rule Trojan_BAT_AgentTesla_LTD_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LTD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {50 72 6f 67 72 66 66 66 66 66 66 66 66 66 66 61 6d } //01 00  Progrffffffffffam
		$a_01_1 = {23 67 73 64 67 67 67 67 67 67 67 23 } //01 00  #gsdggggggg#
		$a_01_2 = {61 66 73 66 61 23 6b 6a 64 23 } //01 00  afsfa#kjd#
		$a_01_3 = {23 66 61 73 66 73 61 66 2e 64 6c 6c 23 } //01 00  #fasfsaf.dll#
		$a_01_4 = {23 66 61 73 67 61 67 2e 64 6c 6c 23 } //01 00  #fasgag.dll#
		$a_01_5 = {23 67 64 66 73 66 64 73 2e 64 6c 6c 23 } //01 00  #gdfsfds.dll#
		$a_01_6 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_7 = {47 65 74 4d 65 74 68 6f 64 } //00 00  GetMethod
	condition:
		any of ($a_*)
 
}