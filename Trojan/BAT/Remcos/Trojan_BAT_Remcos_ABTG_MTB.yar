
rule Trojan_BAT_Remcos_ABTG_MTB{
	meta:
		description = "Trojan:BAT/Remcos.ABTG!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {02 15 17 2d 0d 26 28 90 01 01 00 00 2b 28 90 01 01 00 00 2b 2b 03 26 2b f1 2a 90 00 } //02 00 
		$a_01_1 = {57 00 69 00 77 00 7a 00 6f 00 6b 00 66 00 73 00 68 00 63 00 6f 00 6f 00 7a 00 6e 00 67 00 79 00 70 00 73 00 74 00 } //01 00  Wiwzokfshcoozngypst
		$a_01_2 = {52 65 76 65 72 73 65 } //01 00  Reverse
		$a_01_3 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}