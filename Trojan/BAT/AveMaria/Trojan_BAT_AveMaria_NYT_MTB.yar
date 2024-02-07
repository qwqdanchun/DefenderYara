
rule Trojan_BAT_AveMaria_NYT_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NYT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 05 00 00 01 00 "
		
	strings :
		$a_01_0 = {73 04 01 00 0a 0d 09 08 6f 05 01 00 0a 09 18 6f 06 01 00 0a 09 6f 07 01 00 0a 06 16 06 8e 69 6f 08 01 00 0a } //01 00 
		$a_01_1 = {24 36 62 65 35 64 61 36 33 2d 34 31 37 39 2d 34 61 39 64 2d 62 30 35 33 2d 62 37 39 65 37 63 39 30 35 32 30 35 } //01 00  $6be5da63-4179-4a9d-b053-b79e7c905205
		$a_80_2 = {42 75 69 6c 64 65 72 73 20 45 6d 70 6f 72 69 75 6d 20 32 30 32 32 20 28 43 29 } //Builders Emporium 2022 (C)  01 00 
		$a_01_3 = {4b 72 75 73 6b 61 6c 2e 50 72 6f 70 65 72 74 69 65 73 2e 52 65 73 6f 75 72 63 65 73 2e 72 65 73 6f 75 72 63 65 } //01 00  Kruskal.Properties.Resources.resource
		$a_01_4 = {17 a2 0b 09 07 00 00 00 fa 01 33 00 16 00 00 01 00 00 00 a6 00 00 00 36 } //00 00 
	condition:
		any of ($a_*)
 
}