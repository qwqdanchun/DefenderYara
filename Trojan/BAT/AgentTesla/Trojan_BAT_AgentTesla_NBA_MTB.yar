
rule Trojan_BAT_AgentTesla_NBA_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NBA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {24 38 34 37 39 33 32 61 33 2d 33 35 33 30 2d 34 34 35 61 2d 61 36 36 33 2d 66 62 30 34 63 36 32 30 61 37 64 39 } //1 $847932a3-3530-445a-a663-fb04c620a7d9
		$a_01_1 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //1
		$a_01_2 = {00 54 6f 57 69 6e 33 32 00 } //1
		$a_01_3 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //1
		$a_01_4 = {00 47 65 74 45 78 70 6f 72 74 65 64 54 79 70 65 73 00 } //1 䜀瑥硅潰瑲摥祔数s
		$a_01_5 = {00 47 65 74 50 69 78 65 6c 00 } //1 䜀瑥楐數l
		$a_01_6 = {00 47 65 74 4d 65 74 68 6f 64 00 } //1
		$a_01_7 = {00 49 6e 76 6f 6b 65 00 } //1 䤀癮歯e
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}