
rule Trojan_BAT_DCRat_AADN_MTB{
	meta:
		description = "Trojan:BAT/DCRat.AADN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_03_0 = {11 01 02 7b 90 01 01 00 00 04 6f 90 01 01 00 00 0a 38 90 01 01 00 00 00 11 00 11 01 6f 90 01 01 00 00 0a 16 73 90 01 01 00 00 0a 13 06 90 00 } //02 00 
		$a_03_1 = {11 0a 16 11 08 16 11 08 8e 69 28 90 01 01 00 00 0a 38 00 00 00 00 11 08 13 09 38 90 01 01 00 00 00 11 06 11 0a 16 11 0a 8e 69 28 90 01 01 00 00 06 8d 90 01 01 00 00 01 13 08 38 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}