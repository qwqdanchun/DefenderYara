
rule Trojan_BAT_Barys_AMMH_MTB{
	meta:
		description = "Trojan:BAT/Barys.AMMH!MTB,SIGNATURE_TYPE_PEHSTR_EXT,01 00 01 00 01 00 00 01 00 "
		
	strings :
		$a_03_0 = {1f 16 5d 91 13 90 01 01 02 07 11 90 01 01 91 11 90 01 01 61 07 11 90 01 01 17 58 07 8e 69 5d 91 20 ff 00 00 00 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}