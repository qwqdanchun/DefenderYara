
rule Trojan_BAT_AgentTesla_ABSS_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ABSS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 "
		
	strings :
		$a_01_0 = {57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 41 00 70 00 70 00 39 00 35 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 } //2
		$a_01_1 = {50 00 78 00 76 00 62 00 6a 00 6d 00 6a 00 6f 00 73 00 67 00 66 00 64 00 77 00 67 00 69 00 6d 00 69 00 69 00 71 00 69 } //2
	condition:
		((#a_01_0  & 1)*2+(#a_01_1  & 1)*2) >=4
 
}