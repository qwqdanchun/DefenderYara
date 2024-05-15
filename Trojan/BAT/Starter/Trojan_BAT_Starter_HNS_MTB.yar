
rule Trojan_BAT_Starter_HNS_MTB{
	meta:
		description = "Trojan:BAT/Starter.HNS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {73 04 00 00 06 0a 06 02 7d 02 00 00 04 06 fe 06 05 00 00 06 73 09 00 00 0a 73 0a 00 00 0a 28 0b 00 00 0a 7e 01 00 00 04 2d 11 14 fe 06 03 00 00 06 73 09 00 00 0a 80 01 00 00 04 7e 01 00 00 04 73 0a 00 00 0a 28 0b 00 00 0a 2a 1e 02 28 04 00 00 0a 2a } //02 00 
		$a_01_1 = {53 74 72 69 6e 67 00 4a 6f 69 6e 00 53 79 73 74 65 6d 2e 44 69 61 67 6e 6f 73 74 69 63 73 00 50 72 6f 63 65 73 73 00 53 74 61 72 74 00 54 68 72 65 61 64 } //00 00 
	condition:
		any of ($a_*)
 
}