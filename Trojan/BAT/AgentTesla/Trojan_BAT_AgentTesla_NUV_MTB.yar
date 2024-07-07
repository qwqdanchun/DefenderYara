
rule Trojan_BAT_AgentTesla_NUV_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NUV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 "
		
	strings :
		$a_01_0 = {57 55 a2 cb 09 1f 00 00 00 fa 25 33 00 16 00 00 02 00 00 00 ac 00 00 00 16 00 00 00 5a 00 00 00 92 00 00 00 7b 00 00 00 43 01 00 00 9a 00 00 00 01 00 00 00 31 00 00 00 08 00 00 00 1d 00 00 00 30 } //1
		$a_01_1 = {42 00 61 00 73 00 69 00 63 00 20 00 4d 00 6f 00 6c 00 64 00 65 00 72 00 } //1 Basic Molder
		$a_01_2 = {73 00 70 00 61 00 77 00 6e 00 6e 00 65 00 77 00 6f 00 62 00 6a 00 65 00 63 00 74 00 } //1 spawnnewobject
		$a_01_3 = {42 00 61 00 73 00 69 00 63 00 5f 00 43 00 6f 00 6d 00 6d 00 61 00 6e 00 64 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //1 Basic_Commands.Resources
	condition:
		((#a_01_0  & 1)*1+(#a_01_1  & 1)*1+(#a_01_2  & 1)*1+(#a_01_3  & 1)*1) >=4
 
}