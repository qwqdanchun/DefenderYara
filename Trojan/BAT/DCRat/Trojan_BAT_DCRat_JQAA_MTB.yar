
rule Trojan_BAT_DCRat_JQAA_MTB{
	meta:
		description = "Trojan:BAT/DCRat.JQAA!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 "
		
	strings :
		$a_03_0 = {59 91 07 08 07 8e 69 5d 1f 90 01 01 58 1f 90 01 01 58 1f 90 01 01 59 91 61 03 08 20 90 01 02 00 00 58 20 90 01 02 00 00 59 03 8e 69 5d 90 00 } //5
	condition:
		((#a_03_0  & 1)*5) >=5
 
}