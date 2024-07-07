
rule Trojan_BAT_Mardom_AAWT_MTB{
	meta:
		description = "Trojan:BAT/Mardom.AAWT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {04 08 04 8e 69 5d 1c 58 1c 59 1d 58 1d 59 04 08 04 8e 69 5d 91 07 08 07 8e 69 5d 1c 58 1c 59 1d 58 1d 59 91 61 28 90 01 01 00 00 0a 04 08 20 87 10 00 00 58 20 86 10 00 00 59 04 8e 69 5d 91 59 20 fa 00 00 00 58 1c 58 20 00 01 00 00 5d d2 9c 08 17 58 0c 08 6a 04 8e 69 17 59 6a 06 17 58 6e 5a 31 9f 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}