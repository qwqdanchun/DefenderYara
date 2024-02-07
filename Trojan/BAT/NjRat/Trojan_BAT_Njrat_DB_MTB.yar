
rule Trojan_BAT_Njrat_DB_MTB{
	meta:
		description = "Trojan:BAT/Njrat.DB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0d 00 0d 00 04 00 00 0a 00 "
		
	strings :
		$a_02_0 = {13 07 11 06 11 07 28 90 01 03 0a 0a 06 28 90 01 03 0a 13 09 11 09 28 90 01 03 0a 13 08 28 90 01 03 0a 11 08 6f 90 01 03 0a 6f 90 01 03 0a 14 14 6f 90 01 03 0a 26 72 90 01 03 70 13 05 72 90 01 03 70 0b 72 90 01 03 70 0c 28 90 01 03 0a 11 05 17 17 8d 90 01 03 01 13 0a 11 0a 16 11 08 a2 11 0a 90 00 } //01 00 
		$a_81_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_2 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00  CreateInstance
		$a_81_3 = {41 63 74 69 76 61 74 6f 72 } //00 00  Activator
	condition:
		any of ($a_*)
 
}