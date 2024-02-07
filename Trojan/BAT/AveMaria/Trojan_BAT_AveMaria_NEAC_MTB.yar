
rule Trojan_BAT_AveMaria_NEAC_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEAC!MTB,SIGNATURE_TYPE_PEHSTR_EXT,13 00 13 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {24 65 61 30 31 64 63 65 37 2d 64 64 37 62 2d 34 32 64 33 2d 62 66 66 66 2d 62 38 65 65 39 66 33 30 34 64 31 39 } //04 00  $ea01dce7-dd7b-42d3-bfff-b8ee9f304d19
		$a_01_1 = {62 37 37 61 35 63 35 36 31 39 33 34 65 30 38 39 } //03 00  b77a5c561934e089
		$a_01_2 = {49 73 61 6c 79 27 73 20 32 30 32 32 } //03 00  Isaly's 2022
		$a_01_3 = {50 68 6f 74 6f 67 72 61 70 68 69 63 20 53 70 6f 74 74 65 72 } //02 00  Photographic Spotter
		$a_01_4 = {46 72 69 65 64 6d 61 6e } //02 00  Friedman
		$a_01_5 = {46 72 6f 6d 42 61 73 65 36 34 53 74 72 69 6e 67 } //00 00  FromBase64String
	condition:
		any of ($a_*)
 
}