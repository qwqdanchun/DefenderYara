
rule Trojan_BAT_AgentTesla_OJ_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.OJ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_02_0 = {17 da 13 06 16 13 ?? 2b ?? 07 11 ?? 11 ?? 6f ?? ?? ?? ?? 13 ?? 11 ?? 28 ?? ?? ?? ?? 13 ?? 08 06 11 ?? b4 9c 11 ?? 17 d6 13 ?? 11 ?? 11 ?? 31 ?? 06 17 d6 0a 11 ?? 17 d6 13 ?? 11 ?? 09 31 90 09 06 00 07 6f } //1
	condition:
		((#a_02_0  & 1)*1) >=1
 
}