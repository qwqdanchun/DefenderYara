
rule Trojan_BAT_AgentTesla_OC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.OC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_81_0 = {56 e4 6e 64 74 69 61 5f 4c 69 76 65 5f 53 65 72 76 65 72 2e 46 6f 72 6d 4c 6f 61 64 65 72 } //01 00 
		$a_81_1 = {6e 64 74 69 61 5f 4c 69 76 65 5f 53 65 72 76 65 72 2e 4d 79 } //01 00  ndtia_Live_Server.My
		$a_81_2 = {43 61 72 64 49 6e 66 6f 46 6f 72 6d } //01 00  CardInfoForm
		$a_81_3 = {54 69 6d 65 72 31 } //01 00  Timer1
		$a_81_4 = {53 74 72 52 65 76 65 72 73 65 } //01 00  StrReverse
		$a_81_5 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_6 = {54 65 78 74 42 6f 78 31 } //01 00  TextBox1
		$a_81_7 = {46 6f 72 4c 6f 6f 70 49 6e 69 74 4f 62 6a } //01 00  ForLoopInitObj
		$a_81_8 = {52 65 61 64 42 79 74 65 } //00 00  ReadByte
	condition:
		any of ($a_*)
 
}