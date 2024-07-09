
rule Trojan_BAT_AgentTesla_DAF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.DAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 "
		
	strings :
		$a_03_0 = {11 05 11 0a 75 ?? 00 00 1b 11 0c 11 07 58 11 09 59 93 61 11 0b 74 ?? 00 00 1b 11 09 11 0c 58 1f 11 58 11 08 5d 93 61 d1 6f ?? 00 00 0a 26 18 13 0e 38 [0-04] 11 09 17 58 13 09 1c 13 0e 38 } //4
		$a_01_1 = {41 70 70 65 6e 64 } //1 Append
	condition:
		((#a_03_0  & 1)*4+(#a_01_1  & 1)*1) >=5
 
}