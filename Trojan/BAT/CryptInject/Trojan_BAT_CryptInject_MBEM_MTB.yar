
rule Trojan_BAT_CryptInject_MBEM_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.MBEM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {20 00 10 00 00 8d 90 01 01 00 00 01 13 02 90 01 05 00 00 73 90 01 01 00 00 0a 13 03 90 01 05 00 00 00 11 01 11 02 16 20 00 10 00 00 90 00 } //01 00 
		$a_01_1 = {57 00 68 00 6f 00 6f 00 6e 00 2e 00 48 00 69 00 6d 00 65 00 6e 00 74 00 61 00 74 00 65 00 72 00 } //00 00 
	condition:
		any of ($a_*)
 
}