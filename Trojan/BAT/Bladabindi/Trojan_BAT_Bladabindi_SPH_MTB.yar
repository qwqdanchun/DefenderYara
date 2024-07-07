
rule Trojan_BAT_Bladabindi_SPH_MTB{
	meta:
		description = "Trojan:BAT/Bladabindi.SPH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 "
		
	strings :
		$a_03_0 = {0b 73 40 00 00 0a 0c 73 41 00 00 0a 0d 08 09 28 90 01 03 0a 02 28 90 01 03 06 6f 90 01 03 0a 6f 90 01 03 0a 6f 90 01 03 0a 08 18 6f 90 01 03 0a 08 6f 90 01 03 0a 07 13 04 11 04 16 11 04 8e 69 90 00 } //1
	condition:
		((#a_03_0  & 1)*1) >=1
 
}