
rule Trojan_BAT_Avemaria_KAB_MTB{
	meta:
		description = "Trojan:BAT/Avemaria.KAB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 01 00 00 05 00 "
		
	strings :
		$a_03_0 = {00 02 06 02 06 91 20 90 01 02 00 00 59 d2 9c 00 06 17 58 0a 06 02 8e 69 fe 04 0b 07 2d e3 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}