
rule Trojan_BAT_AgentTesla_EXO_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EXO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {02 03 66 5f 02 66 03 5f 60 } //01 00 
		$a_01_1 = {02 03 5d 0b 07 0a } //01 00  ̂ଢ଼ਇ
		$a_01_2 = {40 00 53 00 79 00 73 00 74 00 65 00 6d 00 40 00 2e 00 40 00 52 00 65 00 66 00 6c 00 65 00 63 00 74 00 69 00 6f 00 6e 00 40 00 2e 00 40 00 41 00 73 00 73 00 65 00 6d 00 62 00 6c 00 79 00 40 00 } //01 00  @System@.@Reflection@.@Assembly@
		$a_01_3 = {40 00 40 00 40 00 4d 00 65 00 74 00 68 00 6f 00 64 00 30 00 40 00 40 00 40 00 } //01 00  @@@Method0@@@
		$a_01_4 = {41 00 73 00 53 00 73 00 4d 00 6d 00 42 00 } //01 00  AsSsMmB
		$a_81_5 = {47 65 74 4d 65 74 68 6f 64 } //01 00  GetMethod
		$a_81_6 = {47 65 74 54 79 70 65 } //01 00  GetType
		$a_81_7 = {49 6e 76 6f 6b 65 } //00 00  Invoke
	condition:
		any of ($a_*)
 
}