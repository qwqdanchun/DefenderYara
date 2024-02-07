
rule Trojan_BAT_AgentTesla_ENC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ENC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {00 5f 5a 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 00 } //01 00 
		$a_01_1 = {00 49 44 65 66 65 72 72 65 64 00 } //01 00 
		$a_01_2 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //01 00  䘀潲䉭獡㙥匴牴湩g
		$a_01_3 = {00 54 77 6f 44 69 67 69 74 59 65 61 72 4d 61 78 00 } //01 00 
		$a_01_4 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //01 00  䜀瑥硅潰瑲摥祔数s
		$a_01_5 = {00 47 65 74 54 79 70 65 } //01 00  䜀瑥祔数
		$a_01_6 = {00 43 6c 65 61 6e 75 70 00 } //01 00 
		$a_01_7 = {20 00 4c 00 6f 00 61 00 64 00 } //00 00   Load
	condition:
		any of ($a_*)
 
}