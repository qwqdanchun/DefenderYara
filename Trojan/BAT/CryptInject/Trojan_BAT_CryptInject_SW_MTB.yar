
rule Trojan_BAT_CryptInject_SW_MTB{
	meta:
		description = "Trojan:BAT/CryptInject.SW!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_02_0 = {06 02 03 28 90 01 01 00 00 06 02 5f 61 d2 2a 90 0a 30 00 03 28 90 01 01 00 00 90 00 } //01 00 
		$a_00_1 = {42 7e 02 00 00 04 02 7e 02 00 00 04 8e 69 5d 91 2a } //01 00 
		$a_00_2 = {03 02 7e 02 00 00 04 8e 69 5d 58 2a } //01 00 
		$a_02_3 = {02 04 8f 01 00 00 01 25 47 03 04 28 90 01 01 00 00 06 61 d2 52 90 00 } //01 00 
		$a_02_4 = {02 00 00 8d 01 00 00 01 25 d0 90 01 01 00 00 04 28 01 00 00 0a 80 90 01 01 00 00 04 90 0a 30 00 20 90 01 01 02 00 00 90 00 } //01 00 
		$a_02_5 = {01 00 00 8d 05 00 00 01 25 d0 90 01 01 00 00 04 28 01 00 00 0a 80 90 01 01 00 00 04 90 0a 30 00 20 90 01 01 01 00 00 8d 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}