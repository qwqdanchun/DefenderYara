
rule Trojan_BAT_RedLine_ABB_MTB{
	meta:
		description = "Trojan:BAT/RedLine.ABB!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 01 00 00 02 00 "
		
	strings :
		$a_03_0 = {03 8e 69 5d 7e 90 01 03 04 03 08 03 8e 69 5d 91 07 08 07 8e 69 5d 91 61 28 90 01 03 06 03 08 17 58 03 8e 69 5d 91 59 20 ff 00 00 00 58 17 58 20 00 01 00 00 5d d2 9c 08 17 58 0c 08 6a 03 8e 69 17 59 6a 06 17 58 6e 5a 31 90 00 } //00 00 
	condition:
		any of ($a_*)
 
}