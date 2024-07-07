
rule Trojan_BAT_Kryptik_HSZL_MTB{
	meta:
		description = "Trojan:BAT/Kryptik.HSZL!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 01 00 00 "
		
	strings :
		$a_03_0 = {73 1c 00 00 0a 0a 73 1d 00 00 0a 0b 73 1e 00 00 0a 0c 08 06 08 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 08 06 08 6f 90 01 03 0a 1e 5b 6f 90 01 03 0a 6f 90 01 03 0a 07 08 6f 90 01 03 0a 17 73 25 00 00 0a 0d 09 02 16 02 8e 69 6f 90 01 03 0a 09 6f 90 01 03 0a 07 6f 90 01 03 0a 13 04 de 11 26 16 28 29 00 00 0a 16 8d 22 00 00 01 13 04 de 00 11 04 2a 90 00 } //10
	condition:
		((#a_03_0  & 1)*10) >=10
 
}