
rule Trojan_BAT_AgentTesla_LMC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LMC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,09 00 09 00 09 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 00 } //01 00  夀奙奙奙奙奙奙奙奙奙奙奙奙奙奙奙Y
		$a_01_1 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_2 = {00 43 6f 6d 70 61 72 65 53 74 72 69 6e 67 00 } //01 00 
		$a_01_3 = {00 47 65 74 54 79 70 65 73 00 } //01 00  䜀瑥祔数s
		$a_01_4 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_81_5 = {47 2d 65 2d 74 2d 4d 2d 65 2d 74 2d 68 2d 6f 2d 64 } //01 00  G-e-t-M-e-t-h-o-d
		$a_81_6 = {2d 2d 49 2d 2d 6e 2d 2d 76 2d 2d 6f 2d 2d 6b 2d 2d 65 2d 2d } //01 00  --I--n--v--o--k--e--
		$a_01_7 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //01 00  GetObjectValue
		$a_01_8 = {4c 61 74 65 47 65 74 } //00 00  LateGet
	condition:
		any of ($a_*)
 
}