
rule Trojan_BAT_DarkCloud_AAOE_MTB{
	meta:
		description = "Trojan:BAT/DarkCloud.AAOE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 02 00 00 04 00 "
		
	strings :
		$a_03_0 = {0a 0a 06 18 6f 90 01 01 00 00 0a 00 06 18 6f 90 01 01 00 00 0a 00 06 02 7b 90 01 01 00 00 04 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 00 06 6f 90 01 01 00 00 0a 0b 07 03 16 03 8e 69 6f 90 01 01 00 00 0a 0c 2b 00 08 2a 90 00 } //01 00 
		$a_01_1 = {43 72 65 61 74 65 44 65 63 72 79 70 74 6f 72 } //00 00 
	condition:
		any of ($a_*)
 
}