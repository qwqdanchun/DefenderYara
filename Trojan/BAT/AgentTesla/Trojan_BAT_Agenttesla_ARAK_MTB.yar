
rule Trojan_BAT_Agenttesla_ARAK_MTB{
	meta:
		description = "Trojan:BAT/Agenttesla.ARAK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {00 20 00 01 00 00 13 07 11 06 17 58 13 08 11 06 20 00 9a 01 00 5d 13 09 11 08 20 00 9a 01 00 5d 13 0a 07 11 09 91 13 0b 1f 16 8d ?? ?? ?? 01 25 d0 ?? 00 00 04 28 ?? ?? ?? 0a 11 06 1f 16 5d 91 13 0c 07 11 0a 91 11 07 58 13 0d 11 0b 11 0c 61 13 0e 11 0e 11 0d 59 13 0f 07 11 09 11 0f 11 07 5d d2 9c 00 11 06 17 58 13 06 11 06 20 00 9a 01 00 fe 04 13 10 11 10 2d 87 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}