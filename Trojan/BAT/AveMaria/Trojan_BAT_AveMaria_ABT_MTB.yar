
rule Trojan_BAT_AveMaria_ABT_MTB{
	meta:
		description = "Trojan:BAT/AveMaria.ABT!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_03_0 = {04 07 91 20 90 01 03 00 59 d2 9c 00 07 17 58 0b 07 7e 90 01 03 04 8e 69 fe 04 0c 08 2d d7 7e 90 01 03 04 0d de 0b 90 0a 30 00 7e 90 01 03 04 07 7e 01 90 00 } //01 00 
		$a_01_1 = {47 65 74 52 65 73 70 6f 6e 73 65 53 74 72 65 61 6d } //01 00  GetResponseStream
		$a_01_2 = {49 6e 76 6f 6b 65 4d 65 6d 62 65 72 } //01 00  InvokeMember
		$a_01_3 = {41 65 72 74 6f 70 2e 50 72 6f 70 65 72 74 69 65 73 } //00 00  Aertop.Properties
	condition:
		any of ($a_*)
 
}