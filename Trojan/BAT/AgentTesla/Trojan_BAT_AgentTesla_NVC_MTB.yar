
rule Trojan_BAT_AgentTesla_NVC_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.NVC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {09 07 03 6f ?? ?? ?? 06 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 6f ?? ?? ?? 06 00 09 03 6f ?? ?? ?? 06 03 6f ?? ?? ?? 06 28 ?? ?? ?? 0a 28 ?? ?? ?? 0a 07 28 ?? ?? ?? 0a 6f ?? ?? ?? 06 00 09 02 28 ?? ?? ?? 06 28 ?? ?? ?? 0a 6f ?? ?? ?? 06 00 09 02 28 ?? ?? ?? 06 6f ?? ?? ?? 06 00 09 13 08 2b 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}