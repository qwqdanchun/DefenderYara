
rule Trojan_BAT_Remcos_FF_MTB{
	meta:
		description = "Trojan:BAT/Remcos.FF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,17 00 17 00 04 00 00 14 00 "
		
	strings :
		$a_03_0 = {0a 0b 07 72 90 01 03 70 28 90 01 03 0a 0c 08 2c 0e 00 06 28 90 01 03 0a 0a 00 38 90 01 03 00 07 72 90 01 03 70 6f 90 01 03 0a 0d 09 39 90 01 03 00 00 72 90 01 03 70 06 72 90 01 03 70 72 90 01 03 70 6f 90 01 03 0a 28 90 01 03 0a 0a 07 72 90 01 03 70 6f 90 01 03 0a 13 04 11 04 39 90 01 03 00 90 00 } //01 00 
		$a_81_1 = {52 65 67 45 78 20 43 68 65 61 74 53 68 65 65 74 } //01 00  RegEx CheatSheet
		$a_81_2 = {44 61 76 69 64 65 20 48 6f 6d 65 70 61 67 65 } //01 00  Davide Homepage
		$a_81_3 = {64 61 76 69 64 65 6d 61 75 72 69 2e 69 74 } //00 00  davidemauri.it
	condition:
		any of ($a_*)
 
}