
rule Trojan_BAT_Heracles_MBZO_MTB{
	meta:
		description = "Trojan:BAT/Heracles.MBZO!MTB,SIGNATURE_TYPE_PEHSTR_EXT,03 00 03 00 03 00 00 01 00 "
		
	strings :
		$a_03_0 = {0a 06 07 6f 90 01 01 00 00 0a 17 73 90 01 01 00 00 0a 25 02 16 02 8e 69 6f 90 01 01 00 00 0a 90 00 } //01 00 
		$a_01_1 = {38 38 37 61 61 63 30 30 36 65 30 31 } //01 00  887aac006e01
		$a_01_2 = {50 61 72 61 64 69 73 65 2e 67 2e 72 65 73 6f 75 72 63 65 73 } //00 00  Paradise.g.resources
	condition:
		any of ($a_*)
 
}