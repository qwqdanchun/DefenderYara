
rule Trojan_BAT_ZGRAT_RDE_MTB{
	meta:
		description = "Trojan:BAT/ZGRAT.RDE!MTB,SIGNATURE_TYPE_PEHSTR_EXT,04 00 04 00 02 00 00 02 00 "
		
	strings :
		$a_01_0 = {28 53 00 00 0a 6f 54 00 00 0a 13 05 73 55 00 00 0a 0c 02 } //02 00 
		$a_01_1 = {11 04 08 6f 58 00 00 0a 02 08 6f 59 00 00 0a } //00 00 
	condition:
		any of ($a_*)
 
}