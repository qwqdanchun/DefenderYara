
rule Trojan_BAT_Remcos_ABXY_MTB{
	meta:
		description = "Trojan:BAT/Remcos.ABXY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 "
		
	strings :
		$a_02_0 = {11 05 11 06 6f 90 01 03 0a 13 07 08 11 07 28 90 01 03 0a 09 da 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 0c 00 11 06 17 d6 13 06 11 06 11 05 6f 90 01 03 0a fe 04 13 08 11 08 2d c3 90 00 } //1
		$a_02_1 = {0b 16 0c 03 6f 90 01 03 0a 17 da 0d 2b 90 01 01 07 08 03 09 6f 90 01 03 0a 9d 07 09 03 08 6f 90 01 03 0a 9d 08 17 d6 0c 09 17 da 0d 00 08 09 fe 90 01 01 13 90 01 01 11 90 01 01 2d 90 00 } //1
	condition:
		((#a_02_0  & 1)*1+(#a_02_1  & 1)*1) >=2
 
}