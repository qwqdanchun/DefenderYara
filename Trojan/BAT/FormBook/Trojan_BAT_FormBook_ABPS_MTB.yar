
rule Trojan_BAT_FormBook_ABPS_MTB{
	meta:
		description = "Trojan:BAT/FormBook.ABPS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 03 00 "
		
	strings :
		$a_01_0 = {54 00 72 00 61 00 76 00 69 00 61 00 6e 00 47 00 61 00 6d 00 65 00 5f 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 } //03 00 
		$a_01_1 = {54 00 72 00 61 00 76 00 69 00 61 00 6e 00 47 00 61 00 6d 00 65 00 5f 00 57 00 69 00 6e 00 64 00 6f 00 77 00 73 00 46 00 6f 00 72 00 6d 00 73 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00 
	condition:
		any of ($a_*)
 
}