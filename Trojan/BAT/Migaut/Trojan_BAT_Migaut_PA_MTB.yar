
rule Trojan_BAT_Migaut_PA_MTB{
	meta:
		description = "Trojan:BAT/Migaut.PA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_02_0 = {0a 2d 13 72 90 01 02 00 70 02 72 90 01 02 00 70 28 90 01 02 00 0a 0a 2b 11 72 90 01 02 00 70 02 72 90 01 02 00 70 28 90 01 02 00 0a 0a 72 90 01 02 00 70 06 73 90 01 02 00 0a 25 17 6f 90 01 01 00 00 0a 25 16 6f 90 01 02 00 0a 25 17 6f 90 01 02 00 0a 28 90 01 02 00 0a 26 de 90 00 } //01 00 
		$a_02_1 = {07 8e 69 8d 90 01 01 00 00 01 0c 7e 02 00 00 04 90 01 02 00 00 0a 0d 16 13 05 2b 11 08 11 05 07 11 05 91 09 61 d2 9c 11 05 17 58 13 05 11 05 07 8e 69 32 e8 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}