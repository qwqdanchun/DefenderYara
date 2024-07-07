
rule Trojan_BAT_AgentTesla_EFQ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EFQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,19 00 19 00 07 00 00 "
		
	strings :
		$a_01_0 = {24 43 34 41 37 32 36 30 37 2d 46 45 46 36 2d 34 39 45 37 2d 42 32 36 37 2d 30 45 44 45 38 36 39 39 43 43 45 46 } //10 $C4A72607-FEF6-49E7-B267-0EDE8699CCEF
		$a_01_1 = {00 43 68 61 72 41 72 72 61 79 00 4c 65 76 65 6c 00 70 6f 00 43 6f 6e 74 65 78 74 41 64 64 00 } //10
		$a_01_2 = {00 43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 00 } //1 䌀敲瑡䥥獮慴据e
		$a_01_3 = {00 53 75 62 73 74 72 69 6e 67 00 } //1
		$a_01_4 = {00 47 65 74 50 69 78 65 6c 00 } //1 䜀瑥楐數l
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //1 DebuggableAttribute
		$a_01_6 = {44 65 62 75 67 67 69 6e 67 4d 6f 64 65 73 } //1 DebuggingModes
	condition:
		((#a_01_0  & 1)*10+(#a_01_1  & 1)*10+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1+(#a_01_4  & 1)*1+(#a_01_5  & 1)*1+(#a_01_6  & 1)*1) >=25
 
}