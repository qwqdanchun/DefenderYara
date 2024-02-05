
rule Trojan_BAT_FormBook_EUO_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EUO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {02 03 17 58 90 01 05 5d 91 0a 16 0b 02 03 90 01 05 0c 06 04 58 0d 08 09 59 04 5d 0b 16 13 04 2b 00 90 00 } //01 00 
		$a_03_1 = {5d 91 0a 06 90 01 05 03 04 5d 90 01 05 61 0b 2b 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_FormBook_EUO_MTB_2{
	meta:
		description = "Trojan:BAT/FormBook.EUO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {35 00 37 00 4e 00 34 00 38 00 59 00 4a 00 5a 00 48 00 32 00 56 00 48 00 41 00 38 00 47 00 34 00 47 00 43 00 46 00 32 00 38 00 47 00 } //01 00 
		$a_01_1 = {6f 00 61 00 2b 00 2b 00 64 00 } //01 00 
		$a_01_2 = {52 00 61 00 72 00 61 00 33 00 } //01 00 
		$a_01_3 = {43 72 65 61 74 65 49 6e 73 74 61 6e 63 65 } //01 00 
		$a_01_4 = {47 65 74 54 79 70 65 } //00 00 
	condition:
		any of ($a_*)
 
}