
rule Trojan_BAT_RevengeRAT_B_MTB{
	meta:
		description = "Trojan:BAT/RevengeRAT.B!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 03 00 00 02 00 "
		
	strings :
		$a_01_0 = {52 56 2d 49 6e 66 65 63 74 2d 4c 69 6d 65 } //02 00  RV-Infect-Lime
		$a_01_1 = {64 79 78 30 34 70 71 74 68 65 33 2e 72 65 73 6f 75 72 63 65 73 } //02 00  dyx04pqthe3.resources
		$a_01_2 = {76 6f 6c 63 66 72 6c 74 53 41 65 58 4b 6f 53 71 6b 78 50 52 48 58 77 6f 6b 77 6b 4b } //00 00  volcfrltSAeXKoSqkxPRHXwokwkK
	condition:
		any of ($a_*)
 
}