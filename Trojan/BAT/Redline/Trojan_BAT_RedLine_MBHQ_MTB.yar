
rule Trojan_BAT_RedLine_MBHQ_MTB{
	meta:
		description = "Trojan:BAT/RedLine.MBHQ!MTB,SIGNATURE_TYPE_PEHSTR_EXT,02 00 02 00 02 00 00 01 00 "
		
	strings :
		$a_01_0 = {64 00 73 00 66 00 64 00 73 00 66 00 64 00 73 00 66 00 64 00 73 00 67 00 66 00 67 00 64 00 66 00 67 00 64 00 67 00 64 00 73 00 61 00 64 00 66 00 64 00 73 00 61 00 64 00 66 00 66 00 73 00 64 00 66 00 64 00 73 00 67 00 64 00 67 00 73 00 64 00 66 00 73 00 64 00 66 00 73 00 64 00 66 00 } //01 00  dsfdsfdsfdsgfgdfgdgdsadfdsadffsdfdsgdgsdfsdfsdf
		$a_01_1 = {43 32 32 30 41 39 42 30 36 30 30 37 } //00 00  C220A9B06007
	condition:
		any of ($a_*)
 
}