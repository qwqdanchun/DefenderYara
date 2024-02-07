
rule Trojan_BAT_AgentTesla_LRC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.LRC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,07 00 07 00 07 00 00 01 00 "
		
	strings :
		$a_01_0 = {24 61 65 37 32 62 36 62 30 2d 65 61 65 36 2d 34 63 30 36 2d 61 32 31 32 2d 65 37 39 65 65 63 63 64 61 38 63 64 } //01 00  $ae72b6b0-eae6-4c06-a212-e79eeccda8cd
		$a_01_1 = {00 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 59 00 } //01 00  夀奙奙奙奙奙奙奙奙奙奙奙奙奙奙奙Y
		$a_01_2 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_3 = {43 6f 6d 70 61 72 65 53 74 72 69 6e 67 } //01 00  CompareString
		$a_01_4 = {00 47 65 74 54 79 70 65 00 } //01 00 
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 } //01 00  FromBase64
		$a_01_6 = {47 65 74 4f 62 6a 65 63 74 56 61 6c 75 65 } //00 00  GetObjectValue
	condition:
		any of ($a_*)
 
}