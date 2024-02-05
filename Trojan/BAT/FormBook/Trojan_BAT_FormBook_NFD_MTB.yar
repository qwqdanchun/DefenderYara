
rule Trojan_BAT_FormBook_NFD_MTB{
	meta:
		description = "Trojan:BAT/FormBook.NFD!MTB,SIGNATURE_TYPE_PEHSTR_EXT,08 00 08 00 04 00 00 05 00 "
		
	strings :
		$a_03_0 = {02 6f 1c 01 00 06 6f 90 01 03 0a 08 6f 90 01 03 0a 28 90 01 03 0a 17 1d 28 90 01 03 0a 6f 90 01 03 0a 90 00 } //01 00 
		$a_01_1 = {44 65 6c 65 74 65 44 69 72 65 63 74 6f 72 79 4f 70 74 69 6f 6e } //01 00 
		$a_01_2 = {43 00 6f 00 4a 00 32 00 43 00 6f 00 6e 00 74 00 72 00 6f 00 6c 00 6c 00 65 00 72 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //01 00 
		$a_01_3 = {73 00 65 00 74 00 75 00 70 00 5f 00 4d 00 6f 00 64 00 73 00 43 00 6f 00 6a 00 } //00 00 
	condition:
		any of ($a_*)
 
}