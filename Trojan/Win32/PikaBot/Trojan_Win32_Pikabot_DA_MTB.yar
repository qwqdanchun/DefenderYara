
rule Trojan_Win32_Pikabot_DA_MTB{
	meta:
		description = "Trojan:Win32/Pikabot.DA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {03 45 fc 88 08 eb 90 01 01 eb 90 01 01 99 f7 7d 90 01 01 eb 90 01 01 51 bb 90 01 04 eb 90 01 01 33 c8 8b 45 90 01 01 eb 90 01 01 0f b6 08 8b 45 90 01 01 eb 90 01 01 55 8b ec eb 90 01 01 8b 45 90 01 01 0f b6 04 10 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}