
rule Trojan_BAT_Formbook_AMMB_MTB{
	meta:
		description = "Trojan:BAT/Formbook.AMMB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {5d d4 91 08 11 90 01 01 69 1f 90 01 01 5d 6f 90 01 01 00 00 0a 61 07 11 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}