
rule Trojan_BAT_CryptInject_MBEV_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.MBEV!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {2c 28 07 08 09 28 90 01 01 00 00 0a 16 6f 90 01 01 00 00 0a 13 08 12 08 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 09 11 07 12 03 28 90 01 01 00 00 0a 2d d8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}