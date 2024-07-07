
rule Trojan_BAT_AgentTesla_PCH_MTB{
	meta:
		description = "Trojan:BAT/AgentTesla.PCH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {17 8d 19 00 00 01 25 16 02 a2 25 0b 14 14 17 8d 59 00 00 01 25 16 17 9c 25 0c 28 90 01 03 0a 0d 08 16 91 2d 02 2b 1e 07 16 9a 28 90 01 03 0a d0 0a 00 00 1b 28 90 01 03 0a 28 90 01 03 0a 74 0a 00 00 1b 10 00 09 0a 2b 00 06 2a 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}