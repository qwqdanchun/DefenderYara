
rule Trojan_BAT_Bobik_ABIS_MTB{
	meta:
		description = "Trojan:BAT/Bobik.ABIS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 03 00 00 02 00 "
		
	strings :
		$a_03_0 = {0c 12 02 28 90 01 03 0a 28 90 01 03 0a 7e 90 01 03 04 9a 6f 90 01 03 0a 0c 12 02 28 90 01 03 0a 0a 06 73 90 01 03 0a 0b 07 28 90 01 03 0a 16 16 16 16 07 6f 90 01 03 0a 6f 90 01 03 0a 07 02 03 28 90 01 03 0a 28 90 01 03 0a 6f 90 01 03 0a 2a 90 00 } //01 00 
		$a_01_1 = {53 63 72 65 65 6e 53 68 6f 74 65 72 2e 50 72 6f 70 65 72 74 69 65 73 } //01 00  ScreenShoter.Properties
		$a_01_2 = {53 00 63 00 72 00 65 00 65 00 6e 00 53 00 68 00 6f 00 74 00 65 00 72 00 2e 00 50 00 72 00 6f 00 70 00 65 00 72 00 74 00 69 00 65 00 73 00 2e 00 52 00 65 00 73 00 6f 00 75 00 72 00 63 00 65 00 73 00 } //00 00  ScreenShoter.Properties.Resources
	condition:
		any of ($a_*)
 
}