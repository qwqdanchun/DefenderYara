
rule Trojan_BAT_AgentTesla_ABJT_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABJT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_01_0 = {50 00 6f 00 74 00 65 00 6e 00 63 00 69 00 6f 00 6d 00 65 00 74 00 72 00 6f 00 4d 00 37 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 1a 00 00 00 41 00 73 00 68 00 6c 00 65 00 79 00 5f 00 4e 00 69 00 63 00 6f 00 6c 00 65 00 18 00 00 00 44 00 69 00 61 00 6e 00 61 00 5f 00 4e 00 69 00 63 00 6f 00 6c 00 65 00 0e 00 00 00 4c 00 6b 00 78 00 68 00 62 00 4a 00 } //4
		$a_01_1 = {50 00 6f 00 74 00 65 00 6e 00 63 00 69 00 6f 00 6d 00 65 00 74 00 72 00 6f 00 4d 00 37 00 } //1 PotenciometroM7
	condition:
		((#a_01_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}