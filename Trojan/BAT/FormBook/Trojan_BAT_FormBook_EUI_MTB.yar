
rule Trojan_BAT_FormBook_EUI_MTB{
	meta:
		description = "Trojan:BAT/FormBook.EUI!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {0b 07 1f 54 90 01 05 00 07 1f 72 90 01 05 00 07 1f 75 90 01 05 00 07 1f 6d 90 01 05 00 07 1f 70 90 01 05 00 07 1f 32 90 01 05 00 07 1f 33 90 01 05 00 07 1f 34 90 01 05 00 07 1f 35 90 01 05 00 07 1f 36 90 01 05 00 07 1f 37 90 01 05 00 07 1f 61 90 01 05 00 07 1f 62 90 01 05 00 07 1f 63 90 01 05 00 07 1f 40 90 01 05 00 07 1f 2e 90 01 05 00 07 1f 63 90 01 05 00 07 1f 6f 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}