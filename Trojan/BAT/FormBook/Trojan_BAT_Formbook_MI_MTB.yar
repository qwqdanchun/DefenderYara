
rule Trojan_BAT_Formbook_MI_MTB{
	meta:
		description = "Trojan:BAT/Formbook.MI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,39 00 39 00 09 00 00 1e 00 "
		
	strings :
		$a_03_0 = {03 09 03 6f 90 01 03 0a 5d 17 d6 28 90 01 03 0a da 13 04 07 11 04 28 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 0b 09 17 d6 0d 09 08 31 90 00 } //05 00 
		$a_01_1 = {46 00 72 00 6f 00 6d 00 42 00 61 00 73 00 65 00 36 00 34 00 53 00 74 00 72 00 69 00 6e 00 67 00 } //05 00  FromBase64String
		$a_01_2 = {49 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f 5f } //05 00  I____________________
		$a_01_3 = {44 65 62 75 67 67 61 62 6c 65 41 74 74 72 69 62 75 74 65 } //05 00  DebuggableAttribute
		$a_01_4 = {43 72 65 61 74 65 5f 5f 49 6e 73 74 61 6e 63 65 5f 5f } //05 00  Create__Instance__
		$a_01_5 = {54 00 6f 00 43 00 68 00 61 00 72 00 41 00 72 00 72 00 61 00 79 00 } //02 00  ToCharArray
		$a_01_6 = {66 72 6d 53 74 6f 72 79 5f 4b 65 79 44 6f 77 6e } //02 00  frmStory_KeyDown
		$a_01_7 = {4d 00 55 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 48 00 41 00 } //02 00  MUHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA
		$a_01_8 = {49 6e 74 65 72 6e 65 74 43 68 65 63 6b } //00 00  InternetCheck
	condition:
		any of ($a_*)
 
}