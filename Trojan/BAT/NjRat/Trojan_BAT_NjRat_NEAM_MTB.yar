
rule Trojan_BAT_NjRat_NEAM_MTB{
	meta:
		description = "Trojan:BAT/NjRat.NEAM!MTB,SIGNATURE_TYPE_PEHSTR_EXT,0f 00 0f 00 02 00 00 0a 00 "
		
	strings :
		$a_03_0 = {04 08 04 6f 90 01 01 00 00 0a 5d 17 d6 28 90 01 01 00 00 0a da 0d 06 09 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 28 90 01 01 00 00 0a 0a 00 08 17 d6 0c 08 11 04 13 05 11 05 31 c7 90 00 } //05 00 
		$a_01_1 = {56 69 67 65 6e 65 72 65 44 65 63 72 79 70 74 } //00 00 
	condition:
		any of ($a_*)
 
}