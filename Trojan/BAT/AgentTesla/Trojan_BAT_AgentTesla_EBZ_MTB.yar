
rule Trojan_BAT_AgentTesla_EBZ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EBZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 08 00 00 "
		
	strings :
		$a_01_0 = {00 4c 65 76 65 6c 00 70 6f 00 51 31 00 } //1
		$a_01_1 = {00 43 6f 6c 6f 72 54 72 61 6e 73 6c 61 74 6f 72 00 } //1
		$a_01_2 = {00 54 6f 57 69 6e 33 32 00 } //1
		$a_01_3 = {00 47 65 74 54 79 70 65 46 72 6f 6d 48 61 6e 64 6c 65 00 } //1
		$a_01_4 = {00 47 65 74 50 69 78 65 6c 00 } //1 䜀瑥楐數l
		$a_01_5 = {00 47 65 74 54 79 70 65 } //1 䜀瑥祔数
		$a_01_6 = {00 44 69 73 70 6c 61 79 4e 61 6d 65 00 51 32 00 51 33 00 } //1
		$a_01_7 = {00 44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 00 } //1
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1+(#a_01_7  & 1)*1) >=8
 
}