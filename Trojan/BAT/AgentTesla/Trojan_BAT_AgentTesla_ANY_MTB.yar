
rule Trojan_BAT_AgentTesla_ANY_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.ANY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,14 00 14 00 02 00 00 "
		
	strings :
		$a_03_0 = {25 16 11 04 ?? ?? ?? ?? ?? a2 25 17 11 06 ?? ?? ?? ?? ?? a2 25 13 09 14 14 18 ?? ?? ?? ?? ?? 25 16 17 9c 25 17 17 9c 25 13 0a ?? ?? ?? ?? ?? 13 0b 11 0a 16 91 2d 02 } //10
		$a_03_1 = {16 9a 0b 07 ?? ?? ?? ?? ?? 14 ?? ?? ?? ?? ?? 17 ?? ?? ?? ?? ?? 25 16 03 a2 14 14 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0c 08 ?? ?? ?? ?? ?? 14 ?? ?? ?? ?? ?? 17 ?? ?? ?? ?? ?? 25 16 ?? ?? ?? ?? ?? a2 14 14 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? 0d 19 ?? ?? ?? ?? ?? 25 16 } //10
	condition:
		((#a_03_0  & 1)*10+(#a_03_1  & 1)*10) >=20
 
}