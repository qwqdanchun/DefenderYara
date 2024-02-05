
rule Trojan_BAT_Stelega_DC_MTB{
	meta:
		description = "Trojan:BAT/Stelega.DC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {09 16 fe 01 13 04 11 04 2c 15 03 6f 7b 00 00 0a 09 6f 84 00 00 0a 6f 85 00 00 0a 0b 00 2b 1f 00 07 72 90 01 03 70 03 6f 7b 00 00 0a 09 6f 84 00 00 0a 6f 85 00 00 0a 28 55 00 00 0a 0b 00 09 17 d6 0d 09 08 31 ba 90 00 } //01 00 
		$a_03_1 = {0a 0c 08 28 46 00 00 0a 72 90 01 03 70 16 28 5d 00 00 0a 16 fe 03 0d 09 39 fa 00 00 00 08 28 46 00 00 0a 72 90 01 03 70 15 16 28 5e 00 00 0a 0c 08 74 6a 00 00 01 17 28 60 00 00 0a 18 fe 01 13 04 11 04 39 bf 00 00 00 08 17 8d 19 00 00 01 25 16 16 8c 6c 00 00 01 a2 14 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}