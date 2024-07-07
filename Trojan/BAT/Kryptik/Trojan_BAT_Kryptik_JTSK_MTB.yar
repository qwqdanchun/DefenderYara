
rule Trojan_BAT_Kryptik_JTSK_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.JTSK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {72 43 00 00 70 28 90 01 03 06 0a 72 85 00 00 70 28 90 01 03 06 0b 06 72 c7 00 00 70 72 29 01 00 70 28 90 01 03 06 0a 07 72 c7 00 00 70 72 29 01 00 70 28 90 01 03 06 0b 06 28 90 01 03 0a 0c 08 72 6b 01 00 70 6f 90 01 03 0a 0d 09 72 8d 01 00 70 6f 90 01 03 0a 13 04 11 04 14 1a 8d 01 00 00 01 13 07 11 07 16 28 03 00 00 0a 6f 90 01 03 0a a2 11 07 17 72 99 01 00 70 a2 11 07 18 07 a2 11 07 19 16 8c 0a 00 00 01 a2 11 07 6f 90 01 03 0a 26 17 13 06 de 13 13 05 11 05 6f 90 01 03 0a 28 90 01 03 0a 16 13 06 de 00 11 06 2a 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}