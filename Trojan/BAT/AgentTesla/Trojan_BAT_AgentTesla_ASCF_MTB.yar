
rule Trojan_BAT_AgentTesla_ASCF_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ASCF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {0c 16 0d 2b 5b 09 08 6f ?? 00 00 0a 5d 13 06 09 08 6f ?? 00 00 0a 5b 13 07 08 20 ?? ?? ?? ?? 28 ?? 01 00 06 18 18 8d ?? 00 00 01 25 16 11 06 8c ?? 00 00 01 a2 25 17 11 07 8c ?? 00 00 01 a2 28 ?? 00 00 0a a5 ?? 00 00 01 13 08 12 08 28 ?? 00 00 0a 13 09 07 11 09 6f ?? 00 00 0a 09 17 58 0d 09 08 6f ?? 00 00 0a 08 6f ?? 00 00 0a 5a fe 04 13 0a 11 0a 2d 8f } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}