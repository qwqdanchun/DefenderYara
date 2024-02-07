
rule Trojan_BAT_AgentTesla_LNH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LNH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 00 } //01 00  夀奙奙奙奙奙奙奙奙奙奙奙奙奙奙奙Y
		$a_01_1 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_2 = {43 6f 6d 70 61 72 65 53 74 72 69 6e 67 } //01 00  CompareString
		$a_01_3 = {00 47 65 74 54 79 70 65 73 00 } //01 00  䜀瑥祔数s
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_5 = {00 53 65 65 65 65 65 00 } //01 00  匀敥敥e
		$a_81_6 = {54 6f 53 74 72 69 6e 67 } //01 00  ToString
		$a_01_7 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_01_8 = {4c 61 74 65 47 65 74 } //00 00  LateGet
	condition:
		any of ($a_*)
 
}