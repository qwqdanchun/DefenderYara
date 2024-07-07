
rule Trojan_BAT_InjectCrypt_SX_MTB{
	meta:
		description = "Trojan:BAT/InjectCrypt.SX!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 "
		
	strings :
		$a_03_0 = {91 61 d2 81 90 01 01 00 00 01 02 7b 90 01 01 00 00 04 08 11 04 90 02 05 6f 90 01 01 00 00 0a 08 11 04 8f 90 01 01 00 00 01 25 71 90 01 01 00 00 01 08 11 04 91 61 d2 81 90 01 01 00 00 01 11 04 90 02 05 58 13 04 11 04 90 01 01 8e 69 32 90 01 01 2a 90 00 } //2
	condition:
		((#a_03_0  & 1)*2) >=2
 
}