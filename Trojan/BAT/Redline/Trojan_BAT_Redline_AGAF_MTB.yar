
rule Trojan_BAT_Redline_AGAF_MTB{
	meta:
		description = "Trojan:BAT/Redline.AGAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {13 04 09 11 04 8e 69 1f 40 12 05 28 90 01 03 06 26 11 04 16 09 11 04 8e 69 28 90 01 03 0a 00 09 11 04 8e 69 11 05 12 06 28 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}