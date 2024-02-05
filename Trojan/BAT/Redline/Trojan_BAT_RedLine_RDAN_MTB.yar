
rule Trojan_BAT_RedLine_RDAN_MTB{
	meta:
		description = "Trojan:BAT/RedLine.RDAN!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 04 00 00 01 00 "
		
	strings :
		$a_01_0 = {72 61 70 70 6f 72 74 } //01 00 
		$a_01_1 = {49 4f 4f 4f 49 4f 4f 50 4f 4f 50 50 55 50 50 50 59 50 55 4f 4f 55 49 59 4f 50 49 55 55 55 55 59 59 59 4f 59 50 59 50 59 49 50 4f 50 59 49 50 59 49 55 55 } //01 00 
		$a_01_2 = {55 49 49 55 59 55 4f 4f 59 50 50 50 59 59 55 59 55 59 59 49 } //01 00 
		$a_01_3 = {50 49 4f 59 50 55 50 50 49 59 4f 59 55 55 49 50 4f 50 59 55 49 59 55 4f 55 55 59 50 4f 59 59 49 59 55 } //00 00 
	condition:
		any of ($a_*)
 
}