
rule Trojan_BAT_Cerbu_AMBC_MTB{
	meta:
		description = "Trojan:BAT/Cerbu.AMBC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {09 11 04 08 11 04 08 8e 69 5d 91 9c 00 11 04 17 58 13 04 } //02 00 
		$a_03_1 = {08 09 06 09 91 07 09 91 28 90 01 01 00 00 06 9c 00 09 17 58 0d 09 06 8e 69 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}