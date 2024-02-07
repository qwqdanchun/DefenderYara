
rule Trojan_BAT_AgentTesla_ELF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ELF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 01 00 "
		
	strings :
		$a_01_0 = {36 61 36 31 31 39 38 33 2d 36 35 31 63 2d 34 66 34 61 2d 38 65 38 38 2d 33 39 63 61 32 34 34 64 61 30 63 64 } //01 00  6a611983-651c-4f4a-8e88-39ca244da0cd
		$a_01_1 = {00 54 6f 43 68 61 72 41 72 72 61 79 00 } //01 00 
		$a_01_2 = {00 47 65 74 54 79 70 65 } //01 00  䜀瑥祔数
		$a_01_3 = {00 46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 00 } //01 00  䘀潲䉭獡㙥匴牴湩g
		$a_01_4 = {00 52 65 70 6c 61 63 65 00 } //01 00 
		$a_01_5 = {00 43 68 72 57 00 54 6f 43 68 61 72 00 } //01 00 
		$a_01_6 = {00 47 65 74 4d 65 74 68 6f 64 } //01 00  䜀瑥敍桴摯
		$a_01_7 = {00 44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 00 } //00 00  䐀扥杵楧杮潍敤s
	condition:
		any of ($a_*)
 
}