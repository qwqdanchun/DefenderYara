
rule Trojan_BAT_Formbook_NUK_MTB{
	meta:
		description = "Trojan:BAT/Formbook.NUK!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0a 00 0a 00 0a 00 00 01 00 "
		
	strings :
		$a_81_0 = {53 68 6f 72 74 50 66 61 66 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 64 66 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //01 00  ShortPfafddddddddddddddddfdddrocess Completed
		$a_81_1 = {53 68 6f 72 74 50 64 64 64 64 64 64 66 64 64 64 64 64 64 64 64 64 64 66 64 64 64 72 6f 63 65 73 73 20 43 6f 6d 70 6c 65 74 65 64 } //01 00  ShortPddddddfddddddddddfdddrocess Completed
		$a_81_2 = {53 68 6f 72 74 50 64 64 64 64 64 64 64 64 64 64 66 6d 70 6c 65 74 65 64 } //01 00  ShortPddddddddddfmpleted
		$a_81_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00  FromBase64String
		$a_81_4 = {64 61 73 64 20 43 6f 6d 70 6c 65 74 65 64 } //01 00  dasd Completed
		$a_81_5 = {66 61 66 20 43 6f 6d 70 6c 65 74 65 64 } //01 00  faf Completed
		$a_81_6 = {64 61 73 64 73 66 64 64 6c 65 74 65 64 } //01 00  dasdsfddleted
		$a_81_7 = {64 61 66 70 6c 65 74 65 64 } //01 00  dafpleted
		$a_81_8 = {64 66 70 6c 65 74 65 64 } //01 00  dfpleted
		$a_81_9 = {64 61 73 64 73 61 64 20 43 6f 6d 70 6c 65 74 65 64 } //00 00  dasdsad Completed
	condition:
		any of ($a_*)
 
}