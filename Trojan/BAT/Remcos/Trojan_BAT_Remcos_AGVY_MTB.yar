
rule Trojan_BAT_Remcos_AGVY_MTB{
	meta:
		description = "Trojan:BAT/Remcos.AGVY!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_03_0 = {07 08 09 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 28 90 01 03 06 d2 06 28 90 01 03 06 09 17 58 90 00 } //01 00 
		$a_01_1 = {57 00 65 00 65 00 6b 00 54 00 69 00 6d 00 65 00 50 00 72 00 6f 00 67 00 72 00 61 00 6d 00 } //01 00 
		$a_01_2 = {43 00 61 00 72 00 67 00 6f 00 57 00 69 00 73 00 65 00 2e 00 57 00 68 00 69 00 74 00 65 00 } //01 00 
		$a_01_3 = {47 00 65 00 74 00 50 00 69 00 78 00 65 00 6c 00 } //00 00 
	condition:
		any of ($a_*)
 
}