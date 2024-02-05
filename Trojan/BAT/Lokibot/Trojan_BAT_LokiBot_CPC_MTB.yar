
rule Trojan_BAT_LokiBot_CPC_MTB{
	meta:
		description = "Trojan:BAT/LokiBot.CPC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {61 25 0b 19 5e 45 90 01 10 2b 30 06 17 62 02 7b 90 01 04 06 8f 90 01 04 03 28 90 01 04 60 0a 06 20 90 01 04 34 08 20 90 01 04 25 2b 06 20 90 01 04 25 26 90 00 } //01 00 
		$a_81_1 = {41 4d 58 57 72 61 70 70 65 72 } //00 00 
	condition:
		any of ($a_*)
 
}