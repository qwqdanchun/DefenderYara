
rule Trojan_BAT_Formbook_MD_MTB{
	meta:
		description = "Trojan:BAT/Formbook.MD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 06 00 00 01 00 "
		
	strings :
		$a_03_0 = {13 06 07 11 06 28 90 01 03 0a 0b 00 09 17 d6 0d 09 08 6f 90 01 03 0a fe 04 13 07 11 07 2d b8 07 0a 2b 00 06 2a 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_01_2 = {52 65 70 6c 61 63 65 } //01 00  Replace
		$a_01_3 = {5a 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f } //01 00  Z___________________
		$a_01_4 = {43 72 65 61 74 65 5f 5f 49 6e 73 74 61 6e 63 65 5f 5f } //01 00  Create__Instance__
		$a_01_5 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //00 00  DebuggableAttribute
	condition:
		any of ($a_*)
 
}