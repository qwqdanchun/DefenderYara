
rule Trojan_BAT_FormBook_MVM_MTB{
	meta:
		description = "Trojan:BAT/FormBook.MVM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {72 01 00 00 70 02 09 18 6f 90 01 03 0a 28 90 01 03 0a 28 90 01 03 0a 03 11 04 6f 90 01 03 0a 28 90 01 03 0a 6a 61 69 28 90 01 03 0a 28 90 01 03 0a 13 07 06 11 07 6f 90 01 03 0a 26 11 04 03 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}