
rule Trojan_BAT_LokiBot_CTT_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CTT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 33 00 00 06 72 90 01 03 72 90 01 04 6f 90 01 04 0b 07 6f 90 01 04 17 58 19 5b 0c 08 8d 90 01 04 0d 16 13 07 2b 90 00 } //05 00 
		$a_03_1 = {07 19 11 07 5a 6f 90 01 04 13 08 11 08 1f 39 fe 02 13 0a 11 0a 2c 0d 11 08 1f 41 59 1f 0a 58 d1 13 08 2b 08 11 08 1f 30 59 d1 13 08 07 19 11 07 5a 17 58 6f 90 01 04 13 09 11 09 1f 39 fe 02 13 0b 11 0b 2c 0d 11 09 1f 41 59 1f 0a 58 d1 13 09 2b 08 11 09 1f 30 59 d1 13 09 09 11 07 1f 10 11 08 5a 11 09 58 d2 9c 00 11 07 17 58 13 07 11 07 08 fe 04 13 0c 11 0c 2d 84 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}