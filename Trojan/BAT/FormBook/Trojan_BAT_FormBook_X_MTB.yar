
rule Trojan_BAT_FormBook_X_MTB{
	meta:
		description = "Trojan:BAT/FormBook.X!MTB,SIGNATURE_TYPE_PEHSTR,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_01_0 = {02 07 02 8e 69 6a 5d b7 02 07 02 8e 69 6a 5d b7 91 03 07 03 8e 69 6a 5d b7 91 61 02 07 17 6a d6 02 8e 69 6a 5d b7 91 da 20 00 01 00 00 d6 20 00 01 00 00 5d b4 9c 07 17 6a d6 0b } //00 00 
	condition:
		any of ($a_*)
 
}