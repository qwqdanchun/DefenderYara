
rule Trojan_BAT_FormBook_AIFC_MTB{
	meta:
		description = "Trojan:BAT/FormBook.AIFC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {08 09 11 04 28 90 01 03 06 28 90 01 03 06 00 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 00 07 06 28 90 01 03 06 d2 6f 90 01 03 0a 00 00 11 04 17 58 90 00 } //01 00 
		$a_01_1 = {48 00 79 00 76 00 65 00 73 00 } //01 00  Hyves
		$a_01_2 = {43 00 68 00 65 00 61 00 74 00 4d 00 65 00 6e 00 75 00 } //01 00  CheatMenu
		$a_01_3 = {47 65 74 50 69 78 65 6c } //00 00  GetPixel
	condition:
		any of ($a_*)
 
}