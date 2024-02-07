
rule Trojan_BAT_Snojan_AS_MTB{
	meta:
		description = "Trojan:BAT/Snojan.AS!MTB,SIGNATURE_TYPE_PEHSTR_EXT,05 00 05 00 04 00 00 02 00 "
		
	strings :
		$a_01_0 = {13 05 09 11 05 09 6f 33 00 00 0a 1e 5b 6f 34 00 00 0a 6f 35 00 00 0a 00 09 11 05 09 6f 36 00 00 0a 1e 5b 6f 34 00 00 0a 6f 37 00 00 0a 00 09 17 6f 38 00 00 0a 00 08 09 6f 39 00 00 0a } //01 00 
		$a_01_1 = {66 00 75 00 61 00 78 00 } //01 00  fuax
		$a_01_2 = {46 00 53 00 41 00 46 00 53 00 41 00 46 00 41 00 53 00 46 00 41 00 53 00 46 00 53 00 41 00 46 00 53 00 41 00 46 00 41 00 53 00 } //01 00  FSAFSAFASFASFSAFSAFAS
		$a_01_3 = {61 00 66 00 61 00 77 00 2e 00 61 00 66 00 61 00 77 00 } //00 00  afaw.afaw
	condition:
		any of ($a_*)
 
}