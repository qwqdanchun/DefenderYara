
rule Trojan_BAT_VectorStealer_AAGZ_MTB{
	meta:
		description = "Trojan:BAT/VectorStealer.AAGZ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 03 00 00 03 00 "
		
	strings :
		$a_03_0 = {04 06 18 28 90 01 01 00 00 06 7e 90 01 01 00 00 04 06 19 28 90 01 01 00 00 06 7e 90 01 01 00 00 04 06 28 90 01 01 00 00 06 0d 7e 90 01 01 00 00 04 09 05 16 05 8e 69 28 90 01 01 00 00 06 2a 90 00 } //01 00 
		$a_01_1 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //01 00 
		$a_01_2 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}