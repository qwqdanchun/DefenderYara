
rule Trojan_BAT_AveMaria_NEAF_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.NEAF!MTB,SIGNATURE_TYPE_PEHSTR_EXT,1a 00 1a 00 06 00 00 05 00 "
		
	strings :
		$a_01_0 = {31 00 31 00 53 00 31 00 31 00 79 00 31 00 31 00 73 00 31 00 31 00 74 00 31 00 31 00 65 00 31 00 31 00 6d 00 31 00 31 00 } //05 00  11S11y11s11t11e11m11
		$a_01_1 = {31 00 31 00 52 00 31 00 31 00 65 00 31 00 31 00 66 00 31 00 31 00 6c 00 31 00 31 00 65 00 31 00 31 00 63 00 31 00 31 00 74 00 31 00 31 00 69 00 31 00 31 00 6f 00 31 00 31 00 6e 00 31 00 31 00 } //05 00  11R11e11f11l11e11c11t11i11o11n11
		$a_01_2 = {31 00 31 00 41 00 31 00 31 00 73 00 31 00 31 00 73 00 31 00 31 00 65 00 31 00 31 00 6d 00 31 00 31 00 62 00 31 00 31 00 6c 00 31 00 31 00 79 00 31 00 31 00 } //04 00  11A11s11s11e11m11b11l11y11
		$a_01_3 = {7a 00 78 00 6c 00 78 00 76 00 69 00 73 00 6f 00 64 00 6a 00 6f 00 65 00 77 00 75 00 75 00 74 00 33 00 } //04 00  zxlxvisodjoewuut3
		$a_01_4 = {63 00 76 00 68 00 6d 00 6b 00 6a 00 79 00 75 00 69 00 37 00 38 00 } //03 00  cvhmkjyui78
		$a_01_5 = {7b 00 30 00 7d 00 3a 00 2f 00 2f 00 7b 00 31 00 7d 00 2e 00 7b 00 32 00 7d 00 2e 00 7b 00 33 00 7d 00 } //00 00  {0}://{1}.{2}.{3}
	condition:
		any of ($a_*)
 
}