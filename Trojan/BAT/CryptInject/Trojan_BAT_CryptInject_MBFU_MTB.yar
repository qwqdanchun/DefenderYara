
rule Trojan_BAT_CryptInject_MBFU_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.MBFU!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 06 08 06 6f 90 01 01 00 00 0a 1f 90 01 01 61 d2 9c 06 17 58 0a 06 08 6f 90 01 01 00 00 0a 32 e5 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}