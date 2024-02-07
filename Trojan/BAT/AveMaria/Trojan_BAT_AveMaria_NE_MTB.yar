
rule Trojan_BAT_AveMaria_NE_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,06 00 06 00 02 00 00 05 00 "
		
	strings :
		$a_03_0 = {28 72 00 00 0a 6f 90 01 01 00 00 0a 07 1f 10 8d 90 01 01 00 00 01 25 d0 90 01 01 00 00 04 28 90 01 01 00 00 0a 6f 90 01 01 00 00 0a 06 07 6f 90 01 01 00 00 0a 90 00 } //01 00 
		$a_01_1 = {74 72 65 65 20 63 68 65 63 6b 65 72 } //00 00  tree checker
	condition:
		any of ($a_*)
 
}
rule Trojan_BAT_AveMaria_NE_MTB_2{
	meta:
		description = "Trojan:BAT/AveMaria.NE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_03_0 = {00 72 01 00 00 70 28 90 01 03 06 0a 06 73 90 01 03 0a 0b 00 73 04 00 00 0a 0c 00 07 16 73 05 00 00 0a 73 06 00 00 0a 0d 90 00 } //01 00 
		$a_01_1 = {72 00 61 00 6d 00 61 00 6e 00 6b 00 75 00 6d 00 61 00 72 00 79 00 6e 00 72 00 } //00 00  ramankumarynr
	condition:
		any of ($a_*)
 
}