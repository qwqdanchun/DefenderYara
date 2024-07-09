
rule Trojan_BAT_AgentTesla_EPJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.EPJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 02 00 00 "
		
	strings :
		$a_03_0 = {07 09 20 00 5c 00 00 5d 07 09 20 00 5c 00 00 5d 91 08 09 1f 16 5d ?? ?? ?? ?? ?? 61 07 09 17 58 20 00 5c 00 00 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 } //1
		$a_03_1 = {11 01 11 03 20 00 36 00 00 5d 11 01 11 03 20 00 36 00 00 5d 91 11 02 11 03 1f 16 5d ?? ?? ?? ?? ?? 61 11 01 11 03 17 58 20 00 36 00 00 5d 91 59 20 00 01 00 00 58 20 00 01 00 00 } //1
	condition:
		((#a_03_0  & 1)*1+(#a_03_1  & 1)*1) >=1
 
}